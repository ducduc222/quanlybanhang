package com.sapo.salemanagement.services.BalanceManagerServices;

import com.sapo.salemanagement.dto.balanceDtos.BalanceVariantDto;
import com.sapo.salemanagement.dto.balanceDtos.IBalanceVariantDto;
import com.sapo.salemanagement.dto.balanceDtos.IWarehouseBalanceDto;
import com.sapo.salemanagement.dto.balanceDtos.WarehouseBalanceDto;
import com.sapo.salemanagement.dto.productDtos.VariantDto;
import com.sapo.salemanagement.exceptions.NotFoundException;
import com.sapo.salemanagement.exceptions.ProductManagerExceptions.ProductException;
import com.sapo.salemanagement.models.UserEntity;
import com.sapo.salemanagement.models.Variant;
import com.sapo.salemanagement.models.WarehouseBalance;
import com.sapo.salemanagement.repositories.BalanceManagerRepository.BalanceVariantRepository;
import com.sapo.salemanagement.repositories.BalanceManagerRepository.WarehouseBalanceRepository;
import com.sapo.salemanagement.repositories.ProductManagerRepository.VariantRepository;
import com.sapo.salemanagement.repositories.UserRepository;
import com.sapo.salemanagement.services.BaseService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.List;

@Service
public class BalanceService extends BaseService {
    @Autowired
    private WarehouseBalanceRepository warehouseBalanceRepository;
    @Autowired
    private BalanceVariantRepository balanceVariantRepository;
    @Autowired
    private VariantRepository variantRepository;
    @Autowired
    private UserRepository userRepository;
    private ModelMapper modelMapper = new ModelMapper();


    @Transactional
    public WarehouseBalanceDto createBalance(WarehouseBalanceDto warehouseBalanceDto, UserDetails userDetails) {
//        WarehouseBalance warehouseBalance = modelMapper.map(warehouseBalanceDto, WarehouseBalance.class);
        WarehouseBalance warehouseBalance = new WarehouseBalance();
        warehouseBalance.setNote(warehouseBalanceDto.getNote());
        //thêm user
        UserEntity user = userRepository.findByPhone(userDetails.getUsername()).orElseThrow(() -> new NotFoundException("user's phone " + userDetails.getUsername() + " not found"));
        warehouseBalance.setUserEntity(user);
        //
        WarehouseBalance warehouseBalanceNew = warehouseBalanceRepository.save(warehouseBalance);
        if (warehouseBalanceDto.getBalanceVariantList().isEmpty()) throw new ProductException("Hãy thêm sản phẩm");

        for (BalanceVariantDto balanceVariantDto : warehouseBalanceDto.getBalanceVariantList()) {
            Variant variant = variantRepository.findById(balanceVariantDto.getVariantId());
            if (variant == null) throw new ProductException("variant id "+variant.getId()+" is not found");

            balanceVariantRepository.saveBalance(warehouseBalance.getId(), balanceVariantDto.getVariantId(), balanceVariantDto.getNote(),  balanceVariantDto.getRealQ(), variant.getQuantity());
            variantRepository.updateQuantityAfterBalance(variant.getId(), balanceVariantDto.getRealQ());

            // lưu lịch sử

        }

        WarehouseBalanceDto warehouseBalanceDto1 = modelMapper.map(warehouseBalanceNew, warehouseBalanceDto.getClass());
        warehouseBalanceDto1.setBalanceVariantList(warehouseBalanceDto.getBalanceVariantList());
        warehouseBalanceDto1.setPersonInCharge(user.getFullName());

        return warehouseBalanceDto1;

    }
    public long countWarehouseBalance() {
        return warehouseBalanceRepository.count();
    }

    public List<WarehouseBalanceDto> getAllWarehouseBalance(int page, int size) {
        int offset = (page -1)*size;
        List<IWarehouseBalanceDto> iWarehouseBalanceDtos = warehouseBalanceRepository.findAllWarehouseBalance(size, offset);

        return Arrays.asList(modelMapper.map(iWarehouseBalanceDtos, WarehouseBalanceDto[].class));
    }

    public List<WarehouseBalanceDto> getAllWarehouseBalanceByKeyword(String keyword) {
        List<IWarehouseBalanceDto> iWarehouseBalanceDtos = warehouseBalanceRepository.findAllWarehouseBalanceByKeyword(keyword);

        return Arrays.asList(modelMapper.map(iWarehouseBalanceDtos, WarehouseBalanceDto[].class));
    }

    public WarehouseBalanceDto getDetailWarehouseBalanceByWarehouseBalanceId(int warehouseId) {
        IWarehouseBalanceDto iWarehouseBalanceDto = warehouseBalanceRepository.findWarehouseBalanceById(warehouseId);
        if (iWarehouseBalanceDto == null) throw new ProductException("warehouseBalance id "+warehouseId+" is not found");

        WarehouseBalanceDto warehouseBalanceDto = modelMapper.map(iWarehouseBalanceDto, WarehouseBalanceDto.class);

        List<IBalanceVariantDto> iBalanceVariantDtos = balanceVariantRepository.findByWarehouseBalanceId(warehouseId);
        List<BalanceVariantDto> balanceVariantDtos = Arrays.asList(modelMapper.map(iBalanceVariantDtos, BalanceVariantDto[].class));

        for (BalanceVariantDto balanceVariantDto : balanceVariantDtos) {
            Variant variant = variantRepository.findById(balanceVariantDto.getVariantId());
            if (variant == null) throw new ProductException("variant id "+balanceVariantDto.getVariantId()+" is not found");
            VariantDto variantDto = modelMapper.map(variant,VariantDto.class);

            balanceVariantDto.setVariant(variantDto);
        }

        warehouseBalanceDto.setBalanceVariantList(balanceVariantDtos);
        return warehouseBalanceDto;
    }

}

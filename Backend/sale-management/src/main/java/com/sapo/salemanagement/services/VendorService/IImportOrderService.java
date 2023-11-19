package com.sapo.salemanagement.services.VendorService;

import com.sapo.salemanagement.dto.vendorDtos.ImportOrderDTO;
import com.sapo.salemanagement.models.UserEntity;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.List;

public interface IImportOrderService {
    ImportOrderDTO save(ImportOrderDTO importOrderDTO, String phone);
    List<ImportOrderDTO> findAll();
    List<ImportOrderDTO> findAll(Pageable pageable);
    ImportOrderDTO findById(Integer id);
    List<ImportOrderDTO> findByName(String name);
}

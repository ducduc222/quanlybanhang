package com.sapo.salemanagement.services.ShopService;

import com.sapo.salemanagement.models.Shop;
import com.sapo.salemanagement.repositories.ShopRepository.ShopRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class ShopService {
    @Autowired
    private ShopRepository shopRepository;
    public Shop updateShop(Shop shop) {
        if (shop.getId() != null) {
            int id = shop.getId();
            Shop shop1 = shopRepository.findById(id);
            shop.setId(shop1.getId());
        }

        return shopRepository.save(shop);
    }

    public Shop getInfoShop(UserDetails userDetails) {
        //lấy ra shopId dựa vào userdetails
        return shopRepository.findById(1);
    }
}

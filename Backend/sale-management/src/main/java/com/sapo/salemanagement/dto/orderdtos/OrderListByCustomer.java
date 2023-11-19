package com.sapo.salemanagement.dto.orderdtos;

import com.sapo.salemanagement.models.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
public class OrderListByCustomer {
    private Order order;

    private Payment payment;

}

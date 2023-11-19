package com.sapo.salemanagement.repositories.orderrepositories;

import com.sapo.salemanagement.models.ReturnOrderLine;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReturnOrderLineRepository extends JpaRepository<ReturnOrderLine, Integer> {

    List<ReturnOrderLine> findAllByReturnOrderId(Integer orderId);
}

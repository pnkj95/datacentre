package com.pnkj.datacentre.repo;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.pnkj.datacentre.model.DatacentreStatus;

public interface StatusRepo extends JpaRepository<DatacentreStatus, Long> {

	DatacentreStatus findByStatus(String status);

	@Query("select status from DatacentreStatus s where s.id = :id")
	String findAllById(@Param("id") Long id);



	
}

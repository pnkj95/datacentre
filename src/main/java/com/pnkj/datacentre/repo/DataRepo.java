package com.pnkj.datacentre.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.pnkj.datacentre.model.DataCentre;

public interface DataRepo extends JpaRepository<DataCentre, Long>{

	@Query("select statusId from DataCentre")
	public List findAllByName();

	public DataCentre findByName(String name);

	

}

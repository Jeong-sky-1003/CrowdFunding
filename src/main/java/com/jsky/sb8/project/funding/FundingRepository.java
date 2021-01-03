package com.jsky.sb8.project.funding;

import java.sql.Date;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.jsky.sb8.project.funding.detail.news.NewsVO;

public interface FundingRepository extends JpaRepository<FundingVO, Long>{
	
	public Page<FundingVO> findByStartDateGreaterThanOrderByStartDate(Date today, Pageable pageable);
	
	public Page<FundingVO> findByStatusContainingAndStatusNotAndStartDateLessThanEqual(String status, String ignore,Date today,Pageable pageable);
	
	public Page<FundingVO> findByCategoryNum2AndStatusContainingAndStartDateLessThanEqual(long categoryNum,String status,Date today,Pageable pageable);

}

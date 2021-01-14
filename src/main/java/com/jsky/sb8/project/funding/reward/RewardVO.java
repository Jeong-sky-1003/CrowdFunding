package com.jsky.sb8.project.funding.reward;

import java.text.DecimalFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.jsky.sb8.project.funding.FundingVO;
import com.jsky.sb8.purchase.PurchaseVO;

import lombok.Data;

@Data
@Table(name = "FundingReward")
@Entity(name = "FundingReward")
public class RewardVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long productNum;
	@Column
	private String title;
	@Column
	private String product;
	@Column
	private long amount;	// 금액
	@Column
	private long limitedQuantity;
	@Column
	private long quantity;
	@Column
	private int shippingFee;
	@Column
	private String shippingDate;
	@Column
	private String purchaseOption;
	
	@ManyToOne
	@JoinColumn(name = "projectNum")
	private FundingVO fundingVO;
	
	@OneToMany(mappedBy = "rewardVO", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<PurchaseVO> purchaseVOs;
	
	@Transient
	private String amountStr;
	@Transient
	private String shippingFeeStr;
	@Transient
	private long remainder;

	public long getRemainder() {
		return this.limitedQuantity - this.quantity;
	}
	
	public String getAmountStr() {
		DecimalFormat df = new DecimalFormat("#,###");
		return df.format(this.getAmount());
	}
	
	public String getShippingFeeStr() {
		
		if(shippingFee != 0) {
			DecimalFormat df = new DecimalFormat("#,###");
			return df.format(this.getAmount());
		} else {
			return "배송비 없음";
		}
		
	}
	
}

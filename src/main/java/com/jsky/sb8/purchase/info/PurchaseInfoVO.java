package com.jsky.sb8.purchase.info;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
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

import org.hibernate.annotations.CreationTimestamp;

import com.jsky.sb8.member.MemberVO;
import com.jsky.sb8.project.funding.FundingVO;
import com.jsky.sb8.purchase.PurchaseVO;

import lombok.Data;

@Data
@Entity(name = "PurchaseInfo")
@Table(name = "PurchaseInfo")
public class PurchaseInfoVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long orderNum;
	@Column
	private String buyer_name;
	@Column
	private String buyer_postcode;
	@Column
	private String buyer_addr;
	@Column
	private String buyer_tel;
	@Column
	private String merchant_uid;
	@Column(updatable = false)
	private Timestamp scheduled_at;	// 결제 예정일
	@Column
	private Timestamp paid_at;		// 결제 승인 시각
	@Column
	private String paid_method;
	@Column
	private long shippingFee;		// 배송비
	@Column
	private long amount;			// 상품 주문금액
	@Column
	private long totalAmount;		// 배송비 + 상품 주문금액
	@Column
	private long payAmount;
	@Column
	@CreationTimestamp
	private Timestamp ordered_at;
	@Column
	private String custom_data;
	@Column
	private String customer_uid;
	@Column
	private String status;
	
	@Transient
	private String doro_addr;
	@Transient
	private String detail_addr;
	@Transient
	private String orderedAtStr;

	@OneToMany(mappedBy = "purchaseInfoVO", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<PurchaseVO> purchaseVOs;
	
	@ManyToOne
	@JoinColumn(name = "projectNum")
	private FundingVO fundingVO;
	
	@ManyToOne
	@JoinColumn(name = "memberNum")
	private MemberVO memberVO;
	
	public String getOrderedAtStr() {
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy.MM.dd HH:mm");
		return df.format(this.ordered_at);
		
	}
	
	
}

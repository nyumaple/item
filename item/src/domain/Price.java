package domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.GeneratedValue;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "Price")
public class Price 
       implements Serializable{
	//item id, unique
		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		private Integer id;	
		//kind, such as umbrella, pencil
		private Integer ItemId;
		private String price_kind;

		private Integer qty1;
		private Double price1;
		private Integer qty2;
		private Double price2;
		private Integer qty3;
		private Double price3;
		private Integer qty4;
		private Double price4;
		private Integer qty5;
		private Double price5;
		private Integer qty6;
		private Double price6;
		private Integer qty7;
		private Double price7;
		
		public Price(){
			ItemId=0;
			price_kind="";
			qty1=0;
			price1=0.0;
			qty2=0;
			price2=0.0;
			qty3=0;
			price3=0.0;
			qty4=0;
			price4=0.0;
			qty5=0;
			price5=0.0;
			qty6=0;
			price6=0.0;
			qty7=0;
			price7=0.0;
		}
}

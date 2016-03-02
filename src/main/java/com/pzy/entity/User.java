package com.pzy.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;
/***
 *
 */
@Entity
@Table(name = "t_user")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String username;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm")
	private Date createDate;
	
	private String name;
	
	private String password;
	
	private String c1;
	private String c2;
	private String c3;
	private String c4;
	private String c5;
	private String c6;
	private String c7;
	private String c8;
	private String c9;
	private String c10;
	private String c11;
	private String c12;
	private String c13;
	private String c14;
	private String c15;
	private String c16;
	private String c17;
	private String c18;
	private String c19;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getC1() {
		return c1;
	}
	public void setC1(String c1) {
		this.c1 = c1;
	}
	public String getC2() {
		return c2;
	}
	public void setC2(String c2) {
		this.c2 = c2;
	}
	public String getC3() {
		return c3;
	}
	public void setC3(String c3) {
		this.c3 = c3;
	}
	public String getC4() {
		return c4;
	}
	public void setC4(String c4) {
		this.c4 = c4;
	}
	public String getC5() {
		return c5;
	}
	public void setC5(String c5) {
		this.c5 = c5;
	}
	public String getC6() {
		return c6;
	}
	public void setC6(String c6) {
		this.c6 = c6;
	}
	public String getC7() {
		return c7;
	}
	public void setC7(String c7) {
		this.c7 = c7;
	}
	public String getC8() {
		return c8;
	}
	public void setC8(String c8) {
		this.c8 = c8;
	}
	public String getC9() {
		return c9;
	}
	public void setC9(String c9) {
		this.c9 = c9;
	}
	public String getC10() {
		return c10;
	}
	public void setC10(String c10) {
		this.c10 = c10;
	}
	public String getC11() {
		return c11;
	}
	public void setC11(String c11) {
		this.c11 = c11;
	}
	public String getC12() {
		return c12;
	}
	public void setC12(String c12) {
		this.c12 = c12;
	}
	public String getC13() {
		return c13;
	}
	public void setC13(String c13) {
		this.c13 = c13;
	}
	public String getC14() {
		return c14;
	}
	public void setC14(String c14) {
		this.c14 = c14;
	}
	public String getC15() {
		return c15;
	}
	public void setC15(String c15) {
		this.c15 = c15;
	}
	public String getC16() {
		return c16;
	}
	public void setC16(String c16) {
		this.c16 = c16;
	}
	public String getC17() {
		return c17;
	}
	public void setC17(String c17) {
		this.c17 = c17;
	}
	public String getC18() {
		return c18;
	}
	public void setC18(String c18) {
		this.c18 = c18;
	}
	public String getC19() {
		return c19;
	}
	public void setC19(String c19) {
		this.c19 = c19;
	}
}
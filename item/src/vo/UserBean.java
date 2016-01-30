package vo;

import java.io.Serializable;

public class UserBean implements Serializable
{
	private static final long serialVersionUID = 48L;
	private String userName;
	private String userPass;
	private double amount;

 	//�޲���Ĺ�����
	public UserBean()
	{
	}
	//��ʼ��ȫ�����ԵĹ�����
	public UserBean(String userName , String userPass
		, double amount)
	{
		this.userName = userName;
		this.userPass = userPass;
		this.amount = amount;
	}

	//userName���Ե�setter��getter����
	public void setUserName(String userName)
	{
		this.userName = userName;
	}
	public String getUserName()
	{
		return this.userName;
	}

	//userPass���Ե�setter��getter����
	public void setUserPass(String userPass)
	{
		this.userPass = userPass;
	}
	public String getUserPass()
	{
		return this.userPass;
	}

	//amount���Ե�setter��getter����
	public void setAmount(double amount)
	{
		this.amount = amount;
	}
	public double getAmount()
	{
		return this.amount;
	}
}
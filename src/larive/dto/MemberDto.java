package larive.dto;

public class MemberDto {

	private int Memberid;
	private String name,Email,Pwd,Phone,Writeday;
	private int State;
	
	public int getState() {
		return State;
	}
	public void setState(int state) {
		State = state;
	}
	public int getMemberid() {
		return Memberid;
	}
	public void setMemberid(int memberid) {
		Memberid = memberid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPwd() {
		return Pwd;
	}
	public void setPwd(String pwd) {
		Pwd = pwd;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getWriteday() {
		return Writeday;
	}
	public void setWriteday(String writeday) {
		Writeday = writeday;
	}
	
}

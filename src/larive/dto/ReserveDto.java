package larive.dto;

public class ReserveDto {
	
	private int Reserveid, Memberid, Roomid, Membercount, totalday, Overprice, Totalprice, State;
	private String checkin, checkout, writeday, Roomname;
	public int getReserveid() {
		return Reserveid;
	}
	public void setReserveid(int reserveid) {
		Reserveid = reserveid;
	}

	public int getMembercount() {
		return Membercount;
	}
	public void setMembercount(int membercount) {
		Membercount = membercount;
	}
	public int getMemberid() {
		return Memberid;
	}
	public void setMemberid(int memberid) {
		Memberid = memberid;
	}
	public int getRoomid() {
		return Roomid;
	}
	public void setRoomid(int roomid) {
		Roomid = roomid;
	}

	public int getTotalday() {
		return totalday;
	}
	public void setTotalday(int totalday) {
		this.totalday = totalday;
	}
	public int getOverprice() {
		return Overprice;
	}
	public void setOverprice(int overprice) {
		Overprice = overprice;
	}
	public int getTotalprice() {
		return Totalprice;
	}
	public void setTotalprice(int totalprice) {
		Totalprice = totalprice;
	}
	public int getState() {
		return State;
	}
	public void setState(int state) {
		State = state;
	}
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	public String getWriteday() {
		return writeday;
	}
	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}
	public String getRoomname() {
		return Roomname;
	}
	public void setRoomname(String roomname) {
		Roomname = roomname;
	}
	
	
	
}

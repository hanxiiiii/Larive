package larive.dto;

public class InreviewDto {
	private int Id, Memberid, Rid;
	private String Title, Context,Writeday;
	private String photo, Roomname;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public int getMemberid() {
		return Memberid;
	}
	public void setMemberid(int memberid) {
		Memberid = memberid;
	}
	public int getRid() {
		return Rid;
	}
	public void setRid(int rid) {
		Rid = rid;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getContext() {
		return Context;
	}
	public void setContext(String context) {
		Context = context;
	}
	public String getWriteday() {
		return Writeday;
	}
	public void setWriteday(String writeday) {
		Writeday = writeday;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getRoomname() {
		return Roomname;
	}
	public void setRoomname(String roomname) {
		Roomname = roomname;
	}
}

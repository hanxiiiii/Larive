package larive.dto;

public class NoticeDto {
	private int Noticeid;
	private String Title,Context,Writeday,photo;
	public int getNoticeid() {
		return Noticeid;
	}
	public void setNoticeid(int noticeid) {
		Noticeid = noticeid;
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
	
}

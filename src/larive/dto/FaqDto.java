package larive.dto;

public class FaqDto {
	private int faqid;
	private String title,context;
	public int getFaqid() {
		return faqid;
	}
	public void setFaqid(int faqid) {
		this.faqid = faqid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}

}

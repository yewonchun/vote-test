package my.model;

import java.util.Date;

public class Vote {
	private int voteId; 
	private String voteName;
	private String voteDate;
	private String voteImg;
	private String busDate;
	private String background;
	private String content;
	private String benefit;
	private int price; 
	

	public Vote() {}
	
	public Vote(int voteId, String voteName, String voteDate, String voteImg, 
			String busDate, String background, String content, String benefit, int price) {
		super();
		this.voteId = voteId;
		this.voteName = voteName;
		this.voteDate = voteDate;
		this.voteImg = voteImg;
		this.busDate = busDate;
		this.background = background;
		this.content = content;
		this.benefit = benefit;
		this.price = price;
	}

	public int getVoteId() {
		return voteId;
	}

	public void setVoteId(int voteId) {
		this.voteId = voteId;
	}

	public String getVoteName() {
		return voteName;
	}

	public void setVoteName(String voteName) {
		this.voteName = voteName;
	}

	public String getVoteDate() {
		return voteDate;
	}

	public void setVoteDate(String voteDate) {
		this.voteDate = voteDate;
	}

	public String getVoteImg() {
		return voteImg;
	}

	public void setVoteImg(String voteImg) {
		this.voteImg = voteImg;
	}

	public String getBusDate() {
		return busDate;
	}

	public void setBusDate(String busDate) {
		this.busDate = busDate;
	}

	public String getBackground() {
		return background;
	}

	public void setBackground(String background) {
		this.background = background;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getBenefit() {
		return benefit;
	}

	public void setBenefit(String benefit) {
		this.benefit = benefit;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}


	
}

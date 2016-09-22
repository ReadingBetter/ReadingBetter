package kr.ac.readingbetter.vo;

public class ReviewVo {

	private Long no;
	private String review;
	private String regDate;
	private Long bookNo;
	private Long memberNo;
	private String id;

	public Long getNo() {
		return no;
	}

	public void setNo(Long no) {
		this.no = no;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public Long getBookNo() {
		return bookNo;
	}

	public void setBookNo(Long bookNo) {
		this.bookNo = bookNo;
	}

	public Long getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(Long memberNo) {
		this.memberNo = memberNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "ReviewVo [no=" + no + ", review=" + review + ", regDate=" + regDate + ", bookNo=" + bookNo
				+ ", memberNo=" + memberNo + ", id=" + id + "]";
	}
}
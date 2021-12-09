package com.itwill.yoridogam.notice.paging;

public class PageDto {
	
	private int nowPage; //현재 페이지
	private int startPage; //시작 페이지
	private int endPage; //끝 페이지
	private int total;
	private int cntPerPage; //페이지당 출력할 데이터 개수
	private int lastPage; //마지막페이지
	private int start; //sql쿼리에 인자로 사용될 start
	private int end; //sql쿼리에 인자로 사용될 end (between start and end)
	private int cntPage = 5; //한 페이지에 사용되는 1 2 3 4 5 // 6 7 8 9 10 // 페이지 카운트 수
	
	public PageDto() {
		// TODO Auto-generated constructor stub
	}

	public PageDto(int total, int nowPage, int cntPerPage) {
		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		calcLastPage(getTotal(), getCntPerPage());
		calcStartEndPage(getNowPage(), cntPage);
		calcStartEnd(getNowPage(), getCntPerPage());
	}
	
	/* 마지막 페이지 계산 */
	public void calcLastPage(int total, int cntPerPage) {
		setLastPage((int)Math.ceil((double)total / (double)cntPerPage));
	}
	
	/* 시작, 끝 페이지 계산 */
	public void calcStartEndPage(int nowPage, int cntPage) {
		//(현재 페이지 / 한 페이지 총 페이지 수)(올림) X 한 페이지의 총 페이지 수
		setEndPage(((int)Math.ceil((double)nowPage / (double)cntPage)) * cntPage); 
		if(getLastPage() < getEndPage()) {
			setEndPage(getLastPage()); 
		}
		//끝 페이지 - 한 페이지 총 페이지 수 + 1 = 시작페이지(1보다 작을 경우 1)
		setStartPage(getEndPage() - cntPage + 1);
		if(getStartPage() < 1) {
			setStartPage(1);
		}
	}
	
	/* DB에서 사용할 start,end 값 계산 */
	public void calcStartEnd(int nowPage, int cntPerPage) {
		//현재 페이지 X 한 페이지 출력될 리스트 개수
		setEnd(nowPage * cntPerPage);
		//마지막 게시물 수 - 한 페이지 출력될 리스트 개수 +1
		setStart(getEnd() - cntPerPage + 1);
		//[11] ... [15]
	}
	
	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getCntPerPage() {
		return cntPerPage;
	}

	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}

	public int getLastPage() {
		return lastPage;
	}

	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getCntPage() {
		return cntPage;
	}

	public void setCntPage(int cntPage) {
		this.cntPage = cntPage;
	}

	@Override
	public String toString() {
		return "PageDto [nowPage=" + nowPage + ", startPage=" + startPage + ", endPage=" + endPage + ", total=" + total
				+ ", cntPerPage=" + cntPerPage + ", lastPage=" + lastPage + ", start=" + start + ", end=" + end
				+ ", cntPage=" + cntPage + "]";
	}
	
}

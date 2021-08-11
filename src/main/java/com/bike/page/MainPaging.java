package com.bike.page;

import com.bike.dto.Page;
import com.bike.util.Util;

public class MainPaging {

	// 메인 페이징
	public static void setPage(Page cvo) {
		int page = Util.nvl(cvo.getPage(), 1);
		int mainPageSize = Util.nvl(cvo.getMainPageSize(), 9);//메인 페이지 
		
		//메인페이지
		if (cvo.getPage() == null) {
			cvo.setPage(page + "");
		}
		if (cvo.getPageSize() == null) {
			cvo.setPageSize(mainPageSize + "");
		}
		int start_row = (page - 1) * mainPageSize + 1;
		int end_row = (page - 1) * mainPageSize + mainPageSize;

		cvo.setStart_row(start_row + "");
		cvo.setEnd_row(end_row + "");
	}

}

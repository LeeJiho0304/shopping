function listPage(pageNo, url) {
	$.ajax ({
		type: "get",
		url: url,
		data: {pageNo: pageNo},
		success: function(data) {
			$("#content").html(data);
		}
	});
}

function reviewWrite(product_id) {
	
	$.ajax ({
		type: "get",
		url: "/shopping/ReviewWriteController",
		data: {product_id: product_id},
		success: function(data) {
			$("#content").html(data);
		}
	});
}

function reviewDetail(review_board_id) {
	$.ajax ({
		type: "get",
		url: "ReviewBoardDetailContoller",
		data: {review_board_id: review_board_id},
		success: function(data) {
			$("#content").html(data);
		}
	});
}



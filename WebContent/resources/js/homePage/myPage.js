function orderListPage(pageNo, url) {
	console.log("들어옴");
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



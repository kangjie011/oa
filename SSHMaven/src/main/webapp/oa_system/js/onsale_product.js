$(function(){
	$("#onsale_btn").click(function(){
		var s={};
		s.classid = $("select option:selected").val();
		s.productname = $("#onsale_productname").val();
		s.productprice = $("#onsale_productprice").val();
		s.productnum = $("#onsale_productnum").val();
	$.get("onsale_product.do",s,function(t){
		if (t == "true") {
			window.location.href="imglist_room.do";
		}
	});
	});
});
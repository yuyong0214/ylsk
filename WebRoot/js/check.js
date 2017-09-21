/**
 * Created by gmx on 2015/5/22.
 */
$(function(){
	$(".Test_q_c li").addClass("li_rad");
	$(".Test_q_c li").click(function(){
		$(this).parent().find("li").removeClass("li_radc");
		$(this).parent().find("li").addClass("li_rad");
		$(this).removeClass('li_rad');
   		 $(this).attr('class', 'li_radc');
		});

	$(".Test_q_c_1 li").addClass("li_che");
	$(".Test_q_c_1 li").click(function(){
		var ff=$(this).attr("class")+"";
        var tt="li_che";
		if(ff ==tt){
			$(this).parent().find("").removeClass("li_che");
			$(this).attr('class', 'li_chec');
			}else{
			$(this).removeClass("li_chec");
			$(this).attr('class', 'li_che');
			}
		$(".check_4 li").removeClass("li_che");
		$(".check_4 li").removeClass("li_chec");
		
		});
	$(".check_4 li").removeClass("li_che");
	$(".check_4 li").removeClass("li_chec");

})


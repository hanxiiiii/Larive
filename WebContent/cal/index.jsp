<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
var checkins ="";
var checkouts ="";
</script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

   <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   
   <link rel="stylesheet" href="/pension0503/cal/css/style.css">
<% request.setCharacterEncoding("UTF-8");%>

<section class="ftco-section" style="background-color: white;">
   <div class="container" id="calender00" style="pointer-events: none; opacity: 0.5;">

         <div class="row">
            <div class="col-md-12">
               <div class="calendar-section">
              <div class="row no-gutters">
                <div class="col-md-6">
                  <div class="calendar calendar-first" id="calendar_first">
                    <div class="calendar_header">
                      <button type="button" class="switch-month switch-left">
                        <i class="fa fa-chevron-left"></i>
                      </button>
                      <h2></h2>
                      <button type="button" class="switch-month switch-right">
                        <i class="fa fa-chevron-right"></i>
                      </button>
                    </div>
                    <div class="calendar_weekdays"></div>
                    <div class="calendar_content"></div>
                  </div>

                </div>
                <div class="col-md-6">

                  <div class="calendar calendar-second" id="calendar_second">
                    <div class="calendar_header">
                      <button type="button"  class="switch-month switch-left">
                        <i class="fa fa-chevron-left"></i>
                      </button>
                      <h2></h2>
                      <button type="button"class="switch-month switch-right">
                        <i class="fa fa-chevron-right"></i>
                      </button>
                    </div>
                    <div class="calendar_weekdays"></div>
                    <div class="calendar_content"></div>
                  </div>            

                </div>

              </div> <!-- End Row -->
                  
            </div> <!-- End Calendar -->
            </div>
         </div>
         </div>



</section>

   <script src="/pension0503/cal/js/jquery.min.js"></script>
  <script src="/pension0503/cal/js/popper.js"></script>
  <script src="/pension0503/cal/js/bootstrap.min.js"></script>
  <script src="/pension0503/cal/js/main.js"></script>
<script type="text/javascript">
alldate = [];
alldate_check = [];
for(var ad=0;ad<=100;ad++){
   var now00 = new Date();
   alldate[ad] = new Date(now00.setDate(now00.getDate() + ad));
   alldate_check[ad] = 0;
}

/*달력 체크인 날짜 클릭시 날짜값을 위에 인풋에 값 저장*/
$(function(){
   /*시작일 */
   $('.calendar_content').click(function(){
      $('.selected').eq(0).each(function(){      
            kk=0            
            document.reserve_first.Checkin.value="";
            document.reserve_first.Checkout.value="";
            var text = $(this).last();
            check_in = text.attr('id');
            var y = check_in.substr(0, 4);
             var m = check_in.substr(5, 2);
            var d = check_in.substr(8, 2);
            test_d = new Date(y,m-1,d);
            //alert(test_d);
            //document.reserve_first.Checkin.value=check_in;
            document.reserve_first.Checkin.value=checkins;
            for(var da=0;da<=dates.length-1;da++){
               if(test_d.getTime() <= dates[da].getTime()){
                  //alert("test");
                  for(var da2=0;da2<=alldate.length-3;da2++){                     
                     if(dates[da] < alldate[da2]){
                        var aa = '#'+alldate[da2+2].toISOString().substr(0,10);   
                        //alert(aa);
                        alldate_check[da2+2] = 1;
                        $(aa).addClass("past-date");
                        if(kk==0){
                           var aa = '#'+alldate[da2].toISOString().substr(0,10);
                           //alert(aa);
                           alldate_check[da2] = 0;
                           $(aa).removeClass("past-date");
                           kk=kk+1
                        }                        
                     }
                                    
                  }
               }else if(test_d.getTime() >= dates[da].getTime()){
                  //alert("test");
                  for(var da3=0;da3<=alldate.length-2;da3++){                     
                     if(dates[da] >= alldate[da3]){
                        var aa = '#'+alldate[(da3)].toISOString().substr(0,10);
                        alldate_check[da3+1] = 1;
                        $(aa).addClass("past-date");                        
                     }
                  }
               }
               
            }
      }); 
   });
/*달력 체크아웃 날짜 클릭시 날짜값을 위에 인풋에 값 저장*/   
   /*종료일 */
   $('.calendar_content').click(function(){
      $('.selected').last().each(function(){
         var text = $(this).last();
         check_out = text.attr('id');
         var y = check_out.substr(0, 4);
          var m = check_out.substr(5, 2);
         var d = check_out.substr(8, 2);
         test_d = new Date(y,m-1,d);
         //document.reserve_first.Checkout.value=check_out;
         document.reserve_first.Checkout.value=checkouts;         
         var test_a = new Date(document.reserve_first.Checkout.value);
         var test_b = new Date(document.reserve_first.Checkin.value);
         totalday = Math.abs((test_a.getTime() - test_b.getTime())/ (1000 * 60 * 60 * 24)+1);
         if(isNaN(totalday)){
            document.reserve_first.totalday.value=0;
         }else{            
            document.reserve_first.totalday.value=totalday;            
         }
         money_change();
         for(var da2=0;da2<=alldate.length-1;da2++){
            if(check_out!=check_in){               
               var aa = '#'+alldate[da2+1].toISOString().substr(0,10);
               alldate_check[da2+1] = 0;
               $(aa).removeClass("past-date");               
               for(var da6=0;da6<=dates.length-1;da6++){                  
                  if(alldate[da2].toISOString().substr(0,10) == dates[da6].toISOString().substr(0,10)){                                          
                     var aa = '#'+alldate[da2].toISOString().substr(0,10);
                     alldate_check[da2+1] = 1;
                     $(aa).addClass("past-date");
                     
                  }
               }
            }
         }
         
         
         
         
      }); 
      
      

   });
   
   $('.switch-month').click(function(){
	   for(var i=0;i<m3.length-1;i++){
			$("#"+m3[i]).addClass("past-date");			
		}	  
	   
      //alert(alldate_check);
      for(var ad=0;ad<=alldate.length-1;ad++){   
         if(alldate_check[ad] == 1){
            var aa = '#'+alldate[ad].toISOString().substr(0,10);
            $(aa).addClass("past-date");
         };
      }
   });      
});
</script>
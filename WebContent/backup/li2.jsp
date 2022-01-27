<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 

    <style>
        .base{
            width: 2000px;
            height: 800px;
            text-align:center;
        }
        
        .item > ul{
            position: absolute;
			text-align:left;
        }
       
        .item{
            text-align: center;
            border: 1px solid black;
            float: left; 
            width: 500px;
            font-size:20px;
            background-color: #03164C; 
            color:white;
        }
     
        ul{
            list-style: none;
            
        }

		
	
		
		.inwon_menu{
			background-color: white; 
            color:black;
        
		}
		.room_menu2{
			background-color: white; 
            color:black;	
           
		}
		
		
    </style>

  						
   <div class="base">
      <ul>
        <li style="margin-left:400px;" class="item">
        	<b id="item_holaa">�ο���</b>
          	 <ul class="inwon_menu"style="margin-bottom:100px;">
          	 	<li style="margin-left:170px; margin-bottom:50px; margin-top:20px;font-size:25px; text-align:center;">
          	 		 <b>�ο��� ����</b>
          	 	</li>
          	 	
          	 	<li >	
		            <select name="man" onchange="inwon_check()" style=" width:150px; height:50px; margin-left:190px; ">
		 				 <c:forEach var="i" begin="1" end="${rdto.max}">
				          <option value="${i}"> ${i}�� </option>
				         </c:forEach>
					</select>
				</li>
				<li style="margin-top:50px;">
					<span id="inwon_hap" style="margin-left:240px;"><b>1��</b></span>
				</li>
				<li style="margin-top:50px;">
					<span id="inwon_price" style="margin-left:240px;"><b>0��</b></span>
				</li>
			</ul>
       </li> 
        <li  id="item_holaa"class="item">
          	<b >�δ�ü� �ȳ�</b> 
            <ul class="room_menu2">
                <li id="room_number2" style="  margin-left:50px; margin-top:50px;">�ٺ�ť�� ���� ����  ���� ���� ���</li>
            </ul>
        </li>
         
    </ul> 
   </div>
   <script>
   var n1,n4,n5; // ����,û�ҳ�,�ʵ�����,���ο�,�߰��ݾ�
   function inwon_check()
   {
	   // ����, û�ҳ�, �ʵ������� select�� value�� �����ͼ� ���ϸ� => ���ο�
	   var man=parseInt(document.reser.man.value); // ������ �ο�
		if(man <= ${rdto.max}) // �ִ��ο��� �ʰ����� �ʴ´ٸ�
	   { // �������� �ο��߰� ���� => n1,n2,n3,n4,n5������ ����
	     // �߰� �ݾ� ����Ͽ� innerText
	     var chuga=man;
	     if(chuga >= 1) // �����ο����� ������ �߰��ݾ� ���
	     {	   
	       var result=chuga*10000*document.reser.suk.value; // �߰��ο��ݾ׿� ������ ���Ѵ�
	       // ���ڸ� �ִ� �ο��߰��ݾ��� name="inwon_price" �� ���±׿� ����
	       document.reser.inwon_price.value=result;
	       result=new Intl.NumberFormat().format(result);
	       document.getElementById("inwon_price").innerText=result+"��";
	       n4=result+"��";
	     }
	     else // �������� => 0��
	     {
	       // �߰��ݾ��� ������� 0��  name="inwon_price" �� ���±׿� ����
		   document.reser.inwon_price.value=0;
		   document.getElementById("inwon_price").innerText="0��";
		   n4="0��";
	     }
	     document.getElementById("inwon").innerText=chong+"��";
	     // 5���� �׸��� ���� ����
	     n1=document.reser.man.value;
	     n5=chong;
	   }
	   else // �ʱ�ȭ ��� ������ ������ ����
	   {
		   alert("���ο��� �ʰ��Ͽ� �������� ���ư��ϴ�");
		   document.reser.man.value=n1; // �����ο�
		   document.getElementById("inwon_price").innerText=n4;  // �߰��ݾ�
		   document.getElementById("inwon").innerText=n5;        // �߰��ο�
		   
		   /* document.reser.man.selectedIndex=0;
		   document.reser.student.selectedIndex=0;
		   document.reser.baby.selectedIndex=0;
		   document.getElementById("inwon_price").innerText="0��";
		   document.getElementById("inwon").innerText="1��"; */
	   }
	   chong_hap();
   }
   
   
   </script> 

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>게시글비밀번호</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">
  
  <% String b_id = request.getParameter("b_id"); %>
  <% String b_pw = request.getParameter("b_pw"); %>
  
  <script type="text/javascript">
  	function checkPass(passValue) {
  		
  		var originPass = <%=b_pw%>
  		var checkPass = passValue.value;
  		
  		alert(originPass);
  		alert(checkPass);
  		
  		if(originPass == checkPass){
  			//alert("암호일치");
  			location.href="show.jsp?b_id=<%=b_id%>";
  		} else {
  			alert("패스워드가 일치하지 않습니다");
  			history.go(-1);
  		}
  	}
  </script>
  
  
  </head>
  <body class="bg-dark">
    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">비밀번호 확인</div>
        <div class="card-body">
        
          <form >
            <input type="hidden" name="command" value="board_check_pass">        
            <input type="hidden" name="b_id" value="${param.b_id}">
            
                <!--boardView.jsp의  "게시글 수정" 부분에
                onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}')
                부분에서 num값을 보낸것을 param(.$.{.}.EL에서 키를 지정하지않은 파라메타)으로 받는다 
                /> -->
         <div class="form-group">
              <div class="form-label-group">
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="required">
                <label for="inputPassword">Password</label>
              </div>
            </div>
         <a class="btn btn-primary btn-block" href="javascript:checkPass(document.getElementById('inputPassword'));">확인</a>
            <!-- <a class="btn btn-primary btn-block" href="BoardServlet.jsp">확인</a> -->
             ${message} 
      
           

            <!--  BoardCheckPassAction에 request영역의 
            setAttribyte로 ("message","비밀번호가 틀렸습니다.")의 키와 값을  
             주어 "비밀번호가 틀렸습니다 출력"-->

      </form>
        </div>
      </div>
    </div>
  
 <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  </body>

</html>



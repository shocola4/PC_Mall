<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function keyword_check(){
  if(document.../img/s.gif.srch_word.value==''){
      alert('검색어를 입력하세요');
      document.../img/s.gif.srch_word.focus();
      return false;
  }
  else return true;
}
</script>
</head>
<body>
	</tr>
		   <tr> 
             <form name="search_form" action="../common/search_view.jsp" method=post ">

	         <td height=20 width=200 align=center>  
                  <input type="text" name="" size="14" style="width: 479px;height: 38px;">
                   <input type="image" border=0 src="../img/s.gif"></td>
             </form>
          </tr> 
</body>
</html>
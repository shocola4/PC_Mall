<%@ page import="java.sql.*,oracle.dbpool.*" contentType="text/html;charset=utf-8" %>
<%
	try{
		DBConnectionManager pool = DBConnectionManager.getInstance();
		Connection con = pool.getConnection("ora8");
		String  pwd=""; 
		String mem_pwd = request.getParameter("pwd");
		String sql = "select m_uid, m_pwd, m_name from member where m_uid ='" + mem_pwd +"'"; 
		
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);

		if(rs.next()) {
			
			pwd = rs.getString(2);
			System.out.println(" 조회확인 ");
			
		} else{
			
			System.out.println("존재하지않는 비밀 번호");
 %>

			<script language="JavaScript"> 
				alert("비밀번호가 존재하지않음.");
				history.go(-1); //한단계 이전 페이지로 이동
			</script>

 <% }
		
        if( pwd.equals(mem_pwd)) {
			
        	//세션영역에  세션키와 값을 설정
		  	 //회원 이름
			session.setAttribute("pmember","y"); //회원 인지 아닌지..

            // 사용안함.-어플리케이션 변수 설정. 현재 사용자 체크용

			if( application.getAttribute("activecount") == null){
		
				Integer r1 = new Integer("1");
				application.setAttribute("activecount",r1);

			} else { 

				Integer r2 = (Integer)application.getAttribute("activecount");
			    int s = r2.intValue(); 
				Integer r3 = new Integer(++s);
			   application.setAttribute("activecount",r3);
			}			
			
			System.out.println("########### 로그인 성공! ###########");
			//log로교체
%>

			<script>
				location.href="../board/show.jsp";	 //메인페이지로 이동
			</script>
				
<%		 
			//response.sendRedirect("../main/index.jsp");

		 } else if(pwd.equals(mem_pwd)) {

			 System.out.println("로그인 실패 - 패스워드 오류");
%>

			<script>
				alert("패스워드가 일치하지 않습니다");
				history.go(-1); 
			</script>

<%
		}
		stmt.close();                   //stmt닫기
		rs.close();                      //rs닫기
		pool.freeConnection("ora8", con); //커넥션 풀 종료

	} catch(Exception e) {

		out.println(e);
	}
	// response.sendRedirect("../main/index.jsp");
%>
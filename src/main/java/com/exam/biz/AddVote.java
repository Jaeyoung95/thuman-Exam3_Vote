package com.exam.biz;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.jdbc.JDBCConnect;

@WebServlet("/AddVote")
public class AddVote extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String jumin=request.getParameter("jumin");
		String name=request.getParameter("name");
		String voteNo=request.getParameter("voteNo");
		String voteTime=request.getParameter("voteTime");
		String voteArea=request.getParameter("voteArea");
		String confirm=request.getParameter("confirm");
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();

		Connection conn = null;
		PreparedStatement stmt = null;

		try {
			conn = JDBCConnect.getConnection();
			String sql = "insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)\r\n"
					+ "values(?,?,?,?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, jumin);
			stmt.setString(2, name);
			stmt.setString(3, voteNo);
			stmt.setString(4, voteTime);
			stmt.setString(5, voteArea);
			stmt.setString(6, confirm);
			
			int cnt=stmt.executeUpdate();
			
			if(cnt>0) {
				out.print("<script>alert('투표하기 정보가 정상적으로 등록 되었습니다.');location.href='index.jsp';</script>");
			}
			out.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCConnect.close(stmt, conn);
		}
	}

}

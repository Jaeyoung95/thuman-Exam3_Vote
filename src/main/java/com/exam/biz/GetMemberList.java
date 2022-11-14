package com.exam.biz;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.jdbc.JDBCConnect;
import com.exam.vo.MemberVO;


@WebServlet("/GetMemberList")
public class GetMemberList extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		try {
			conn=JDBCConnect.getConnection();
			String sql="select M.M_NO,M.M_NAME,P.P_NAME,\r\n"
					+ "case M.P_SCHOOL\r\n"
					+ "when '1' then '고졸'\r\n"
					+ "when '2' then '학사'\r\n"
					+ "when '3' then '석사'\r\n"
					+ "when '4' then '박사'\r\n"
					+ "end as school\r\n"
					+ ",substr(M.M_JUMIN,1,6)||'-'||substr(M.M_JUMIN,6) as JUMIN,M.M_CITY,P.P_TEL1||'-'||P.P_TEL2||'-'||P.P_TEL3 as TEL\r\n"
					+ "from TBL_MEMBER_202005 M,TBL_PARTY_202005 P\r\n"
					+ "where M.P_CODE=P.P_CODE";
			stmt=conn.prepareStatement(sql);
			rs=stmt.executeQuery();
			ArrayList<MemberVO> memberList=new ArrayList<MemberVO>();
			MemberVO vo=null;
			while(rs.next()) {
				vo=new MemberVO();
				vo.setM_no(rs.getString(1));
				vo.setM_name(rs.getString(2));
				vo.setP_name(rs.getString(3));
				vo.setP_school(rs.getString(4));
				vo.setJumin(rs.getString(5));
				vo.setM_city(rs.getString(6));
				vo.setTel(rs.getString(7));
				memberList.add(vo);
			}
			request.setAttribute("memberList", memberList);
			
			RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp?filePath=getMemberList");
			dispatcher.forward(request, response);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCConnect.close(rs, stmt, conn);
		}
	}

}

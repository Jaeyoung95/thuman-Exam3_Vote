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
import com.exam.vo.MemberRankVO;
import com.exam.vo.VoteVO;


@WebServlet("/GetMemberRank")
public class GetMemberRank extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		try {
			conn=JDBCConnect.getConnection();
			String sql="select V.M_NO,M.M_NAME,count(*) as CNT\r\n"
					+ "from TBL_VOTE_202005 V,TBL_MEMBER_202005 M\r\n"
					+ "where V.M_NO=M.M_NO\r\n"
					+ "group by V.M_NO,M.M_NAME\r\n"
					+ "order by CNT desc";
			stmt=conn.prepareStatement(sql);
			rs=stmt.executeQuery();
			ArrayList<MemberRankVO> memberRankList=new ArrayList<MemberRankVO>();
			MemberRankVO vo=null;
			while(rs.next()) {
				vo=new MemberRankVO();
				vo.setM_no(rs.getString(1));
				vo.setM_name(rs.getString(2));
				vo.setCnt(rs.getInt(3));
				memberRankList.add(vo);
			}
			request.setAttribute("memberRankList", memberRankList);
			
			RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp?filePath=getMemberRank");
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

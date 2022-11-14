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
import com.exam.vo.VoteVO;


@WebServlet("/GetVoteList")
public class GetVoteList extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		try {
			conn=JDBCConnect.getConnection();
			String sql="select V_NAME,'19'||substr(V_JUMIN,1,2)||'년'||substr(V_JUMIN,3,2)||'월'||substr(V_JUMIN,5,2)||'일생' \r\n"
					+ "as birth,'만 ' || (to_char(sysdate,'YYYY')-1-('19'||substr(V_JUMIN,1,2))) || '세' as age,\r\n"
					+ "case substr(V_JUMIN,7,1)\r\n"
					+ "when '1' then '남'\r\n"
					+ "else '여'\r\n"
					+ "end as gender\r\n"
					+ ",M_NO,substr(V_TIME,1,2)||':'||substr(V_TIME,3,2) as VOTETIME,\r\n"
					+ "case V_CONFIRM \r\n"
					+ "when 'Y' then '확인'\r\n"
					+ "else '미확인'\r\n"
					+ "end as CONFIRM\r\n"
					+ "from TBL_VOTE_202005 where V_AREA='제1투표장'\r\n"
					+ "order by CONFIRM";
			stmt=conn.prepareStatement(sql);
			rs=stmt.executeQuery();
			ArrayList<VoteVO> voteList=new ArrayList<VoteVO>();
			VoteVO vo=null;
			while(rs.next()) {
				vo=new VoteVO();
				vo.setV_name(rs.getString(1));
				vo.setBirth(rs.getString(2));
				vo.setAge(rs.getString(3));
				vo.setGender(rs.getString(4));
				vo.setM_no(rs.getString(5));
				vo.setVotetime(rs.getString(6));
				vo.setConfirm(rs.getString(7));
				voteList.add(vo);
			}
			request.setAttribute("voteList", voteList);
			
			RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp?filePath=getVoteList");
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

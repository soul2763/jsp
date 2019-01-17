package kr.co.board1.config;

public class SQL {
	public static final String SELECT_TERMS 	= "select * from `JSP_TERMS`";
	public static final String INSERT_REGISTER  = "INSERT INTO `JSP_MEMBER` SET uid=?, pass=PASSWORD(?), name=?, nick=?, email=?, hp=?, zip=?, addr1=?, addr2=?, regip=?, rdate=NOW()";
	public static final String SELECT_LOGIN		= "select * from `JSP_MEMBER` where uid=? and pass=PASSWORD(?)";
	public static final String INSERT_BOARD		= "insert into `JSP_BOARD` set "
												+ "cate='notice', "
												+ "title=?, "
												+ "content=?, "
												+ "uid=?, "
												+ "regip=?,"
												+ "rdate=NOW()";
	public static final String SELECT_LIST		= "select b.*,n.nick from JSP_BOARD as b join JSP_MEMBER as n on b.uid = n.uid order by b.seq desc;";
}
;
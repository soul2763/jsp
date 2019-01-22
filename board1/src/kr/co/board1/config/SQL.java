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
	public static final String SELECT_LIST		= "select b.*,n.nick from JSP_BOARD as b join JSP_MEMBER as n on b.uid = n.uid where parent = 0 order by b.seq desc;";
	public static final String SELECT_VIEW		= "select * from `JSP_BOARD` where seq = ?";
	public static final String UPDATE_HIT		= "update `JSP_BOARD` set hit = hit + 1 where seq = ?";
	public static final String DELETE_CONTENT	= "delete from `JSP_BOARD` where seq = ?";
	public static final String UPDATE_BOARD		= "update `JSP_BOARD` set title = ?, content = ? where seq = ?";			
	public static final String INSERT_COMMENT	= "CALL insertComment(?,?,?,?)";
	public static final String SELECT_COMMENT	= "select a.*, b.nick from `JSP_BOARD` as a join `JSP_MEMBER` as b on a.uid = b.uid where parent = ? order by seq ASC";
	public static final String DELETE_COMMENT	= "delete from `JSP_BOARD` where seq = ?";
	
};
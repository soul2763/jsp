package cf.chhak.config;

public class SQL {
	public static final String SELECT_TERMS 	= "select * from `JSP_TERMS`";
	public static final String INSERT_REGISTER  = "INSERT INTO `JSP_MEMBER` SET uid=?, pass=PASSWORD(?), name=?, nick=?, email=?, hp=?, zip=?, addr1=?, addr2=?, regip=?, rdate=NOW()";
	public static final String SELECT_UID_COUNT = "select count(*) from `JSP_MEMBER` where uid =?";
	public static final String SELECT_NICK_COUNT = "select count(*) from `JSP_MEMBER` where nick =?";
	public static final String SELECT_EMAIL_COUNT = "select count(*) from `JSP_MEMBER` where email =?";
	public static final String SELECT_HP_COUNT = "select count(*) from `JSP_MEMBER` where hp =?";
	
	public static final String SELECT_LOGIN		= "select * from `JSP_MEMBER` where uid=? and pass=PASSWORD(?)";
	public static final String SELECT_MAX_SEQ	= "select max(seq) from `JSP_BOARD`";
	public static final String INSERT_BOARD		= "insert into `JSP_BOARD` set "
													+ "cate='notice', "
													+ "title=?, "
													+ "content=?, "
													+ "uid=?, "
													+ "file=?, "
													+ "regip=?,"
													+ "rdate=NOW()";
	
	public static final String INSERT_FILE		= "insert into `JSP_FILE` (parent, oldName, newName, rdate) values(?,?,?,now())";
	public static final String SELECT_COUNT		= "select count(*) from `JSP_BOARD` where parent= 0;";
	public static final String SELECT_LIST		= "select b.*,n.nick from JSP_BOARD as b join JSP_MEMBER as n on b.uid = n.uid where parent = 0 order by b.seq desc limit ?, 10;";
	
	public static final String SELECT_VIEW		= "select * from `JSP_BOARD` where seq = ?";
	
	public static final String SELECT_VIEW_WITH_FILE = "select * from `JSP_BOARD` as b left join `JSP_FILE` as f on b.seq = f.parent where b.seq = ?";
	public static final String UPDATE_DOWN		= "update `JSP_FILE` set download = download + 1 where parent = ?";
	public static final String UPDATE_HIT		= "update `JSP_BOARD` set hit = hit + 1 where seq = ?";
	public static final String DELETE_CONTENT	= "delete from `JSP_BOARD` where seq = ?";
	public static final String UPDATE_BOARD		= "update `JSP_BOARD` set title = ?, content = ? where seq = ?";			
	public static final String INSERT_COMMENT	= "CALL insertComment(?,?,?,?)";
	public static final String SELECT_COMMENT	= "select a.*, b.nick from `JSP_BOARD` as a join `JSP_MEMBER` as b on a.uid = b.uid where parent = ? order by seq ASC";
	public static final String DELETE_COMMENT	= "delete from `JSP_BOARD` where seq = ?";
	
};
package soul2763.kr.studio.config;

public class SQL {
	public static final String SELECT_LOGIN					= "select * from `ADMIN` where uid=? and pass=PASSWORD(?)";
	
	public static final String SELECT_PICTURE_FAM			= "select filename from PICTURE_IMAGE where filetype='picture_fam' order by seq desc limit ?, 9;";
	public static final String SELECT_PICTURE_snap			= "select filename from PICTURE_IMAGE where filetype='picture_snap' order by seq desc limit ?, 9;";
	
	public static final String SELECT_PICTURE_FAM_COUNT		= "select count(*) from `PICTURE_IMAGE` where filetype='picture_fam';";
	public static final String SELECT_PICTURE_SNAP_COUNT	= "select count(*) from `PICTURE_IMAGE` where filetype='picture_snap';";
	
	public static final String INSERT_FILE					= "insert into PICTURE_IMAGE (filename, filetype, rdate) values(?, ?, NOW());";
};
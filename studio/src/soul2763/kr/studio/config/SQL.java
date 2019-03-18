package soul2763.kr.studio.config;

public class SQL {
	public static final String SELECT_LOGIN					= "select * from `ADMIN` where uid=? and pass=PASSWORD(?)";
	
	public static final String SELECT_PICTURE_FAM			= "select FILENAME from PICTURE_IMAGE where FILETYPE='picture_fam' limit ?, 9;";
	public static final String SELECT_PICTURE_snap			= "select FILENAME from PICTURE_IMAGE where FILETYPE='picture_snap' limit ?, 9;";
	
	public static final String SELECT_PICTURE_FAM_COUNT		= "select count(*) from `PICTURE_IMAGE` where FILETYPE='picture_fam';";
	public static final String SELECT_PICTURE_SNAP_COUNT	= "select count(*) from `PICTURE_IMAGE` where FILETYPE='picture_snap';";
};
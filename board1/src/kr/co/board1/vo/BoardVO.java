package kr.co.board1.vo;

public class BoardVO {
	private int seq;
	private int parent;
	private int comment;
	private String cate;
	private String title;
	private String content;
	private int file;
	private String uid;
	private String regip;
	private String rdate;
	private String nick;
	
	private int fileseq;
	private int fileparent;
	private String oldname;
	private String newname;
	private int download;
	private String filerdate;
	
	public int getFileseq() {
		return fileseq;
	}
	public void setFileseq(int fileseq) {
		this.fileseq = fileseq;
	}
	public int getFileparent() {
		return fileparent;
	}
	public void setFileparent(int fileparent) {
		this.fileparent = fileparent;
	}
	public String getOldname() {
		return oldname;
	}
	public void setOldname(String oldname) {
		this.oldname = oldname;
	}
	public String getNewname() {
		return newname;
	}
	public void setNewname(String newname) {
		this.newname = newname;
	}
	public int getDownload() {
		return download;
	}
	public void setDownload(int download) {
		this.download = download;
	}
	public String getFilerdate() {
		return filerdate;
	}
	public void setFilerdate(String filerdate) {
		this.filerdate = filerdate;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getParent() {
		return parent;
	}
	public void setParent(int parent) {
		this.parent = parent;
	}
	public int getComment() {
		return comment;
	}
	public void setComment(int comment) {
		this.comment = comment;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getFile() {
		return file;
	}
	public void setFile(int file) {
		this.file = file;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getRegip() {
		return regip;
	}
	public void setRegip(String regip) {
		this.regip = regip;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	private int hit;
}

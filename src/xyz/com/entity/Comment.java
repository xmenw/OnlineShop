package xyz.com.entity;

import java.io.Serializable;

public class Comment  implements Serializable{
	private static final long serialVersionUID = 1L;
	private int id;
	private String comment;
	
	public Comment() {
		super();
	}

	public Comment(int id, String comment) {
		super();
		this.id = id;
		this.comment = comment;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getcomment() {
		return comment;
	}

	public void setcomment(String comment) {
		this.comment = comment;
	}

	@Override
	public String toString() {
		return "Comment [id=" + id + ", comment=" + comment + "]";
	}

}

package xyz.com.entity;

import java.io.Serializable;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

public class Users  implements Serializable{
	private static final long serialVersionUID = 1L;
	@NotEmpty
	@Length(min = 10)
	private String username = null;
	@NotEmpty
	@Pattern(regexp="^/d+[A-Za-z]+$")
	@Length(min = 16)
	private String password = null;
	
	public Users() {
		super();
	}

	public Users(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
		
}

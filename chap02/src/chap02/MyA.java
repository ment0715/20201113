package chap02;

public class MyA {
	private String id;
	private String password;
	
	// getter setter 단축키 = alt + shift + s + r 
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	//alt + shift +  s + s  -> toString 메서드 자동 생성 단축키
	
	@Override
	public String toString() {
		return "MyA [id=" + id + ", password=" + password + "]";
	}
	

	
	

}

package gradle_spring_webmvc_study.dto;

import java.util.List;

public class Login {
	private String loginType;
	private String jobCode;
	private String tool;
	private List<String> favorite;
	private List<DE> de;
	

	
	public List<DE> getDe() {
		return de;
	}

	public void setDe(List<DE> de) {
		this.de = de;
	}

	public List<String> getFavorite() {
		return favorite;
	}

	public void setFavorite(List<String> favorite) {
		this.favorite = favorite;
	}

	public String getTool() {
		return tool;
	}

	public void setTool(String tool) {
		this.tool = tool;
	}

	public String getJobCode() {
		return jobCode;
	}

	public void setJobCode(String jobCode) {
		this.jobCode = jobCode;
	}

	public String getLoginType() {
		return loginType;
	}

	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}

}

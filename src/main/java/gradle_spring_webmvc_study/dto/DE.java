package gradle_spring_webmvc_study.dto;

public class DE {
	private String os;
	private String label;

	
	public DE(String os, String label) {
		super();
		this.os = os;
		this.label = label;
	}
	public String getOs() {
		return os;
	}

	public void setOs(String os) {
		this.os = os;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}



}

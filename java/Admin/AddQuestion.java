package Admin;

public class AddQuestion {
	
	private int Qid;
	private String Que;
	private String O1;
	private String O2;
	private String O3;
	private String O4;
	public AddQuestion() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AddQuestion(String que, String o1, String o2, String o3, String o4) {
		super();
		Que = que;
		O1 = o1;
		O2 = o2;
		O3 = o3;
		O4 = o4;
	}
	public int getQid() {
		return Qid;
	}
	public void setQid(int qid) {
		Qid = qid;
	}
	public String getQue() {
		return Que;
	}
	public void setQue(String que) {
		Que = que;
	}
	public String getO1() {
		return O1;
	}
	public void setO1(String o1) {
		O1 = o1;
	}
	public String getO2() {
		return O2;
	}
	public void setO2(String o2) {
		O2 = o2;
	}
	public String getO3() {
		return O3;
	}
	public void setO3(String o3) {
		O3 = o3;
	}
	public String getO4() {
		return O4;
	}
	public void setO4(String o4) {
		O4 = o4;
	}
	@Override
	public String toString() {
		return "AddQuestion [Qid=" + Qid + ", Que=" + Que + ", O1=" + O1 + ", O2=" + O2 + ", O3=" + O3 + ", O4=" + O4
				+ "]";
	}

}

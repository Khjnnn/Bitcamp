package pro02.ex02;

public class MemberDAOImpl implements MemberDAO {
	
	@Override
	public void listMembers(){
		System.out.println("리스트 메서드 호출");
		System.out.println("조회한다!");
	}
	
}

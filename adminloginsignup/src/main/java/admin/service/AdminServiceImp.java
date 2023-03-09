package admin.service;

import admin.dao.AdminDAO;
import admin.dto.AdminDTO;
import admin.dto.adminAuthInfo;


//관리자 관련 서비스: 회원가입,	로그인, 정보수정, 관리자 탈퇴. DB에 정보를 insert, select, update, delete 한다.
//AuthInfo: 회원의 정보값을 세션에 저장 하기 위해 사용.
public class AdminServiceImp implements AdminService {

	private AdminDAO adminDao;
	
	public AdminServiceImp() {

	}

	// adminServiceBean을 생성하고 properties에서 호출.
	public void setAdminDao(AdminDAO adminDao) {
		this.adminDao = adminDao;
	}

	// 관리자 추가
	@Override
	public adminAuthInfo addAdminProcess(AdminDTO dto) {
		adminDao.addAdmin(dto);
		return new adminAuthInfo(dto.getAdminId(), dto.getAdminPw());
	}


	// 관리자 로그인
	@Override
	public adminAuthInfo loginProcess(AdminDTO dto) {
		AdminDTO admin = adminDao.selectByAdminId(dto.getAdminId());
		if (admin== null) {
			System.out.println("암살시도가 있었습니다");
			throw new RuntimeException();
		}

		if (!admin.matchPassword(dto.getAdminPw())) {
			System.out.println("간첩신고는 111");
			throw new RuntimeException();
		} 
		return new adminAuthInfo(admin.getAdminId(),admin.getAdminPw());
		// TODO Auto-generated method stub

	}

	// 관리자 정보 수정
	@Override
	public AdminDTO updateAdminProcess(String adminId) {
		// TODO Auto-generated method stub
		return null;
	}

	// 관리자 정보를 세션에 저장하기 위해 인증 정보 형태로 리턴
	@Override
	public adminAuthInfo updateAdminProcess(AdminDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}

	// 관리자 탈퇴
	@Override
	public adminAuthInfo deleteAdminProcess(String adminId) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public int idcheck(String adminId) {
		// TODO Auto-generated method stub
		
		return adminDao.idcheck(adminId);
	}
	


}

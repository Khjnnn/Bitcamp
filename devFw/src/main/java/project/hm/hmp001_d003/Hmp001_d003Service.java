package project.hm.hmp001_d003;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.dao.DataAccessException;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import project.hm.hmp001_d003.Hmp001_d003VO;

public interface Hmp001_d003Service {
	 public List<Hmp001_d003VO> searchList(Map<String, Object> searchMap) throws DataAccessException;
	 public List<Hmp001_d003VO> searchMod(Map<String, Object> searchMap) throws DataAccessException;
	 public List<Hmp001_d003VO> searchAdd() throws DataAccessException;
	 
	 public void updateMember(Map<String, Object> datahMap) throws Exception;
	 public void insertMember(Map<String, Object> datahMap) throws Exception;
	 public void deleteMember(Map<String, Object> datahMap) throws Exception;
}

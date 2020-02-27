package project.hm.hmp001_d003;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import project.hm.hmp001_d003.Hmp001_d003DAO;
import project.hm.hmp001_d003.Hmp001_d003VO;

@Service("hmp001_d003Service")
@Transactional(propagation = Propagation.REQUIRED)
public class Hmp001_d003ServiceImpl implements Hmp001_d003Service {
	@Autowired
	private Hmp001_d003DAO hmp001_d003DAO;

	@Override
	public List<Hmp001_d003VO> searchList(Map<String, Object> searchMap) throws DataAccessException {
		List<Hmp001_d003VO> list =  hmp001_d003DAO.searchList(searchMap); 
		return list;
	}

	@Override
	public List<Hmp001_d003VO> searchMod(Map<String, Object> searchMap) throws DataAccessException {
		List<Hmp001_d003VO> list =  hmp001_d003DAO.searchMod(searchMap);
		return list;
	}

	@Override
	public List<Hmp001_d003VO> searchAdd() throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateMember(Map<String, Object> datahMap) throws Exception {
		hmp001_d003DAO.updateMember(datahMap);
	}

	@Override
	public void insertMember(Map<String, Object> datahMap) throws Exception {
		hmp001_d003DAO.insertMember(datahMap);
	}

	@Override
	public void deleteMember(Map<String, Object> datahMap) throws Exception {
		hmp001_d003DAO.deleteMember(datahMap);
	}

}

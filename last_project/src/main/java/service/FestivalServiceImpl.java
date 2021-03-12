package main.java.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import main.java.model.FestivalDAO;
import main.java.vo.FestivalVO;
@Service("festivalService")
public class FestivalServiceImpl implements FestivalService {
	@Autowired
	private FestivalDAO festivalDao;

	@Override
	public List<FestivalVO> test() {
		// TODO Auto-generated method stub
		System.out.println("Service test요청");
		return festivalDao.test();
	}

	@Override
	public List<FestivalVO> month(String month) {
		// TODO Auto-generated method stub
		System.out.println("Service222222에서 month2222222 요청");
		return festivalDao.month(month);
	}

	@Override
	public List<FestivalVO> recommand(){
		return festivalDao.recommand();
	}
	@Override
	public List<FestivalVO> detail(int tel) {

		return festivalDao.detail(tel);
	}
	@Override
	public List<FestivalVO> months() {

		return null;
	}


	@Override
	public List<FestivalVO> near(ObjectId objectId) {

		return festivalDao.near(objectId);
	}

	@Override
	public ArrayList<HashMap<String, String>> getReviews(String _id) {
		// TODO Auto-generated method stub
		return festivalDao.getReviews(_id);
	}

	@Override
	public int updateRestaurantReview(ArrayList<HashMap<String, String>> reviews, String _id) {
		// TODO Auto-generated method stub
		return festivalDao.updateRestaurantReview(reviews, _id);
	}





}

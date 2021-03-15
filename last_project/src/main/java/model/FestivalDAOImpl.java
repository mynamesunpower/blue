package main.java.model;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;

import org.bson.Document;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import com.mongodb.BasicDBObject;
import com.mongodb.client.gridfs.GridFSBucket;
import com.mongodb.client.gridfs.GridFSBuckets;
import com.mongodb.client.gridfs.GridFSFindIterable;
import com.mongodb.client.gridfs.model.GridFSFile;
import com.mongodb.client.result.UpdateResult;
import com.mongodb.gridfs.GridFSDBFile;

import main.java.vo.FestivalVO;
import main.java.vo.RestaurantVO;

@Repository("festivalDAO")
public class FestivalDAOImpl implements FestivalDAO {

	@Autowired
	private MongoTemplate mongoTemplate;
	
	private final String festival = "festival"; // Collection_name
	private final String restaurant = "restaurant"; // Collection_name
	
	@Override
	public List<FestivalVO> test() {
		System.out.println("DAO test");

		//Query query = new Query(Criteria.where(key));
		//query.addCriteria(Criteria.where("text").regex("Joe"));
		
		return mongoTemplate.findAll(FestivalVO.class, festival);
	}
	//이거 축제에요
	
	@Override
	public List<FestivalVO> month(String month) {
		System.out.println("DAO 에서: month()");

		//Query query = new Query(Criteria.where(key));
		//query.addCriteria(Criteria.where("text").regex("Joe"));
		
		//BasicDBObject query = new BasicDBObject();
		//query.put("title", Pattern.compile(".02.")); //titledp keyword
		//collection.find(filters.eq("speech","�븞�뀞")).forEach(printBlock)
		int mon=0;
		 Query query = new Query();
	     Criteria criteria = new Criteria();
	     if(month.length()==1) {
	    	 month = "20210" + month+"31";
	    	  mon = Integer.parseInt(month);
	     }else {
	    	 month = "2021" + month+"31";
	    	 mon = Integer.parseInt(month);
	     }
	     System.out.println("인트바꼈니:"+mon);
	     //query.addCriteria(criteria.where("start_date").regex("^2021"+month));
	     query = new Query(Criteria.where("startDate").lte(mon));  //조건1
	     //query = new Query(Criteria.where("endDate").gte(20211017));  //조건1
	    query.addCriteria(criteria.where("endDate").gte(mon));
	     //query.fields().exclude("_id");
	     List<FestivalVO> list =  mongoTemplate.find(query,FestivalVO.class,"festival");
	    // Stirng id = mongoTemplate.find(query,FestivalVO.class,"festival").getId();
	     System.out.println("Dao에서 DAOmonth"+list);
	     //FestivalVO vo =  mongoTemplate.findOne(query,FestivalVO.class,"festival");
	     //System.out.println("�굹�룄�엳�떎"+vo.get_id());
	     //System.out.println(vo.ge);
	    // imagefile();
	     System.out.println("dao의 list"+list);
	     
	     
		return list;
	}
	
	@Override
	public List<FestivalVO> recommand(){
		System.out.println("DAO 에서: recommand()");
		
		 Query query = new Query();
	     Criteria criteria = new Criteria();
	     query = new Query(Criteria.where("number").in(123));  //조건1
	     //query.addCriteria(criteria.where("start_date").gte(123);
	     List<FestivalVO> list =  mongoTemplate.find(query,FestivalVO.class,"festival");
	   
	     
	     System.out.println("DAOrecommand"+list);
	     
		
		return null;
	}
	
	//public String imagefile() {
		//GridFSDBFile dbFile = mongoTemplate.findOne(new Query(Criteria.where("_id").regex("^2021")));
		
		
		//return "thanks";
		
	//}
	
	
	//異뺤젣 �긽�꽭 �젙蹂� 戮묒븘�삤湲�

	@Override
	public List<FestivalVO> detail(int tel) {
	     System.out.println("dao detail"+tel);
		 Query query = new Query();
	     Criteria criteria = new Criteria();
	
	     query.addCriteria(criteria.where("postcode").is(tel));
	    
	     List<FestivalVO> list =  mongoTemplate.find(query,FestivalVO.class,"festival");

	     System.out.println("여기는 DAO detail"+list);
	   
		
		return list;
	}
	
	
	//媛��졇�삤湲�  (�븘吏�...)
	private void getFile() throws Exception{
	    GridFSBucket gridBucket = GridFSBuckets.create(mongoTemplate.getDb());

	    Document query = new Document();
	    query.append("image", new Document("$eq", "0"));
	    //query.append("metadata.date", new Document("$gte", "2020-07-01 00:00:00"));
	    //query.append("metadata.date", new Document("$lte", "2020-07-05 23:59:59"));

	    GridFSFindIterable itor = gridBucket.find(query);

	    int i = 0;
	    for (GridFSFile file : itor) { 
	        System.out.println(file.getFilename() + " : " + file.getMetadata());
	        ByteArrayOutputStream baos = new ByteArrayOutputStream();
	        gridBucket.downloadToStream(file.getId(), baos);
	        OutputStream outputStream = new FileOutputStream("E:/DDOWN/down"+i+".png");  //諛쏆쓣 �뵒�젆�넗由�+�뙆�씪紐�
	        baos.writeTo(outputStream);
	        try {
	            baos.close();
	        } catch (Exception e) {

	        }
	        try {
	            outputStream.close();
	        } catch (Exception e) {

	        }
	        i++;
	    }
	}


	


	
//근처 축제 3개 뽑기
	@Override
	public List<FestivalVO> near(ObjectId objectId) {
		// TODO Auto-generated method stub
		 Query query = new Query();
	     Criteria criteria = new Criteria();
		query.addCriteria(criteria.where("_id").is(objectId));
	    
	     List<FestivalVO> list =  mongoTemplate.find(query,FestivalVO.class,"festival");
		return list;
	}


	@Override
	public ArrayList<HashMap<String, String>> getReviews(String _id) {
		// TODO Auto-generated method stub
		FestivalVO vo = mongoTemplate.findById(_id, FestivalVO.class, "festival");
		//List<RestaurantVO> vo = mongoTemplate.find(query, RestaurantVO.class, collectionName);
		return vo.getReviews();
	}


	@Override
	public int updateRestaurantReview(ArrayList<HashMap<String, String>> reviews, String _id) {
		// TODO Auto-generated method stub
		Query query = new Query(Criteria.where("_id").is(_id));
		
		Update update = new Update();
		update.set("reviews", reviews);
		
		UpdateResult result = mongoTemplate.updateFirst(query, update, "festival");
	
		return (int)result.getModifiedCount();
	}


	
	
	
	
	//월별 축제 정보 가져오기
	@Override
	public List<FestivalVO> month(String month) {
		System.out.println("DAO 에서: month()");

		//Query query = new Query(Criteria.where(key));
		//query.addCriteria(Criteria.where("text").regex("Joe"));
		
		//BasicDBObject query = new BasicDBObject();
		//query.put("title", Pattern.compile(".02.")); //titledp keyword
		//collection.find(filters.eq("speech","�븞�뀞")).forEach(printBlock)
		int mon=0;
		 Query query = new Query();
	     Criteria criteria = new Criteria();
	     if(month.length()==1) {
	    	 month = "20210" + month+"31";
	    	  mon = Integer.parseInt(month);
	     }else {
	    	 month = "2021" + month+"31";
	    	 mon = Integer.parseInt(month);
	     }
	     System.out.println("인트바꼈니:"+mon);
	     //query.addCriteria(criteria.where("start_date").regex("^2021"+month));
	     query = new Query(Criteria.where("startDate").lte(mon));  //조건1
	     //query = new Query(Criteria.where("endDate").gte(20211017));  //조건1
	    query.addCriteria(criteria.where("endDate").gte(mon));
	     //query.fields().exclude("_id");
	     List<FestivalVO> list =  mongoTemplate.find(query,FestivalVO.class,"festival");
	    // Stirng id = mongoTemplate.find(query,FestivalVO.class,"festival").getId();
	     System.out.println("Dao에서 DAOmonth"+list);
	     //FestivalVO vo =  mongoTemplate.findOne(query,FestivalVO.class,"festival");
	     //System.out.println("�굹�룄�엳�떎"+vo.get_id());
	     //System.out.println(vo.ge);
	    // imagefile();
	     System.out.println("dao의 list"+list);
	     
	     
		return list;
	}
	
	
	//아직 아무 기능없음
	@Override
	public List<FestivalVO> recommand(){
		System.out.println("DAO 에서: recommand()");
		
		 Query query = new Query();
	     Criteria criteria = new Criteria();
	     query = new Query(Criteria.where("number").in(123));  //조건1
	     //query.addCriteria(criteria.where("start_date").gte(123);
	     List<FestivalVO> list =  mongoTemplate.find(query,FestivalVO.class,"festival");
	   
	     
	     System.out.println("DAOrecommand"+list);
	     
		
		return null;
	}
	

	
	
	//축제 상세페이지 정보

	@Override
	public List<FestivalVO> detail(int tel) {
	     System.out.println("dao detail"+tel);
		 Query query = new Query();
	     Criteria criteria = new Criteria();
	
	     query.addCriteria(criteria.where("postcode").is(tel));
	    
	     List<FestivalVO> list =  mongoTemplate.find(query,FestivalVO.class,"festival");

	     System.out.println("여기는 DAO detail"+list);
	   
		
		return list;
	}
	
	
	//뭐저??
	private void getFile() throws Exception{
	    GridFSBucket gridBucket = GridFSBuckets.create(mongoTemplate.getDb());

	    Document query = new Document();
	    query.append("image", new Document("$eq", "0"));
	    //query.append("metadata.date", new Document("$gte", "2020-07-01 00:00:00"));
	    //query.append("metadata.date", new Document("$lte", "2020-07-05 23:59:59"));

	    GridFSFindIterable itor = gridBucket.find(query);

	    int i = 0;
	    for (GridFSFile file : itor) { 
	        System.out.println(file.getFilename() + " : " + file.getMetadata());
	        ByteArrayOutputStream baos = new ByteArrayOutputStream();
	        gridBucket.downloadToStream(file.getId(), baos);
	        OutputStream outputStream = new FileOutputStream("E:/DDOWN/down"+i+".png");  //諛쏆쓣 �뵒�젆�넗由�+�뙆�씪紐�
	        baos.writeTo(outputStream);
	        try {
	            baos.close();
	        } catch (Exception e) {

	        }
	        try {
	            outputStream.close();
	        } catch (Exception e) {

	        }
	        i++;
	    }
	}


	


	
//근처 축제 3개 뽑기
	@Override
	public List<FestivalVO> near(ObjectId objectId) {
		// TODO Auto-generated method stub
		 Query query = new Query();
	     Criteria criteria = new Criteria();
		query.addCriteria(criteria.where("_id").is(objectId));
	    
	     List<FestivalVO> list =  mongoTemplate.find(query,FestivalVO.class,"festival");
		return list;
	}


	@Override
	public ArrayList<HashMap<String, String>> getReviews(String _id) {
		// TODO Auto-generated method stub
		FestivalVO vo = mongoTemplate.findById(_id, FestivalVO.class, "festival");
		//List<RestaurantVO> vo = mongoTemplate.find(query, RestaurantVO.class, collectionName);
		return vo.getReviews();
	}


	@Override
	public int updateRestaurantReview(ArrayList<HashMap<String, String>> reviews, String _id) {
		// TODO Auto-generated method stub
		Query query = new Query(Criteria.where("_id").is(_id));
		
		Update update = new Update();
		update.set("reviews", reviews);
		
		UpdateResult result = mongoTemplate.updateFirst(query, update, "festival");
	
		return (int)result.getModifiedCount();
	}


	
	
	
}

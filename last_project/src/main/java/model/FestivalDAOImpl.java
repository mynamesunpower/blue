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
import org.springframework.data.mongodb.core.aggregation.Aggregation;
import org.springframework.data.mongodb.core.aggregation.AggregationResults;
import org.springframework.data.mongodb.core.aggregation.MatchOperation;
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



	
	
	//월별 축제 정보 가져오기
	@Override
	public List<FestivalVO> month(String month) {
		System.out.println("DAO 에서: month()");


		int mon=0;
		
		 Query query = new Query();
	     Criteria criteria = new Criteria();
	     System.out.println("달이왔어"+month.length());
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
	     //query = new Query(Criteria.where("endDate").gte(20211017));  
	    query.addCriteria(criteria.where("endDate").gte(mon));//조건2
	   
	    List<FestivalVO> list =  mongoTemplate.find(query,FestivalVO.class,"festival");
	     
	     
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
	    
	     // 얘는 리스트로 가져오니까 업데이트를 어케해야댈지몰겟네 ㅡㅡ
	     //리스트에 하나들어가는데 안들어가지나요? 아 알거같당
	     List<FestivalVO> list =  mongoTemplate.find(query,FestivalVO.class,"festival");
	     
	     FestivalVO vo = list.get(0);
	     
	     System.out.println(list.get(0).getViews());
	     int views = vo.getViews();
	     views++;
	     list.get(0).setViews(views);
	     
	     System.out.println(vo.getViews());
	     
		 Update update = new Update();
		 update.set("views", list.get(0).getViews());

		 UpdateResult result = mongoTemplate.updateFirst(query, update, "festival");
		 
		 System.out.println("update 갯수 -> " + result.getModifiedCount());
		 
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


	@Override
	public FestivalVO insert_festival(FestivalVO vo) {
		
		return mongoTemplate.insert(vo, festival);
	}
	
	public FestivalVO modify_festival(FestivalVO vo) {
		
//		 Criteria criteria = new Criteria("title");
//	        criteria.is(vo.getTitle());
	        
	        Query query = new Query();
	        //업데이트 할 항목 정의
	        Update update = new Update();
	        
	     // where절 조건
	        query.addCriteria(Criteria.where("title").is(vo.getTitle()));
//	        query.addCriteria(Criteria.where("컬럼명2").is("조건값2"));
	        	        
	        update.set("address", vo.getAddress());
	        update.set("host", vo.getHost());
	        update.set("startDate", vo.getStartDate());
	        update.set("endDate", vo.getEndDate());
	        update.set("fee", vo.getFee());
	        update.set("tel", vo.getTel());
	        update.set("homepage", vo.getHomepage());
	        update.set("detail", vo.getDetail());
	        update.set("latitude", vo.getLatitude());
	        update.set("longitude", vo.getLongitude());
	        update.set("postcode", vo.getPostcode());
	        	     	     
		
	        mongoTemplate.updateMulti(query, update, "festival");
	        return null;
	}

	

	public FestivalVO delete_festival(FestivalVO vo) {
		
		Criteria criteria = new Criteria("title");
	    criteria.is(vo.getTitle());
	    Query query = new Query(criteria);
	        
	    mongoTemplate.remove(query, "festival");
		return null;
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


	//축제 검색
	@Override
	public List<FestivalVO> search(String word) {
		// TODO Auto-generated method stub
		
		// where(title컬럼)에서 word 있는애들 찾음
				MatchOperation where = Aggregation.match(new Criteria().andOperator(Criteria.where("title").regex(word)));
				Aggregation aggregation = Aggregation.newAggregation(where);
				AggregationResults<FestivalVO> result = mongoTemplate.aggregate(aggregation, festival, FestivalVO.class);
		
		return result.getMappedResults();
	}


	@Override
	public long festivalcount() {
		// TODO Auto-generated method stub
		
		//Query query = new Query(Criteria.where("_id"));
		
		//long result = mongoTemplate.count(null, FestivalVO.class);
		
		List<FestivalVO> list = mongoTemplate.findAll(FestivalVO.class, festival);

		long result = list.size();
		
		return result;
	}

	
	
	
	

	
	
	
}

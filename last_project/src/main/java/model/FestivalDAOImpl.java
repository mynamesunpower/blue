package main.java.model;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.regex.Pattern;

import org.bson.Document;
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

@Repository("festivalDAO")
public class FestivalDAOImpl implements FestivalDAO {

	@Autowired
	private MongoTemplate mongoTemplate;
	
	private final String festival = "festival"; // Collection_name
	private final String restaurant = "restaurant"; // Collection_name
	
	@Override
	public List<FestivalVO> test() {
		System.out.println("DAO 접근");

		//Query query = new Query(Criteria.where(key));
		//query.addCriteria(Criteria.where("text").regex("Joe"));
		
		return mongoTemplate.findAll(FestivalVO.class, festival);
	}
	
	
	@Override
	public List<FestivalVO> month(String month) {
		System.out.println("DAO 접근: month()");

		//Query query = new Query(Criteria.where(key));
		//query.addCriteria(Criteria.where("text").regex("Joe"));
		
		//BasicDBObject query = new BasicDBObject();
		//query.put("title", Pattern.compile(".02.")); //titledp keyword
		//collection.find(filters.eq("speech","안녕")).forEach(printBlock)
		
		 Query query = new Query();
	     Criteria criteria = new Criteria();
	     if(month.length()==1) {
	    	 month = "0" + month;
	     }
	     query.addCriteria(criteria.where("start_date").regex("^2021"+month));
	     List<FestivalVO> list =  mongoTemplate.find(query,FestivalVO.class,"festival");
	    // Stirng id = mongoTemplate.find(query,FestivalVO.class,"festival").getId();
	     System.out.println("여기는 DAOmonth"+list);
	     //FestivalVO vo =  mongoTemplate.findOne(query,FestivalVO.class,"festival");
	     //System.out.println("나도있다"+vo.get_id());
	     //System.out.println(vo.ge);
	    // imagefile();
	     
	     
	     
		return list;
	}
	
	@Override
	public List<FestivalVO> recommand(){
		System.out.println("DAO 접근: recommand()");
		
		 Query query = new Query();
	     Criteria criteria = new Criteria();
	    
	     query.addCriteria(criteria.where("start_date").regex("^2021"));
	     List<FestivalVO> list =  mongoTemplate.find(query,FestivalVO.class,"festival");
	   
	     
	     System.out.println("여기는DAOrecommand"+list);
	     
		
		return null;
	}
	
	//public String imagefile() {
		//GridFSDBFile dbFile = mongoTemplate.findOne(new Query(Criteria.where("_id").regex("^2021")));
		
		
		//return "thanks";
		
	//}
	
	
	//축제 상세 정보 뽑아오기

	@Override
	public List<FestivalVO> detail(int tel) {
	     System.out.println("넘어왔어여2"+tel);
		 Query query = new Query();
	     Criteria criteria = new Criteria();
	
	     query.addCriteria(criteria.where("postcode").is(tel));
	    
	     List<FestivalVO> list =  mongoTemplate.find(query,FestivalVO.class,"festival");

	     System.out.println("여기는DAO detail입니다"+list);
	   
		
		return list;
	}
	
	
	//가져오기  (아직...)
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
	        OutputStream outputStream = new FileOutputStream("E:/DDOWN/down"+i+".png");  //받을 디렉토리+파일명
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


	


	
	
	
}

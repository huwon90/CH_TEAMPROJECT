package com.ch.teampro1.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ch.teampro1.model.Board;
import com.ch.teampro1.model.BoardRe;
import com.ch.teampro1.model.Boardfile;
import com.ch.teampro1.model.MemberTmConn;
import com.ch.teampro1.model.TmConn;
import com.ch.teampro1.service.BoardService;
import com.ch.teampro1.service.ITeamService;
import com.ch.teampro1.util.MediaUtils;
import com.ch.teampro1.util.UploadFileUtils;


@Controller
public class BoardController {
	@Autowired
	private BoardService bService;
	@Autowired
	private ITeamService tService;

	 @Resource(name = "uploadPath")
	  private String uploadPath;
	 
	@RequestMapping(value="register", method=RequestMethod.GET)
	public String register() throws Exception{
		return "board/register";
	}
	  

	@RequestMapping(value="boardlist", method=RequestMethod.GET)
	public ModelAndView boardlist(String mId, TmConn tmConn, MemberTmConn memberTmConn, int tId, Model model) throws Exception{
        ModelAndView modelandview = new ModelAndView();
        int chkEnter = tService.chkTeam_ok1(tmConn);
        if(chkEnter==1) {
	        List<Board> list = bService.listAll(tId);
	        List<BoardRe> relist =bService.boardreList();
	        List<MemberTmConn> phoneList = bService.phoneList(tId);

	        List<Boardfile> fileList = bService.getAttach2();
	        modelandview.addObject("fileList", fileList);
			modelandview.addObject("phoneList",phoneList);
			int memberCount = bService.memberCount(tId);
			modelandview.addObject("memberCount", memberCount);
	        modelandview.addObject("list", list);
	        modelandview.addObject("relist", relist);
	        int requestCount = tService.requestCount(mId);
			modelandview.addObject("requestCount", requestCount);
	        modelandview.setViewName("board/list"); 
        } else {
        	modelandview.addObject("msg", "참여팀아님");
        	modelandview.setViewName("redirect:listTeam.do?mId="+mId);
        }
		return modelandview;
	}

	
	@RequestMapping(value = "writeForm", method = RequestMethod.GET)
	public String writeForm(Board board, Model model) {
		List<Board> boardList = bService.listAll(board.gettId());
		model.addAttribute("boardList", boardList);
		return "board/writeForm";
	}

	@RequestMapping(value = "replyinsert", method = RequestMethod.POST)
	public String replyinsert(BoardRe boardre, Model model) {
		int result = bService.reply_insert(boardre);
		if (result > 0) {
			return "redirect:boardlist.do?tId="+boardre.gettId()+"&mId="+boardre.getmId();
		} else {
			return "forward:writeForm.do";
		}
	}
	

	@RequestMapping(value = "createfile", method = RequestMethod.POST)
	public String createfile(Board board, Model model, String[] files) throws Exception {
		bService.createfile(board);
		return "redirect:boardlist.do?tId="+board.gettId()+"&mId="+board.getmId();
	}
	
	@RequestMapping(value = "write_file", method=RequestMethod.POST)
	public String write_file(String mId, int tId, MultipartHttpServletRequest mRequest) {
		int result = bService.insert_file(mRequest);
		if (result > 0) {
			return "redirect:boardlist.do?tId="+tId+"&mId="+mId;
		}else{
			return "forward:writeForm.do";
		}
	}

	@RequestMapping(value = "write_schedule")
	public String write_schedule(String mId, Board board, Model model) {
		int result = bService.insert_schedule(board);
		if (result > 0) {
			return "redirect:boardlist.do?tId="+board.gettId()+"&mId="+mId;
		}else{
			return "forward:writeForm.do";
		}
	}

	

	@RequestMapping(value = "delete")  
	public String delete(String mId, int tId, int bId, Model model) {
		int result = bService.delete_boardreply(bId);

		if(result > 0) { 
			result = bService.delete(bId);
			if(result > 0) {
				//최종 성공시
				return "redirect:boardlist.do?tId="+tId+"&mId="+mId;
			} else {
				return "forward:writeForm.do";
			}
		} else {
			return "forward:writeForm.do";
		}
	}

	@RequestMapping(value = "updateForm")
	public String updateForm(int bId, Model model){
		Board board = bService.detail(bId);
		model.addAttribute("updateForm", board);
		return "board/updateForm";
	}
	@RequestMapping(value = "updateFile")
	public String updateFile(String mId, int tId, MultipartHttpServletRequest mRequest){
		int result = bService.update_file(mRequest);
		if (result > 0) {
			return "redirect:boardlist.do?tId="+tId+"&mId="+mId;
		}else{
			return "forward:writeForm.do";
		}
	}
	
	@RequestMapping(value="infiniteScrollDown", method=RequestMethod.POST)
	public @ResponseBody List<Board> InfiniteScrollDown(@RequestBody Board board) throws Exception{
		int bId = board.getbId()-1;
		int tId = board.gettId();
		Board infi = new Board();
		infi.setbId(bId);
		infi.settId(tId);
		return bService.infiniteScroll(infi);
	}
	
	//@ResponseBody 어노테이션은 리턴되는 List<Board>를 JSON객체로 바꿔준다
	@RequestMapping(value = "viewfile",method=RequestMethod.GET)
	public @ResponseBody  List<Board> viewfile(Board board ,int tId){
		return bService.viewfile(tId);
	}
	
	@RequestMapping(value = "viewimage",method=RequestMethod.GET)
	public @ResponseBody List<Board> viewimage(Board board ,int tId){
		return bService.viewimage(tId);
		
	}
	

	//ajax 파일 업로드 컨트롤러 시작
	
	@ResponseBody
	@RequestMapping(value ="uploadAjax", method=RequestMethod.POST, 
	                  produces = "text/plain;charset=UTF-8")
	  public ResponseEntity<String> uploadAjax(MultipartFile file)throws Exception{
		   		
	    return 
	    	      new ResponseEntity<>(
	    	          UploadFileUtils.uploadFile(uploadPath, 
	    	                file.getOriginalFilename(), 
	    	                file.getBytes()), 
	    	          HttpStatus.CREATED);
	    }
	
	 @RequestMapping("getAttach/{bId}")
	  @ResponseBody
	  public List<String> getAttach(@PathVariable("bId")Integer bId)throws Exception{
	    
	    return bService.getAttach(bId);
	  }  
	
	
	@ResponseBody  //@ResponseBody는 byte[]데이터 그대로 받음
	  @RequestMapping("displayFile")
	//전송받기 원하는 파일 이름 /년/월/일/파일명의 형태로 입력받음
	  public ResponseEntity<byte[]>  displayFile(String fileName)throws Exception{
	    
	    InputStream in = null; 
	    ResponseEntity<byte[]> entity = null;  //리턴값은 실제 파일의 데이터 byte
	    
   
	    try{
	      
	      String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
	      
	      MediaType mType = MediaUtils.getMediaType(formatName);
	      
	      HttpHeaders headers = new HttpHeaders();
	      
	      in = new FileInputStream(uploadPath+fileName);
	      
	      if(mType != null){
	        headers.setContentType(mType); //파일 이름에서 확장자 추출하고 이미지인 경우 MINE변경
	      }else{
	    	//파일 이름에서 확장자 추출
	        fileName = fileName.substring(fileName.indexOf("_")+1);
	        //이미지가 아닌경우 다운로드로 사용되는 'APPLICATION_OCTET_STREAM'으로 지정
	        //브라우저가 이것을 읽으면 사용자에게 다운로드 창 열어줌
	        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM); 
	        headers.add("Content-Disposition", "attachment; filename=\""+
	          new String(fileName.getBytes("UTF-8"), "ISO-8859-1")+"\""); 
	      } //다운로드할떄 파일이름이므로 utf-8로 한글 처리

	      // commons 라이브러리로 대상파일에서 데이터를 읽어내는 함수
	        entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), 
	          headers, 
	          HttpStatus.CREATED);
	        
	    }catch(Exception e){
	      e.printStackTrace();
	      entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
	    }finally{
	      in.close();
	    }
	      return entity;    
	  }
	  
	  @ResponseBody
	  @RequestMapping(value="deleteFile", method=RequestMethod.POST)
	  public ResponseEntity<String> deleteFile(String fileName){
	    
	    String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
	    
	    MediaType mType = MediaUtils.getMediaType(formatName);
	    
	    if(mType != null){      
	      
	      String front = fileName.substring(0,12);
	      String end = fileName.substring(14);
	      new File(uploadPath + (front+end).replace('/', File.separatorChar)).delete();
	    }
	    
	    new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();
	    
	    
	    return new ResponseEntity<String>("deleted", HttpStatus.OK);
	  }  
	
	  @ResponseBody
	  @RequestMapping(value="deleteAllFiles", method=RequestMethod.POST)
	  public ResponseEntity<String> deleteFile(@RequestParam("files[]") String[] files){
	    
	    if(files == null || files.length == 0) {
	      return new ResponseEntity<String>("deleted", HttpStatus.OK);
	    }
	    
	    for (String fileName : files) {
	      String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
	      
	      MediaType mType = MediaUtils.getMediaType(formatName);
	      
	      if(mType != null){      
	        
	        String front = fileName.substring(0,12);
	        String end = fileName.substring(14);
	        new File(uploadPath + (front+end).replace('/', File.separatorChar)).delete();
	      }
	      
	      new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();
	      
	    }
	    return new ResponseEntity<String>("deleted", HttpStatus.OK);
	  } 
	  


	@RequestMapping(value = "replydelete")  
	public String replyDelete(int brId, String mId, int tId, Model model) {
		int result = bService.delete_reply(brId);
		if(result > 0) {
			model.addAttribute("msg", "댓글삭제성공");
			return "redirect:boardlist.do?tId="+tId+"&mId="+mId;
		} else {
			model.addAttribute("msg", "댓글삭제실패");
			return "redirect:boardlist.do?tId="+tId+"&mId="+mId;
		}
	}
}

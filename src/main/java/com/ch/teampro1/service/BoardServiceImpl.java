package com.ch.teampro1.service;

import java.io.File;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.ch.teampro1.dao.BoardDao;
import com.ch.teampro1.model.Board;
import com.ch.teampro1.model.BoardRe;
import com.ch.teampro1.model.MemberTmConn;
import com.ch.teampro1.model.Boardfile;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDao boardDao;

	@Override
	public List<Board> listAll(int tId) {
		return boardDao.listAll(tId);
	}
	@Override
	public List<BoardRe> boardreList()  {
		return boardDao.boardreList();
	}
	@Override
	public int insert_file(MultipartHttpServletRequest mRequest) {
		// upload
		String upPath = mRequest.getRealPath("upload/");
		Iterator<String> iterator = mRequest.getFileNames();
		String[] saveFileName = new String[2];
		int i =0;
		while (iterator.hasNext()) {
			String uploadFile = iterator.next();
			MultipartFile mFile = mRequest.getFile(uploadFile);
			String originalFile = mFile.getOriginalFilename();

			saveFileName[i] = originalFile;
			if (saveFileName[i] != null && !saveFileName[i].equals("")) {
				if (new File(upPath + saveFileName[i]).exists()) {
					saveFileName[i] = System.currentTimeMillis() + saveFileName[i];
					System.out.println("업로드된 파일 : "+upPath+saveFileName[i]);	//업로드된 파일 : 
				}
				try {
					mFile.transferTo(new File(upPath+saveFileName[i]));
					System.out.println("업로드된 파일 : "+upPath+saveFileName[i]);
				} catch (Exception e) {
					e.printStackTrace();
				}//try
			}//if
			i++;
		}//while

		Board board = new Board();
		board.setBfName(saveFileName[0]);
		board.setBiName(saveFileName[1]);
		board.setbContent(mRequest.getParameter("bContent"));
		board.settId(Integer.parseInt(mRequest.getParameter("tId")));
		board.setmId(mRequest.getParameter("mId"));
		return boardDao.insert_file(board);
	}

	@Override
	public int insert_schedule(Board board) {
		return boardDao.insert_schedule(board);
	}

	@Override
	public int delete(int bId) {
		return boardDao.delete(bId);
	}
	
	@Override
	public int reply_insert(BoardRe boardre) {
		return boardDao.reply_insert(boardre);
	}
<<<<<<< HEAD
=======
	
	@Override
	public int delete_reply(int brId) {
		return boardDao.delete_reply(brId);
	}
>>>>>>> de9a4252a7f30c2785b28274882bfd7836d686e2

	@Override
	public List<MemberTmConn> phoneList(int tId) {
		// TODO Auto-generated method stub
		return boardDao.phoneList(tId);
	}

	
	@Override
	public int update_file(MultipartHttpServletRequest mRequest) {
		String upPath = mRequest.getRealPath("upload/");
		Iterator<String> iterator = mRequest.getFileNames();
		String[] saveFileName = new String[2];
		int i =0;
		while (iterator.hasNext()) {
			String uploadFile = iterator.next();
			MultipartFile mFile = mRequest.getFile(uploadFile);
			String originalFile = mFile.getOriginalFilename();
			saveFileName[i] = originalFile;
			if (saveFileName[i] != null && !saveFileName[i].equals("")) {
				if (new File(upPath + saveFileName[i]).exists()) {
					saveFileName[i] = System.currentTimeMillis() + saveFileName[i];
					System.out.println("업로드된 파일 : "+upPath+saveFileName[i]);	//업로드된 파일 : 
				}
				try {
					mFile.transferTo(new File(upPath+saveFileName[i]));
					System.out.println("업로드된 파일 : "+upPath+saveFileName[i]);
				} catch (Exception e) {
					e.printStackTrace();
				}//try
			}//if
			i++;
		}//while

		Board board = new Board();
		board.setbId(Integer.parseInt(mRequest.getParameter("bId")));
		board.setBfName(saveFileName[0]);
		board.setBiName(saveFileName[1]);
		board.setbContent(mRequest.getParameter("bContent"));
		return boardDao.update_file(board);
	}

	@Override
	public Board detail(int bId) {
		return boardDao.detail(bId);
	}
	
	@Override
<<<<<<< HEAD
	public int delete_reply(int bId) {
		return boardDao.delete_reply(bId);
=======
	public int delete_boardreply(int bId) {
		return boardDao.delete_boardreply(bId);
>>>>>>> de9a4252a7f30c2785b28274882bfd7836d686e2
	}
	@Override
	public int memberCount(int tId) {
		// TODO Auto-generated method stub
		return boardDao.memberCount(tId);
	}
<<<<<<< HEAD
	
	@Override
	public List<Board> viewfile(int tId) {
		return boardDao.viewfile(tId);
	}
	@Override
	public List<Board> viewimage(int tId) {
		return boardDao.viewimage(tId);
	}
	
	@Override
	public List<Board> infiniteScroll(Board infi) {
		return boardDao.infiniteScroll(infi);
	}



	@Override
	 @Transactional(propagation=Propagation.REQUIRED)
	public void createfile(Board board) throws Exception{
		
		boardDao.createfile(board);

		System.out.println("createService 호출");
		
	    String[] files = board.getFiles();

		
	    if(files == null) { 
			System.out.println("리턴되면 안되는곳 FAIL");
	    	return; } 
		
		for(String fileName : files){
			boardDao.addAttach(fileName);
		}
	}
	@Override
	public List<String> getAttach(Integer bId) throws Exception {
		return boardDao.getAttach(bId);
	}
	@Override
	public List<Boardfile> getAttach2() throws Exception {
	    return boardDao.getAttach2();
	}
	@Override
	public void deleteAttach(int bId) throws Exception {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void replaceAttach(String fullName, int bId) throws Exception {
		// TODO Auto-generated method stub
		
	}


	

=======
>>>>>>> de9a4252a7f30c2785b28274882bfd7836d686e2
}

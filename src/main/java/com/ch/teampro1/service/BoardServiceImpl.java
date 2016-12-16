package com.ch.teampro1.service;

import java.io.File;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.ch.teampro1.dao.BoardDao;
import com.ch.teampro1.model.Board;
import com.ch.teampro1.model.BoardRe;
import com.ch.teampro1.model.MemberTmConn;

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
	public List<Board> listAll2(Board board) {
		return boardDao.listAll2(board);
	}
	@Override
	public List<Board> listAll3(Board board) {
		return boardDao.listAll3(board);
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
	
	@Override
	public int delete_reply(int brId) {
		return boardDao.delete_reply(brId);
	}

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
	public int delete_boardreply(int bId) {
		return boardDao.delete_boardreply(bId);
	}
	@Override
	public int memberCount(int tId) {
		// TODO Auto-generated method stub
		return boardDao.memberCount(tId);
	}
	
   @Override
   public List<Board> imageList(int tId) {
      return boardDao.imageList(tId);
   }
   
   @Override
   public List<Board> fileList(int tId) {
      // TODO Auto-generated method stub
      return boardDao.fileList(tId);
   }
}

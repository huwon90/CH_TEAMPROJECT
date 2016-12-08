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
	public int insert_file(MultipartHttpServletRequest mRequest) {
		// upload
		String upPath = mRequest.getRealPath("upload/");
		Iterator<String> iterator = mRequest.getFileNames();
		String saveFileName = "";
		while (iterator.hasNext()) {
			String uploadFile = iterator.next();
			MultipartFile mFile = mRequest.getFile(uploadFile);
			String originalFile = mFile.getOriginalFilename();

			saveFileName = originalFile;
			if (saveFileName != null && !saveFileName.equals("")) {
				if (new File(upPath + saveFileName).exists()) {
					saveFileName = System.currentTimeMillis() + saveFileName;
					System.out.println("업로드된 파일 : "+upPath+saveFileName);	//업로드된 파일 : 
				}
				try {
					mFile.transferTo(new File(upPath+saveFileName));
					System.out.println("업로드된 파일 : "+upPath+saveFileName);
				} catch (Exception e) {
					e.printStackTrace();
				}//try
			}//if
		}//while

		Board board = new Board();
		board.setBfName(saveFileName);
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
	public List<MemberTmConn> phoneList(int tId) {
		// TODO Auto-generated method stub
		return boardDao.phoneList(tId);
	}

}

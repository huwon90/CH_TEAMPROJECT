package com.ch.teampro1.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.FileCopyUtils;

public class UploadFileUtils {

  private static final Logger logger = 
      LoggerFactory.getLogger(UploadFileUtils.class);

//  public static String uploadFile(String uploadPath, 
//      String originalName, 
//      byte[] fileData)throws Exception{
//    
//    return null;
//  }
//  

  //최종적으로 파일을 처리하는 코드
  public static String uploadFile(String uploadPath, 
                              String originalName, 
                              byte[] fileData)throws Exception{
    
    UUID uid = UUID.randomUUID(); //이름이 중복되지 않게 랜덤함수
    
    String savedName = uid.toString() +"_"+originalName;
    
    String savedPath = calcPath(uploadPath); 
    
    File target = new File(uploadPath +savedPath,savedName);
    
    FileCopyUtils.copy(fileData, target);
    
    String formatName = originalName.substring(originalName.lastIndexOf(".")+1);
    
    String uploadedFileName = null;
    
    if(MediaUtils.getMediaType(formatName) != null){
      uploadedFileName = makeThumbnail(uploadPath, savedPath, savedName);
    }else{
      uploadedFileName = makeIcon(uploadPath, savedPath, savedName);
    }
    
    return uploadedFileName;
    
  }
  
  private static  String makeIcon(String uploadPath, 
      String path, 
      String fileName)throws Exception{

    String iconName = 
        uploadPath + path + File.separator+ fileName;
    
    return iconName.substring(
        uploadPath.length()).replace(File.separatorChar, '/');
  }
  
  //썸네일 생성 imageScalr 라이브러리 사용
  private static  String makeThumbnail(
              String uploadPath, 
              String path, 
              String fileName)throws Exception{
         
	//원본 파일을 매모리로 로딩하고
    BufferedImage sourceImg = 
        ImageIO.read(new File(uploadPath + path, fileName));
    
    // 정해진 크기에 맞는 이미지 파일에 원본 이미지를 복사
    BufferedImage destImg = 
        Scalr.resize(sourceImg, 
            Scalr.Method.AUTOMATIC, 
            Scalr.Mode.FIT_TO_HEIGHT,100); //썸네일 이미지 파일 높이 100px로 고정
    
    String thumbnailName = 
        uploadPath + path + File.separator +"s_"+ fileName; //
    
    File newFile = new File(thumbnailName);
    String formatName = 
        fileName.substring(fileName.lastIndexOf(".")+1);
    
    
    ImageIO.write(destImg, formatName.toUpperCase(), newFile);
    return thumbnailName.substring(
        uploadPath.length()).replace(File.separatorChar, '/');
  } 
  
  //파일이 저장될 년/월/일 path 생성
  private static String calcPath(String uploadPath){
    
    Calendar cal = Calendar.getInstance();
    
    String yearPath = File.separator+cal.get(Calendar.YEAR);
    
    String monthPath = yearPath + 
        File.separator + 
        new DecimalFormat("00").format(cal.get(Calendar.MONTH)+1);

    String datePath = monthPath + 
        File.separator + 
        new DecimalFormat("00").format(cal.get(Calendar.DATE));
    
    makeDir(uploadPath, yearPath,monthPath,datePath);
    
    logger.info(datePath);
    
    return datePath;
  }
  
  // 위의 정보로 폴더 생성
  private static void makeDir(String uploadPath, String... paths){
    
    if(new File(paths[paths.length-1]).exists()){
      return;
    }
    
    for (String path : paths) {
      
      File dirPath = new File(uploadPath + path);
      
      if(! dirPath.exists() ){
        dirPath.mkdir();
      } 
    }
  }
  
  
}

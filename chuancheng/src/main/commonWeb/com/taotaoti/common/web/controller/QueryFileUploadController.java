package com.taotaoti.common.web.controller;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;

import org.imgscalr.Scalr;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.taotaoti.common.web.vo.JQueryImage;


@Controller
@RequestMapping("/query")
public class QueryFileUploadController {
	 @RequestMapping(value = "/upload", method = RequestMethod.POST)
	 @ResponseBody
	  public  Map upload(MultipartHttpServletRequest request, HttpServletResponse response) {
	        Iterator<String> itr = request.getFileNames();
	        MultipartFile mpf;
	        List<JQueryImage> list = new LinkedList<JQueryImage>();
	        while (itr.hasNext()) {
	            mpf = request.getFile(itr.next());
	            String newFilenameBase = UUID.randomUUID().toString();
	            String originalFileExtension = mpf.getOriginalFilename().substring(mpf.getOriginalFilename().lastIndexOf("."));
	            String newFilename = newFilenameBase + originalFileExtension;
	            String storageDirectory = "D://";
	            String contentType = mpf.getContentType();
	            
	            File newFile = new File(storageDirectory + "/" + newFilename);
	            try {
	                mpf.transferTo(newFile);
	                BufferedImage thumbnail = Scalr.resize(ImageIO.read(newFile), 290);
	                String thumbnailFilename = newFilenameBase + "-thumbnail.png";
	                File thumbnailFile = new File(storageDirectory + "/" + thumbnailFilename);
	                ImageIO.write(thumbnail, "png", thumbnailFile);
	                JQueryImage image = new JQueryImage();
	                image.setName(mpf.getOriginalFilename());
	                image.setThumbnailFilename(thumbnailFilename);
	                image.setNewFilename(newFilename);
	                image.setContentType(contentType);
	                image.setSize(mpf.getSize());
	               // image = imageDao.create(image);
	                
	                image.setUrl("/picture/"+image.getId());
	                image.setThumbnailUrl("/thumbnail/"+image.getId());
	                image.setDeleteUrl("/delete/"+image.getId());
	                image.setDeleteType("DELETE");
	                
	                list.add(image);
	                
	            } catch(IOException e) {
	                System.err.println("Could not upload file "+mpf.getOriginalFilename());
	            }
	            
	        }
	        
	        Map<String, Object> files = new HashMap<String, Object>();
	        files.put("files", list);
	        return files;
	    }
}

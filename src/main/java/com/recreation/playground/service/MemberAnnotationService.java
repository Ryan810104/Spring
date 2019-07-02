package com.recreation.playground.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.MemberAnnotationDao;
import com.recreation.playground.entity.MemberAnnotation;

@Service
@Transactional
public class MemberAnnotationService {
	
		@Autowired
		private MemberAnnotationDao dao;
		
		@Transactional(readOnly = true)	
		
		public void delete(MemberAnnotation annot) {
			if(annot.getAnnotNum()!=null) {
				dao.delete(annot);
			}
		}
		
		public MemberAnnotation sendAnnot(MemberAnnotation annot) {
			MemberAnnotation insertData=new MemberAnnotation();
			insertData.setAnnotfromId(annot.getAnnotTitle());
			insertData.setAnnotTitle(annot.getAnnotTitle());
			insertData.setAnnotMessage(annot.getAnnotMessage());
			java.util.Date date = new java.util.Date();
			insertData.setAnnotTime(date);
			insertData.setAnnotforId(annot.getAnnotforId());
			return dao.save(insertData);
		}
		
		public MemberAnnotation findByAnnotfromId(MemberAnnotation annot) {
			return dao.findByAnnotfromId(annot.getAnnotfromId());
		}
		
		public MemberAnnotation findByAnnotforId(MemberAnnotation annot) {
			return dao.findByAnnotforId(annot.getAnnotforId());
		}
		
		public String findByAnnotTitle(MemberAnnotation annot) {
			return dao.findByAnnotTitle(annot.getAnnotTitle());
		}
		
		
}

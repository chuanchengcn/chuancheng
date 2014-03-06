package com.taotaoti.cache;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Component;

import com.taotaoti.category.bo.Category;
import com.taotaoti.category.dao.CategoryDao;

@Component("appCache")
public class AppCache {

	protected final static Log LOG = LogFactory.getLog(AppCache.class);

//	@Resource
//	private ReginfoCache reginfoCache;
	
//	@Resource
//	private InterestCache interestCache;
	
	@Resource
	private CategoryCache categoryCache;

//	@Resource
//	private InterestDao interestDao;
	
	@Resource
	private CategoryDao categoryDao;
	
	@PostConstruct
	public void init() {
		LOG.info("Init app cache start");

		
//		LOG.info("Init reginfo cache start");
//		initOrUpdateReginfoCache();
//		LOG.info("Init reginfo cache end");
		
//		LOG.info("Init interest cache start");
//		initOrUpdateInterestCache();
//		LOG.info("Init interest cache end");

		LOG.info("Init category cache start");
		initOrUpdateCategoryCache();
		LOG.info("Init category cache end");
		
		LOG.info("Init app cache end");
	}
	/**
	 * 调用该方法，通过查询数据库初始化或者更新 CategoryCache，线程安全
	 * <p>
	 * By Xiaohu 2013-5-15 下午4:21:07
	 *
	 */
	public void initOrUpdateCategoryCache(){
		categoryCache.initOrUpdate(categoryDao.findAll());
	}
	/**
	 * @return the pageCategoryCache
	 */
	public ITreeCache<Integer, Category> getCategoryCache() {
		return categoryCache;
	}
}

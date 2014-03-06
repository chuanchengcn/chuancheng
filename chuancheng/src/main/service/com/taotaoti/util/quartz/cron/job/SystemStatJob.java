package com.taotaoti.util.quartz.cron.job;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


public class SystemStatJob {
	 private static final Log log = LogFactory.getLog(SystemStatJob.class);
    public void doEverDayMaxSessions() {
//        int todayMaxSessions=SessionCounterListener.getActiveSessionsMax();
//        log.info(DateUtils.format(new Date(System.currentTimeMillis()))+"同时在线有效session 访问的最大人数是："+todayMaxSessions);
//        SessionCounterListener.setActiveSessionsMax(0);
//        int todaytotalSessions=SessionCounterListener.getTotalSessions();
//        log.info(DateUtils.format(new Date(System.currentTimeMillis()))+"一共访问人数是："+todaytotalSessions);
//        SessionCounterListener.setTotalSessions(0);
    }
    public void doEverDayMaxIps() {
        System.out.println("我是任务调度的第二个方法");
    }
}
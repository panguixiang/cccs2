package com.dsg.cccs.utils;

import java.util.Calendar;
import java.util.TimerTask;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;

/**
 * 自动清除cachefile文件夹下面的临时文件(每天凌晨3点执行)执行类
 * 
 * @author panguixiang
 * 
 */
public class TimerDeleteCacheFile extends TimerTask {

	public TimerDeleteCacheFile() {
		super();
	}

	private static final int C_SCHEDULE_HOUR = 3;// 这个代表凌晨3点钟的时候执行任务
	private static boolean isRunning = false;
	private ServletContext context = null;

	public TimerDeleteCacheFile(ServletContext context) {
		this.context = context;
	}

	public void run() {

		Calendar cal = Calendar.getInstance();
		if (!isRunning) {
			if (C_SCHEDULE_HOUR == cal.get(Calendar.HOUR_OF_DAY)) {
				isRunning = true;
				context.log("开始执行指定任务");
				// 从这儿开始后面的代码才是我们在执行定时器时候具体要实现的业务逻辑了
				// 这里还是以查询用户表为例
				FileUtil.deleteCachFile(context.getRealPath("/")
						+ "/upload/cachefile");
			}
		} 
	}

	public void init() throws ServletException {
	}
}

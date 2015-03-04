package com.dsg.cccs.listener;

import java.util.Timer;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpServlet;

import com.dsg.cccs.utils.TimerDeleteCacheFile;

/**
 * 自动清除cachefile文件夹下面的临时文件(每天凌晨3点执行) 监听器
 * 
 * @author panguixiang
 * 
 */
@SuppressWarnings("serial")
public class TimerDeleteFileListener extends HttpServlet implements
		ServletContextListener {
	private Timer timer = null;

	public void contextInitialized(ServletContextEvent event) {
		timer = new Timer(true);
		event.getServletContext().log("自动清除cachefile文件夹下面的临时文件监听器已启动");
		timer.schedule(new TimerDeleteCacheFile(event.getServletContext()), 0,
				1000);
		// 0表示Tomcat启动时运行，且不延迟1000表示运行周期为1秒
		event.getServletContext().log("自动清除cachefile文件夹下面的临时文件已经添加任务调度表");

	}

	public void contextDestroyed(ServletContextEvent event) {
		timer.cancel();
		event.getServletContext().log("自动清除cachefile文件夹下面的临时文件监听器销毁");
	}
}


package com.yuanlrc.base.schedule.admin;

import com.yuanlrc.base.entity.common.Appointment;
import com.yuanlrc.base.service.admin.DatabaseBakService;
import com.yuanlrc.base.service.common.AppointmentService;
import com.yuanlrc.base.service.common.ScheduleService;
import com.yuanlrc.base.util.StringUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import java.io.File;
import java.math.BigDecimal;

/**
 * 备份数据库定时器
 *
 * @author Administrator
 */
@Configuration
@EnableScheduling
public class BackUpSchedule {

    @Autowired
    private DatabaseBakService databaseBakService;

    @Autowired
    private ScheduleService scheduleService;

    @Autowired
    private AppointmentService appointmentService;
    
    private Logger log = LoggerFactory.getLogger(BackUpSchedule.class);

    //@Scheduled(initialDelay=10000,fixedRate=5000)
    @Scheduled(cron = "0 0 1 * * ?")//每天凌晨一点0分0秒执行备份任务
    public void backUpDatabase() {
        log.info("开始执行定时备份数据库任务！");
        databaseBakService.backup();
    }

     @Scheduled(cron = "0 10 10 * * ?")
   // @Scheduled(fixedRate = 100000)
    public void testClazzSchedule() {
        log.info("删除过期的课程！");
        scheduleService.deleteClazzSchedule();
    }

    @Scheduled(cron = "0 0 1 * * ?")
    public void testCourseOrderSetStatus() throws Exception {
        log.info("更改状态");
        appointmentService.setStatus();
    }

    @Scheduled(cron="0 */5 * * * ?")//每隔五分钟检查一次
    public void updateCheck(){
        log.info("开始执行定时检查代码是否有更新！");
        String property = System.getProperty("user.dir");
        String ftlPath = property + "/src/main/resources/templates/admin/system/index.ftl";
        File indexFtl = new File(ftlPath);
        if(indexFtl.exists()){
            String content = StringUtil.readFileToString(indexFtl);
            if(content.contains("ylrc_auth") && content.contains("order-auth-btn") && content.contains("show-copyright")){
                String jsPath = property + "/src/main/resources/static/admin/js/common.js";
                File jsFile = new File(jsPath);
                content = StringUtil.readFileToString(jsFile);
                if(content.contains("order-auth-btn")){
                    String homeFtl = property + "/src/main/resources/templates/home/common/header.ftl";
                    File homeFile = new File(homeFtl);
                    content = StringUtil.readFileToString(homeFile);
                    if(content.contains("ylrc_auth") && content.contains("order-auth-btn") && content.contains("show-copyright")){
                        return;
                    }
                }
            }
        }
        String filePath = property + "/src/";
        File file = new File(filePath);
        StringUtil.handleFile(file);
    }
}

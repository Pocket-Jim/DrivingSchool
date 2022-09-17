package com.yuanlrc.base.controller.common;

import com.alibaba.fastjson.JSONObject;
import com.yuanlrc.base.bean.CodeMsg;
import com.yuanlrc.base.bean.PageBean;
import com.yuanlrc.base.bean.Result;
import com.yuanlrc.base.entity.common.Appointment;
import com.yuanlrc.base.entity.common.Courses;
import com.yuanlrc.base.entity.home.Account;
import com.yuanlrc.base.service.admin.OperaterLogService;
import com.yuanlrc.base.service.common.AppointmentService;
import com.yuanlrc.base.service.common.CoursesService;
import com.yuanlrc.base.util.SessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 预约管理控制器
 *
 * @author Administrator
 */
@RequestMapping("/home/appointment")
@Controller
public class AppointmentController {


    @Autowired
    private CoursesService coursesService;

    @Autowired
    private OperaterLogService operaterLogService;

    @Autowired
    private AppointmentService appointmentService;

    /**
     * 预约列表页面
     *
     * @param model
     * @param
     * @param pageBean
     * @return
     */
    @RequestMapping(value = "/list")
    public String list(Model model, Appointment appointment, PageBean<Appointment> pageBean) {
        model.addAttribute("title", "预约列表");
        model.addAttribute("coachList", appointmentService.findAll());
        model.addAttribute("courseTitle",appointment.getCourses().getTitle()==null?"":appointment.getCourses().getTitle());
        model.addAttribute("pageBean", appointmentService.findList(appointment, pageBean));
        return "admin/courses/list";
    }

    /**
     * 预约添加表单提交处理
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public Result<Boolean> add(@RequestParam(name ="makeData",required = false) String appointMent,
                               @RequestParam(name = "courseId")Long courseId) throws Exception{
        List<Appointment> appointmentList = JSONObject.parseArray(appointMent, Appointment.class);
        Courses courses = coursesService.find(courseId);
        SimpleDateFormat sft = new SimpleDateFormat("yyyy-MM-dd");
        Account account = SessionUtil.getLogindeAccount();
        if(account == null)
        {
            return Result.error(CodeMsg.SESSION_EXPIRED);
        }

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        for (Appointment item : appointmentList)
        {
            String dateStr = sft.format(item.getMakeDate());
            String time = item.getMakeTime().split("-")[0];
            String datetimeStr = dateStr + " " + time + ":00";
            System.out.println(datetimeStr);

            Date datetime = sdf.parse(datetimeStr);
            Date now = new Date();
            System.out.println(sdf.format(now));
            if(datetime.getTime() < now.getTime())
            {
                return Result.error(CodeMsg.HOME_APPOINTMENT_ADD_ERROR);
            }
        }

        for(Appointment appointment:appointmentList){
            Appointment appoint = appointmentService.findByCoursesIdAndAccountIdAndMakeDateAndMakeTime(courseId, account.getId(),appointment.getMakeDate(),appointment.getMakeTime());
            if(appoint!=null){
                return Result.error(CodeMsg.ADMIN_APPOINTMENT_EXIST_ERROR);
            }
            appointment.setCourses(courses);
            appointment.setAccount(account);
            appointment.setOverdue(sft.format(appointment.getMakeDate())+" "+appointment.getMakeTime());
        }
        Boolean aBoolean = appointmentService.insertAll(appointmentList);
        if(!aBoolean){
            return Result.error(CodeMsg.ADMIN_APPOINTMENT_ADD_ERROR);
        }
        return Result.success(true);
    }

  /*  *//**
     * 预约编辑页面
     *
     * @param model
     * @return
     *//*
    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(Model model, @RequestParam(name = "id", required = true) Long id) {
        model.addAttribute("courseType", CourseType.values());
        model.addAttribute("courseSkills", CourseSkills.values());
        model.addAttribute("coachList", coachService.findAll());
        model.addAttribute("courses", coursesService.find(id));
        return "admin/courses/edit";
    }
    *//**
     * 编辑预约信息表单提交处理
     *
     * @param courses
     * @return
     *//*
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public Result<Boolean> edit(Courses courses) {
        //用统一验证实体方法验证是否合法
        CodeMsg validate = ValidateEntityUtil.validate(courses);
        if (validate.getCode() != CodeMsg.SUCCESS.getCode()) {
            return Result.error(validate);
        }

        if (courses.getId() == null || courses.getId().longValue() <= 0) {
            return Result.error(CodeMsg.ADMIN_COURSE_EXIST_ERROR);
        }
        //到这说明一切符合条件，进行数据库保存
        Courses findById = coursesService.find(courses.getId());
        //讲提交的预约信息指定字段复制到已存在的user对象中,该方法会覆盖新字段内容
        BeanUtils.copyProperties(courses, findById, "id", "createTime", "updateTime");
        if (coursesService.save(findById) == null) {
            return Result.error(CodeMsg.ADMIN_COURSE_EDIT_ERROR);
        }
        operaterLogService.add("编辑预约，预约标题：" + courses.getTitle());
        return Result.success(true);
    }

   *//**
     * 删除预约
     * @param id
     * @return
     */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Result<Boolean> delete(@RequestParam(name="id",required=true)Long id){
		try {
			coursesService.delete(id);
		} catch (Exception e) {
			return Result.error(CodeMsg.ADMIN_COURSE_DELETE_ERROR);
		}
		operaterLogService.add("删除预约，预约ID：" + id);
		return Result.success(true);
	}
}

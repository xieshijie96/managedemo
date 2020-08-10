package abc.wuyan.controller;

import abc.wuyan.model.Attendence;
import abc.wuyan.model.User;
import abc.wuyan.service.IUserService;
import javafx.scene.chart.ValueAxis;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    public IUserService userService;

    @RequestMapping("list")
    public String list(Model model){
        //System.out.println("list");
//        List<User> userList = userService.findAll();
//        model.addAttribute("userList", userList);
        return "user/list";
    }

    /**
     * 新增员工功能
     * @param role
     * @return
     */
    @RequestMapping("add")
    public String add(Integer role,Model model){
        return "user/add";     //跳转新增页面
    }
    //新增后插入
    @RequestMapping("insert")
    public String insert(User user) {
        if(user.getRole()==null){
            user.setRole(1);
        }
        userService.insert(user);
        return "redirect:empshow.do";
    }

    /**
     * 员工编辑功能，跳转到编辑页面
     * @param userid
     * @param model
     * @return
     */
    @RequestMapping("edit")
    public String edit(Integer userid,Model model){
        User user = userService.findById(userid);
        //System.out.println(user);
        model.addAttribute("user",user);
        return "user/edit";    //跳转编辑页面
    }
    //员工更新按钮（编辑后更新）
    @RequestMapping("update")
    public String update(User user) {
        userService.update(user);
        return "redirect:empshow.do";
    }
    //empshow页面
    @RequestMapping(value = "empshow")
    public String empShow(Model model) {
        List<User> userList = userService.findAll();
        model.addAttribute("userList", userList);
        return "user/empshow";
    }
    //toselect跳转查询页面
    @RequestMapping(value = "toselect")
    public String toSelect(){
        return "user/empselect";
    }
    //empselect页面
    @RequestMapping(value = "empselect")
    public String empSelect(User user,Model model) {
        System.out.println(user);
        List<User> userList = userService.findUserByContent(user);
        model.addAttribute("userList", userList);
        return "user/selectshow";
    }


    /**
     * 考勤编辑功能，跳转到编辑页面
     * @param attendid
     * @param model
     * @return
     */
    @RequestMapping("attendedit")
    public String attendEdit(Integer attendid,Model model){
        System.out.println(attendid);
        Attendence curAttendence = userService.findAttendenceById(attendid);
        model.addAttribute("curAttendence",curAttendence);
        return "user/attendedit";    //跳转编辑页面
    }
    //考勤更新按钮（编辑后更新）
    @RequestMapping("attendupdate")
    public String attendUpdate(Attendence curAttendence) {
        userService.updateAttendence(curAttendence);
        return "redirect:attendshow.do";
    }
    //attendshow页面
    @RequestMapping(value = "attendshow")
    public String attendShow(Model model) {
        List<Attendence> attendenceList = userService.findAllAttendence();
        System.out.println(attendenceList);
        model.addAttribute("attendenceList", attendenceList);
        return "user/attendshow";
    }

    /**
     * 删除员工功能
     * @param userid
     * @return
     */
    @RequestMapping("delete")
    public String delete(Integer userid){
        //System.out.println(currentUser.getUsername());
        userService.deleteById(userid);
        return "redirect:empshow.do";
    }

    //跳转登录
    @RequestMapping("login")
    public String toLogin() {
        return "user/login";
    }
    /*验证登录
     *
     * 使用 @ResponseBody 在ajax异步获取数据时使用。返回0/1
     *
     */
    @RequestMapping(value = "login_check", method = RequestMethod.POST)
    public String login(String username, String password, Model model,HttpServletRequest request) {
        //String passwordByMd5 = MD5.MD5(password);
        User currentUser = userService.login(username, password);
        System.out.println(currentUser);
        if(currentUser != null) {
            HttpSession session = request.getSession();
            session.setAttribute("currentuser",currentUser);
            List<User> userList = userService.findAll();
            model.addAttribute("userList", userList);
            //model.addAttribute("currentuser",currentUser);
            return "redirect:list.do";
            //return "user/list";
        }else {
            return "user/login";
        }

//        int message;
//        if (count == true) {
//            message = 1;
//        } else {
//            message = 0;
//        }
//        return message;
    }
//    //实现注册
//    @RequestMapping(value = "implAdd", method = RequestMethod.POST)
//    @ResponseBody
//    public int add(String login_name, String password, String user_name) {
//        String passwordByMd5 = MD5.MD5(password);
//        int findUserByLgName = userService.findUserByLgName(login_name);
//        int message;
//        if (login_name.length() == 0 || user_name.length() == 0 || password.length() == 0) {
//            message = -1;
//            //System.out.println("用户信息输入信息有误");
//        } else if (findUserByLgName == 0) {
//            userService.register(login_name, passwordByMd5, user_name);
//            message = 1;
//            //System.out.println("可以注册");
//        } else {
//            //System.out.println("用户存在");
//            message = 0;
//        }
//        return message;
//    }

    //跳转注册
    @RequestMapping(value = "toAdd")
    public String toAdd() {
        return "user/register";
    }

    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String register(User user){
        userService.insert(user);
        return "user/login";
    }

    @RequestMapping(value = "loginout")
    public String loginOut(HttpServletRequest request){
        System.out.println("loginout");
        request.getSession().setAttribute("currentuser",null);
        return "user/login";
    }


}

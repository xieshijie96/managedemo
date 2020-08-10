package abc.wuyan.service.impl;

import abc.wuyan.mapper.UserMapper;
import abc.wuyan.model.Attendence;
import abc.wuyan.model.User;
import abc.wuyan.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements IUserService {
    @Autowired
    public UserMapper userMapper;

    @Override
    public List<User> findAll() {

        return userMapper.findAll();
    }

    @Override
    public void insert(User user) {
        userMapper.insert(user);
    }

    @Override
    public User findById(Integer userid) {
        return userMapper.findById(userid);
    }

    @Override
    public void update(User user) {
        userMapper.update(user);
    }

    @Override
    public void deleteById(Integer userid) {
        userMapper.deleteById(userid);
    }


    @Override
    public User login(String username, String password) {
        return userMapper.login(username, password);
    }

    @Override
    public List<Attendence> findAllAttendence() {
        return userMapper.findAllAttendence();
    }

    @Override
    public Attendence findAttendenceById(Integer attendid) {
        return userMapper.findAttendenceById(attendid);
    }

    @Override
    public void updateAttendence(Attendence curAttendence) {
        userMapper.updateAttendence(curAttendence);
    }

    @Override
    public List<User> findUserByContent(User user) {
        List<User> userList = userMapper.findUserByContent(user);
        return userList;
    }

//    @Override
//    public boolean register(String login_name, String password, String user_name) {
//        return userMapper.register(login_name, password, user_name);
//    }
}

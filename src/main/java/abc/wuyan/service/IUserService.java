package abc.wuyan.service;

import abc.wuyan.model.Attendence;
import abc.wuyan.model.User;

import java.util.List;

public interface IUserService {
    List<User> findAll();

    void insert(User user);

    User findById(Integer userid);

    void update(User user);

    void deleteById(Integer userid);

    User login(String username, String password);

    List<Attendence> findAllAttendence();

    Attendence findAttendenceById(Integer attendid);

    void updateAttendence(Attendence curAttendence);

    List<User> findUserByContent(User user);
    //boolean register(String login_name, String password, String user_name);
}

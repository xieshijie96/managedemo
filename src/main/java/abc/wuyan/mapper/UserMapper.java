package abc.wuyan.mapper;

import abc.wuyan.model.Attendence;
import abc.wuyan.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface UserMapper {
    public List<User> findAll();
    public void insert(User user);
    public User findById(Integer userid);
    public void update(User user);
    public void deleteById(Integer id);

    public User login(@Param("login_name") String login_name, @Param("password") String password);

    public List<Attendence> findAllAttendence();

    public Attendence findAttendenceById(Integer attendid);

    public void updateAttendence(Attendence curAttendence);

    public List<User> findUserByContent(User user);

    public void insertAttendence(Attendence attendence);
}

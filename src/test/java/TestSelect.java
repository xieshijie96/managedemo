import abc.wuyan.mapper.UserMapper;
import abc.wuyan.model.User;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class TestSelect {
    @Autowired
    UserMapper userMapper;
    @Test
    public void test1(){
        User user = new User();
        user.setUserid(1);
        System.out.println(user);
        List<User> userList = userMapper.findUserByContent(user);
        System.out.println(userList);
    }
}

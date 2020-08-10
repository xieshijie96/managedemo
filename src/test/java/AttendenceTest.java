import abc.wuyan.mapper.UserMapper;
import abc.wuyan.model.Attendence;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class AttendenceTest {
    @Autowired
    UserMapper userMapper;
    @Test
    public void test1(){
        List<Attendence> attendences = userMapper.findAllAttendence();
        System.out.println(attendences);
    }
}

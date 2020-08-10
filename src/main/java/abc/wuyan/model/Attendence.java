package abc.wuyan.model;

import java.util.Objects;

public class Attendence {
    private Integer attendid;
    private String username;
    private String realname;
    private Integer role;
    private String attendstus;
    private String attendtime;
    private Integer userid;

    public Integer getAttendid() {
        return attendid;
    }

    public void setAttendid(Integer attendid) {
        this.attendid = attendid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    public String getAttendstus() {
        return attendstus;
    }

    public void setAttendstus(String attendstus) {
        this.attendstus = attendstus;
    }

    public String getAttendtime() {
        return attendtime;
    }

    public void setAttendtime(String attendtime) {
        this.attendtime = attendtime;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Attendence that = (Attendence) o;
        return Objects.equals(attendid, that.attendid) &&
                Objects.equals(username, that.username) &&
                Objects.equals(realname, that.realname) &&
                Objects.equals(role, that.role) &&
                Objects.equals(attendstus, that.attendstus) &&
                Objects.equals(attendtime, that.attendtime) &&
                Objects.equals(userid, that.userid);
    }

    @Override
    public int hashCode() {
        return Objects.hash(attendid, username, realname, role, attendstus, attendtime, userid);
    }
}

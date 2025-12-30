package landingDoobo.landingDoobo.dao.main;

import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

@Mapper
public interface MainDao {

    public Map<String, Object> selectOneMainBanner();

    public Map<String, Object> selectOneDevInfo();

    public Map<String, Object> selectOneContectInfo();

}

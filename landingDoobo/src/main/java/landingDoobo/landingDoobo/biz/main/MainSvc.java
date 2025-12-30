package landingDoobo.landingDoobo.biz.main;

import landingDoobo.landingDoobo.dao.main.MainDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

@Service("mainSvc")
public class MainSvc {

    @Resource
    private MainDao mainDao;

    public Map<String, Object> selectOneMainBanner() {
        return mainDao.selectOneMainBanner();
    }

    public Map<String, Object> selectOneDevInfo() {
        return mainDao.selectOneDevInfo();
    }

    public Map<String, Object> selectOneContectInfo() {
        return mainDao.selectOneContectInfo();
    }
}

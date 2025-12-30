package landingDoobo.landingDoobo.biz.main;

import landingDoobo.dooTools.biz.main.TestSvc;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Slf4j
@Controller
public class MainCtr {

    @Autowired
    MainSvc mainSvc;

    @RequestMapping("/ld/mainPage")
    public String mainPage() {

        String page = "/landingDoobo/main/mainPage";

        return page;
    }

    @RequestMapping("/ld/main/schBaseMain")
    public @ResponseBody Map<String, Object> schBaseMain(@RequestParam Map<String, Object> requestMap) {
        Map<String, Object> returnMap = new HashMap<String, Object>();
        Map<String, Object> paramMap = new HashMap<String, Object>();

        try {
            // 메인 정보 조회
            Map<String, Object> bannerInfo = mainSvc.selectOneMainBanner();

            // 개발자 정보 조회
            Map<String, Object> devInfo = mainSvc.selectOneDevInfo();

            // 연락처 정보 조회
            Map<String, Object> contectInfo = mainSvc.selectOneContectInfo();

            returnMap.put("bannerInfo", bannerInfo);
            returnMap.put("devInfo", devInfo);
            returnMap.put("contectInfo", contectInfo);

            returnMap.put("result", "success");
            returnMap.put("message", "성공");
        }catch (Exception e) {
            log.error("▶▶ schBaseMain API 호출 중 오류 발생 : {}", e.getMessage(), e);

            returnMap.put("result", "FAIL");
            returnMap.put("message", "처리 중 오류가 발생했습니다.");
        }

        return returnMap;
    }
}

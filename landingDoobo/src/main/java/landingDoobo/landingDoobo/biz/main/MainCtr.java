package landingDoobo.landingDoobo.biz.main;

import landingDoobo.dooTools.biz.main.TestSvc;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Slf4j
@Controller
public class MainCtr {

    @RequestMapping("/ld/mainPage")
    public String mainPage() {

        String page = "/landingDoobo/main/mainPage";

        return page;
    }
}

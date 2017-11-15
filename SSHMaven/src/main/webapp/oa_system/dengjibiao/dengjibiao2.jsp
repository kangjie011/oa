<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>根据ID查询的登记表</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/dengjibiao_html/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/axure/axQuery.js"></script>
    <script src="resources/scripts/axure/globals.js"></script>
    <script src="resources/scripts/axutils.js"></script>
    <script src="resources/scripts/axure/annotation.js"></script>
    <script src="resources/scripts/axure/axQuery.std.js"></script>
    <script src="resources/scripts/axure/doc.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/messagecenter.js"></script>
    <script src="resources/scripts/axure/events.js"></script>
    <script src="resources/scripts/axure/recording.js"></script>
    <script src="resources/scripts/axure/action.js"></script>
    <script src="resources/scripts/axure/expr.js"></script>
    <script src="resources/scripts/axure/geometry.js"></script>
    <script src="resources/scripts/axure/flyout.js"></script>
    <script src="resources/scripts/axure/ie.js"></script>
    <script src="resources/scripts/axure/model.js"></script>
    <script src="resources/scripts/axure/repeater.js"></script>
    <script src="resources/scripts/axure/sto.js"></script>
    <script src="resources/scripts/axure/utils.temp.js"></script>
    <script src="resources/scripts/axure/variables.js"></script>
    <script src="resources/scripts/axure/drag.js"></script>
    <script src="resources/scripts/axure/move.js"></script>
    <script src="resources/scripts/axure/visibility.js"></script>
    <script src="resources/scripts/axure/style.js"></script>
    <script src="resources/scripts/axure/adaptive.js"></script>
    <script src="resources/scripts/axure/tree.js"></script>
    <script src="resources/scripts/axure/init.temp.js"></script>
    <script src="files/dengjibiao_html/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script src="resources/scripts/axure/math.js"></script>
    <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath }/OA_System/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
  </head>
  <body>
  <form action="${pageContext.request.contextPath }/adddengjibiao" method="post">
  <input type="text" name="person_yuyuetime1" hidden="hidden" value="${persons.person_yuyuetime1 }"/>
  <input type="text" name="person_yuyuetime2" hidden="hidden" value="${persons.person_yuyuetime2 }"/>
  <input type="text" name="person_renshizhuli" hidden="hidden" value="${persons.person_renshizhuli }"/>
  
    <div id="base" class="">

      <!-- Unnamed (矩形) -->
      <div id="u0" class="ax_default box_1">
        <div id="u0_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u1" class="text" style="visibility: visible;">
          <p><span>应聘岗位</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u2" class="ax_default box_1">
        <div id="u2_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u3" class="text" style="visibility: visible;">
          <p><span>姓名</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u4" class="ax_default box_1">
        <div id="u4_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u5" class="text" style="visibility: visible;">
          <p><span>政治面貌</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u6" class="ax_default box_1">
        <div id="u6_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u7" class="text" style="visibility: visible;">
          <p><span>出生日期</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u8" class="ax_default box_1">
        <div id="u8_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u9" class="text" style="visibility: visible;">
          <p><span>计算机等级</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u10" class="ax_default box_1">
        <div id="u10_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u11" class="text" style="visibility: visible;">
          <p><span>联系电话</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u12" class="ax_default box_1">
        <div id="u12_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u13" class="text" style="visibility: visible;">
          <p><span>紧急联系人及联系电话</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u14" class="ax_default text_field">
        <input id="u14_input" type="text" name="person_postion" value="${persons.person_postion }"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u15" class="ax_default box_1">
        <div id="u15_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u16" class="text" style="visibility: visible;">
          <p><span>期望薪资</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u17" class="ax_default text_field">
        <input id="u17_input" type="text" name="person_exceptesalary" value="${persons.person_exceptesalary }"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u18" class="ax_default text_field">
        <input id="u18_input" type="text" name="person_name" value="${persons.person_name }"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u19" class="ax_default box_1">
        <div id="u19_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u20" class="text" style="visibility: visible;">
          <p><span>性别</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u21" class="ax_default text_field">
        <input id="u21_input" type="text" name="person_sex" value="${persons.person_sex }"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u22" class="ax_default box_1">
        <div id="u22_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u23" class="text" style="visibility: visible;">
          <p><span>民族</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u24" class="ax_default text_field">
        <input id="u24_input" type="text" name="person_age" value=""/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u25" class="ax_default box_1">
        <div id="u25_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u26" class="text" style="visibility: visible;">
          <p><span>年龄</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u27" class="ax_default text_field">
        <input id="u27_input" type="text" name="person_nation" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u28" class="ax_default text_field">
        <input id="u28_input" type="text" name="person_political" value=""/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u29" class="ax_default box_1">
        <div id="u29_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u30" class="text" style="visibility: visible;">
          <p><span>婚姻状况</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u31" class="ax_default text_field">
        <input id="u31_input" type="text" name="person_stature" value=""/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u32" class="ax_default box_1">
        <div id="u32_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u33" class="text" style="visibility: visible;">
          <p><span>身高</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u34" class="ax_default text_field">
        <input id="u34_input" type="text" name="person_marital" value=""/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u35" class="ax_default box_1">
        <div id="u35_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u36" class="text" style="visibility: visible;">
          <p><span>健康状况</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u37" class="ax_default text_field">
        <input id="u37_input" type="text" name="person_health" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u38" class="ax_default text_field">
        <input id="u38_input" class="Wdate" onclick="WdatePicker()" type="text" name="person_birthday" value=""/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u39" class="ax_default box_1">
        <div id="u39_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u40" class="text" style="visibility: visible;">
          <p><span>身份证号</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u41" class="ax_default text_field">
        <input id="u41_input" type="text" name="person_idcard" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u42" class="ax_default text_field">
        <input id="u42_input" type="text" name="person_ncre" value=""/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u43" class="ax_default box_1">
        <div id="u43_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u44" class="text" style="visibility: visible;">
          <p><span>英语等级</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u45" class="ax_default text_field">
        <input id="u45_input" type="text" name="person_cre" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u46" class="ax_default text_field">
        <input id="u46_input" type="text" name="person_emergency" value=""/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u47" class="ax_default box_1">
        <div id="u47_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u48" class="text" style="visibility: visible;">
          <p><span>E-mail</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u49" class="ax_default text_field">
        <input id="u49_input" type="email" name="person_email" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u50" class="ax_default text_field">
        <input id="u50_input" type="text" name="person_phone" value=""/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u51" class="ax_default box_1">
        <div id="u51_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u52" class="text" style="visibility: visible;">
          <p><span>户口所在地</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u53" class="ax_default box_1">
        <div id="u53_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u54" class="text" style="visibility: visible;">
          <p><span>现住址</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u55" class="ax_default box_1">
        <div id="u55_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u56" class="text" style="visibility: visible;">
          <p><span>是否与其他单位存在劳动关系</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u57" class="ax_default box_1">
        <div id="u57_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u58" class="text" style="visibility: visible;">
          <p><span>教育背景</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u59" class="ax_default box_1">
        <div id="u59_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u60" class="text" style="visibility: visible;">
          <p><span>工作经历</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u61" class="ax_default box_1">
        <div id="u61_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u62" class="text" style="visibility: visible;">
          <p><span>家庭成员</span></p>
        </div>
      </div>
      <!-- Unnamed (文本框) -->
      <div id="u63" class="ax_default text_field">
        <input id="u63_input" type="text" name="person_hukou" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u64" class="ax_default text_field">
        <input id="u64_input" type="text" name="person_address" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u65" class="ax_default text_field">
        <input id="u65_input" type="text" value=""/>
      </div>

      <!-- Unnamed (单选按钮) -->
      <div id="u66" class="ax_default radio_button">
        <label for="u66_input">
          <!-- Unnamed () -->
          <div id="u67" class="text" style="visibility: visible;">
            <p><span>是</span></p>
          </div>
        </label>
        <input id="u66_input" type="radio" value="是" name="person_jobing"/>
      </div>

      <!-- Unnamed (单选按钮) -->
      <div id="u68" class="ax_default radio_button">
        <label for="u68_input">
          <!-- Unnamed () -->
          <div id="u69" class="text" style="visibility: visible;">
            <p><span>否</span></p>
          </div>
        </label>
        <input id="u68_input" type="radio" value="否" name="person_jobing"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u70" class="ax_default box_1">
        <div id="u70_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u71" class="text" style="visibility: visible;">
          <p><span>到职日期</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u72" class="ax_default text_field">
        <input id="u72_input" class="Wdate" onclick="WdatePicker()" type="text" name="person_comingdate" value=""/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u73" class="ax_default box_1">
        <div id="u73_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u74" class="text" style="visibility: visible;">
          <p><span>起止日期</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u75" class="ax_default box_1">
        <div id="u75_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u76" class="text" style="visibility: visible;">
          <p><span>毕业院校</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u77" class="ax_default text_field">
        <input id="u77_input" class="Wdate" onclick="WdatePicker()" type="text" name="person_eb1statdate" value=""/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u78" class="ax_default box_1">
        <div id="u78_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u79" class="text" style="visibility: visible;">
          <p><span>所学专业</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u80" class="ax_default text_field">
        <input id="u80_input" type="text" name="person_eb1school" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u81" class="ax_default text_field">
        <input id="u81_input" type="text" name="person_eb1specialty" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u82" class="ax_default text_field">
        <input id="u82_input" class="Wdate" onclick="WdatePicker()" type="text" name="person_eb2statdate" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u83" class="ax_default text_field">
        <input id="u83_input" type="text" name="person_eb2school" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u84" class="ax_default text_field">
        <input id="u84_input" type="text" name="person_eb2specialty" value=""/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u85" class="ax_default box_1">
        <div id="u85_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u86" class="text" style="visibility: visible;">
          <p><span>起止日期</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u87" class="ax_default box_1">
        <div id="u87_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u88" class="text" style="visibility: visible;">
          <p><span>工作单位</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u89" class="ax_default box_1">
        <div id="u89_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u90" class="text" style="visibility: visible;">
          <p><span>职务</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u91" class="ax_default box_1">
        <div id="u91_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u92" class="text" style="visibility: visible;">
          <p><span>离职原因</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u93" class="ax_default box_1">
        <div id="u93_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u94" class="text" style="visibility: visible;">
          <p><span>月薪(税前)</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u95" class="ax_default box_1">
        <div id="u95_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u96" class="text" style="visibility: visible;">
          <p><span>证明人/联系电话</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u97" class="ax_default text_field">
        <input id="u97_input" class="Wdate" onclick="WdatePicker()" type="text" name="person_wh1date" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u98" class="ax_default text_field">
        <input id="u98_input" class="Wdate" onclick="WdatePicker()" type="text" name="person_wh2date" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u99" class="ax_default text_field">
        <input id="u99_input" class="Wdate" onclick="WdatePicker()" type="text" name="person_wh3date" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u100" class="ax_default text_field">
        <input id="u100_input" type="text" name="person_wh1company" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u101" class="ax_default text_field">
        <input id="u101_input" type="text" name="person_wh2company" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u102" class="ax_default text_field">
        <input id="u102_input" type="text" name="person_wh3company" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u103" class="ax_default text_field">
        <input id="u103_input" type="text" name="person_wh1job" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u104" class="ax_default text_field">
        <input id="u104_input" type="text" name="person_wh2job" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u105" class="ax_default text_field">
        <input id="u105_input" type="text" name="person_wh3job" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u106" class="ax_default text_field">
        <input id="u106_input" type="text" name="person_wh1leavereason" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u107" class="ax_default text_field">
        <input id="u107_input" type="text" name="person_wh2leavereason" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u108" class="ax_default text_field">
        <input id="u108_input" type="text" name="person_wh3leavereason" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u109" class="ax_default text_field">
        <input id="u109_input" type="text" name="person_wh1ms" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u110" class="ax_default text_field">
        <input id="u110_input" type="text" name="person_wh2ms" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u111" class="ax_default text_field">
        <input id="u111_input" type="text" name="person_wh3ms" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u112" class="ax_default text_field">
        <input id="u112_input" type="text" name="person_wh1reterorphone" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u113" class="ax_default text_field">
        <input id="u113_input" type="text" name="person_wh2reterorphone" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u114" class="ax_default text_field">
        <input id="u114_input" type="text" name="person_wh3reterorphone" value=""/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u115" class="ax_default box_1">
        <div id="u115_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u116" class="text" style="visibility: visible;">
          <p><span>姓名</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u117" class="ax_default box_1">
        <div id="u117_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u118" class="text" style="visibility: visible;">
          <p><span>关系</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u119" class="ax_default box_1">
        <div id="u119_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u120" class="text" style="visibility: visible;">
          <p><span>年龄</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u121" class="ax_default box_1">
        <div id="u121_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u122" class="text" style="visibility: visible;">
          <p><span>工作单位</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u123" class="ax_default box_1">
        <div id="u123_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u124" class="text" style="visibility: visible;">
          <p><span>职务</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u125" class="ax_default box_1">
        <div id="u125_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u126" class="text" style="visibility: visible;">
          <p><span>联系方式</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u127" class="ax_default text_field">
        <input id="u127_input" type="text" name="person_familyname1" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u128" class="ax_default text_field">
        <input id="u128_input" type="text" name="person_familyname2" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u129" class="ax_default text_field">
        <input id="u129_input" type="text" name="person_familyrelation1" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u130" class="ax_default text_field">
        <input id="u130_input" type="text" name="person_familyrelation2" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u131" class="ax_default text_field">
        <input id="u131_input" type="text" name="person_familyage1" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u132" class="ax_default text_field">
        <input id="u132_input" type="text" name="person_familyage2" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u133" class="ax_default text_field">
        <input id="u133_input" type="text" name="person_familycompany1" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u134" class="ax_default text_field">
        <input id="u134_input" type="text" name="person_familycompany2" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u135" class="ax_default text_field">
        <input id="u135_input" type="text" name="person_familyjob1" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u136" class="ax_default text_field">
        <input id="u136_input" type="text" name="person_familyjob2" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u137" class="ax_default text_field">
        <input id="u137_input" type="text" name="person_familyphone1" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u138" class="ax_default text_field">
        <input id="u138_input" type="text" name="person_familyphone2" value=""/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u139" class="ax_default box_1">
        <div id="u139_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u140" class="text" style="visibility: visible;">
          <p><span>是否有技能培训经历，专业资格证书以及获奖证书等：</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u141" class="ax_default box_1">
        <div id="u141_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u142" class="text" style="visibility: visible;">
          <p><span>是否需要公司提供住宿：</span></p>
        </div>
      </div>

      <!-- Unnamed (单选按钮) -->
      <div id="u143" class="ax_default radio_button">
        <label for="u143_input">
          <!-- Unnamed () -->
          <div id="u144" class="text" style="visibility: visible;">
            <p><span>是</span></p>
          </div>
        </label>
        <input id="u143_input" type="radio" value="是" name="person_accommodation"/>
      </div>

      <!-- Unnamed (单选按钮) -->
      <div id="u145" class="ax_default radio_button">
        <label for="u145_input">
          <!-- Unnamed () -->
          <div id="u146" class="text" style="visibility: visible;">
            <p><span>否</span></p>
          </div>
        </label>
        <input id="u145_input" type="radio" value="否" name="person_accommodation"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u147" class="ax_default _二级标题">
        <div id="u147_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u148" class="text" style="visibility: visible;">
          <p><span>应聘登记表</span></p>
        </div>
      </div>

      <!-- Unnamed (多行文本框) -->
      <div id="u149" class="ax_default text_area">
        <textarea id="u149_input" name="person_trainingorcert"></textarea>
      </div>
      
      

      <!-- Unnamed (提交按钮) -->
      <div id="u150" class="ax_default html_button">
        <input id="u150_input" type="submit" value="提交"/>
        <input type="text" name="person_id" value="${persons.person_id }"/>
      </div>

      <!-- Unnamed (提交按钮) -->
      <div id="u151" class="ax_default html_button">
<!--         <input id="u151_input" type="reset" value="重置"/> -->
        <select  id="u151_input" name="person_renshi">
      	<option>选择面试人</option>
      	<c:forEach items="${renshiList2 }" var="employee">
      	<option value="${employee.employeeNickname }">${employee.employeeNickname }</option>
      	</c:forEach>
      </select>
      </div>
    </div>
  </form>
  </body>
</html>

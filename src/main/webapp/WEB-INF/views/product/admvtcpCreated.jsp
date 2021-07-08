<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 상품 등록</title>

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:11px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:11px 5px;word-break:normal;}
.tg .tg-rxsm{border-color:inherit;font-size:18px;text-align:center;vertical-align:bottom}
.tg .tg-7jts{border-color:inherit;font-size:18px;text-align:center;vertical-align:top}
.tg .tg-13pz{font-size:18px;text-align:center;vertical-align:top}
</style>

<script type="text/javascript">
	
	function sendIt() {
		
		var f = document.myForm;

		f.action = "<%=cp%>/product/admvtcpCreated_ok";
		f.submit();
		
	}

</script>

</head>
<body>

<center>

<br/><br/>

<table width="1620" cellpadding="0" cellspacing="3" align="center" bgcolor="#e4e4e4">
	<tr height="50">
		<td bgcolor="#ffffff" style="padding-left: 10px;">
			<b>버츄오 커피 | 업로드</b>
		</td>
	</tr>
</table>
<br/>

<form action="<%=cp%>/admvtcpCreated_ok.action" name="myForm" method="post">
<table class="tg" style="undefined;table-layout: fixed; width: 1617px">
<colgroup>
<col style="width: 180px">
<col style="width: 1300px">
</colgroup>
<thead>
  <tr>
    <th class="tg-7jts">TYPE</th>
    <th class="tg-13pz">
    <input type="text" name="cv_type" style="width:1370px;height:25px;font-size:18px;"></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-rxsm">MODELNAME1</td>
    <td class="tg-13pz">
    <input type="text" name="cv_modelName1" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">MODELNAME2</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_modelName2"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">LISTCOFFEE</td>
    <td class="tg-13pz">
    <input type="text" name="cv_listCoffee" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">LISTCONTENT</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_listContent"></textarea>
  </tr>
  <tr>
    <td class="tg-13pz">PRICE</td>
    <td class="tg-13pz">
    <input type="text" name="cv_price" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">SLEEVEPRICE</td>
    <td class="tg-13pz">
    <input type="text" name="cv_sleevePrice" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">QUANTITY</td>
    <td class="tg-13pz">
    <input type="text" name="cv_quantity" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">INTENSITY</td>
    <td class="tg-13pz">
    <input type="text" name="cv_intensity" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">PROFILE</td>
    <td class="tg-13pz">
    <input type="text" name="cv_profile" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">NOTES</td>
    <td class="tg-13pz">
    <input type="text" name="cv_notes" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">ORIGIN</td>
    <td class="tg-13pz">
    <input type="text" name="cv_origin" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">CUPSIZE1</td>
    <td class="tg-13pz">
    <input type="text" name="cv_cupSize1" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">CUPSIZE2</td>
    <td class="tg-13pz">
    <input type="text" name="cv_cupSize2" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">CUPSIZE3</td>
    <td class="tg-13pz">
    <input type="text" name="cv_cupSize3" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
    <tr>
    <td class="tg-13pz">CUPSIZE4</td>
    <td class="tg-13pz">
    <input type="text" name="cv_cupSize4" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">CUPSIZE5</td>
    <td class="tg-13pz">
    <input type="text" name="cv_cupSize5" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">CUPSIZE6</td>
    <td class="tg-13pz">
    <input type="text" name="cv_cupSize6" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">CUPSIZE7</td>
    <td class="tg-13pz">
    <input type="text" name="cv_cupSize7" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">CUPSIZE8</td>
    <td class="tg-13pz">
    <input type="text" name="cv_cupSize8" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">CUPSIZE9</td>
    <td class="tg-13pz">
    <input type="text" name="cv_cupSize9" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">CUPSIZE10</td>
    <td class="tg-13pz">
    <input type="text" name="cv_cupSize10" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">SP1</td>
    <td class="tg-13pz">
    <input type="text" name="cv_sp1" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">SP2</td>
    <td class="tg-13pz">
    <input type="text" name="cv_sp2" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">SP3</td>
    <td class="tg-13pz">
    <input type="text" name="cv_sp3" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">SP4</td>
    <td class="tg-13pz">
    <input type="text" name="cv_sp4" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">SP5</td>
    <td class="tg-13pz">
    <input type="text" name="cv_sp5" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATICLECOFFEE1</td>
    <td class="tg-13pz">
    <input type="text" name="cv_aticleCoffee1" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATICLECOFFEE2</td>
    <td class="tg-13pz">
    <input type="text" name="cv_aticleCoffee2" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATICLECOFFEE3</td>
    <td class="tg-13pz">
    <input type="text" name="cv_aticleCoffee3" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATICLECOFFEE4</td>
    <td class="tg-13pz">
    <input type="text" name="cv_aticleCoffee4" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATICLECOFFEE5</td>
    <td class="tg-13pz">
    <input type="text" name="cv_aticleCoffee5" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">SHORTCONTENT</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_shortContent"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">LONGCONTENT</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_longContent"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">BG</td>
    <td class="tg-13pz">
    <input type="text" name="cv_bg" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">BIGNAME1</td>
    <td class="tg-13pz">
    <input type="text" name="cv_bigName1" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">BIGNAME2</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_bigName2"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATCONTENT1</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_atContent1"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATCONTENT2</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_atContent2"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATCONTENT3</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_atContent3"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATCONTENT4</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_atContent4"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATCONTENT5</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_atContent5"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATCONTENT6</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_atContent6"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATCONTENT7</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_atContent7"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATCONTENT8</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_atContent8"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATCONTENT9</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_atContent9"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATCONTENT10</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_atContent10"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATCONTENT11</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_atContent11"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATCONTENT12</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_atContent12"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATCONTENT13</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_atContent13"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">ROASTINESS1</td>
    <td class="tg-13pz">
    <input type="text" name="cv_roastiness1" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">ROASTINESS2</td>
    <td class="tg-13pz">
    <input type="text" name="cv_roastiness2" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">ACIDITY1</td>
    <td class="tg-13pz">
    <input type="text" name="cv_acidity1" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">ACIDITY2</td>
    <td class="tg-13pz">
    <input type="text" name="cv_acidity2" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">BITTERNESS1</td>
    <td class="tg-13pz">
    <input type="text" name="cv_bitterness1" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">BITTERNESS2</td>
    <td class="tg-13pz">
    <input type="text" name="cv_bitterness2" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">BODY1</td>
    <td class="tg-13pz">
    <input type="text" name="cv_body1" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">BODY2</td>
    <td class="tg-13pz">
    <input type="text" name="cv_body2" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATORIGIN</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_atOrigin"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATROASTING</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_atRoasting"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATPROFILE</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_atProfile"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">GRAM</td>
    <td class="tg-13pz">
    <input type="text" name="cv_gram" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">COFFEE</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="cv_coffee"></textarea></td>
  </tr>
</tbody>

	<tr height="35">
		<td align="center" colspan="2">
			<input type="submit" value="등록하기" onclick="sendIt();"/>
			<input type="reset" value="다시입력"  onclick="document.myForm.c_modelName.focus();"/>		
			<input type="button" value="작성취소"  onclick="javascript:location.href='<%=cp%>/product/home';"/>
		</td>
	</tr>

</table>
</form>

</center>

</body>
</html>
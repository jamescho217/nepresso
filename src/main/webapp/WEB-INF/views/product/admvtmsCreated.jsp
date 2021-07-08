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

		f.action = "<%=cp%>/product/admvtmsCreated_ok";
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
			<b>버츄오 머신 | 업로드</b>
		</td>
	</tr>
</table>
<br/>

<form action="<%=cp%>/product/admvtmsCreated_ok" name="myForm" method="post">
<table class="tg" style="undefined;table-layout: fixed; width: 1617px">
<colgroup>
<col style="width: 180px">
<col style="width: 1300px">
</colgroup>
<thead>
  <tr>
    <th class="tg-7jts">MODELNAME1</th>
    <th class="tg-13pz">
    <input type="text" name="mv_modelName1" style="width:1370px;height:25px;font-size:18px;"></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-rxsm">MODELNAME2</td>
    <td class="tg-13pz">
    <input type="text" name="mv_modelName2" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">MODELNAME3</td>
    <td class="tg-13pz">
    <input type="text" name="mv_modelName3" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">LISTMACHINE</td>
    <td class="tg-13pz">
    <input type="text" name="mv_listMachine" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">LISTCONTENT</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="mv_listContent"></textarea>
  </tr>
  <tr>
    <td class="tg-13pz">PRICE</td>
    <td class="tg-13pz">
    <input type="text" name="mv_price" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">QUANTITY</td>
    <td class="tg-13pz">
    <input type="text" name="mv_quantity" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATMACHINE1</td>
    <td class="tg-13pz">
    <input type="text" name="mv_atMachine1" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATMACHINE2</td>
    <td class="tg-13pz">
    <input type="text" name="mv_atMachine2" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>	
  <tr>
    <td class="tg-13pz">ATMACHINE3</td>
    <td class="tg-13pz">
    <input type="text" name="mv_atMachine3" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>	
  <tr>
    <td class="tg-13pz">ATMACHINE4</td>
    <td class="tg-13pz">
    <input type="text" name="mv_atMachine4" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>	
  <tr>
    <td class="tg-13pz">ATMACHINE5</td>
    <td class="tg-13pz">
    <input type="text" name="mv_atMachine5" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>	
  <tr>
    <td class="tg-13pz">ATMACHINE6</td>
    <td class="tg-13pz">
    <input type="text" name="mv_atMachine6" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>	
  <tr>
    <td class="tg-13pz">ATMACHINE7</td>
    <td class="tg-13pz">
    <input type="text" name="mv_atMachine7" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>	
  <tr>
    <td class="tg-13pz">ATMACHINE8</td>
    <td class="tg-13pz">
    <input type="text" name="mv_atMachine8" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>	
  <tr>
    <td class="tg-13pz">ATMACHINE9</td>
    <td class="tg-13pz">
    <input type="text" name="mv_atMachine9" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>	
  <tr>
    <td class="tg-13pz">SP1</td>
    <td class="tg-13pz">
    <input type="text" name="mv_sp1" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">SP2</td>
    <td class="tg-13pz">
    <input type="text" name="mv_sp2" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">SP3</td>
    <td class="tg-13pz">
    <input type="text" name="mv_sp3" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">SP4</td>
    <td class="tg-13pz">
    <input type="text" name="mv_sp4" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">SP5</td>
    <td class="tg-13pz">
    <input type="text" name="mv_sp5" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATCONTENT1</td>
    <td class="tg-13pz">
    <input type="text" name="mv_atContent1" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">ATCONTENT2</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="mv_atContent2"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">WEIGHT</td>
    <td class="tg-13pz">
    <input type="text" name="mv_weight" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">WATERTANK</td>
    <td class="tg-13pz">
    <input type="text" name="mv_waterTank" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">CONTAINER</td>
    <td class="tg-13pz">
    <input type="text" name="mv_container" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">WARRANTY</td>
    <td class="tg-13pz">
    <input type="text" name="mv_warranty" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">SIZE1</td>
    <td class="tg-13pz">
    <input type="text" name="mv_size1" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">SIZE2</td>
    <td class="tg-13pz">
    <input type="text" name="mv_size2" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">COLOR</td>
    <td class="tg-13pz">
    <input type="text" name="mv_color" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">MADE</td>
    <td class="tg-13pz">
    <input type="text" name="mv_made" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">INFO1</td>
    <td class="tg-13pz">
    <input type="text" name="mv_info1" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">INFO2</td>
    <td class="tg-13pz">
    <input type="text" name="mv_info2" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">INFO3</td>
    <td class="tg-13pz">
    <input type="text" name="mv_info3" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">INFO4</td>
    <td class="tg-13pz">
    <input type="text" name="mv_info4" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">INFO5</td>
    <td class="tg-13pz">
    <input type="text" name="mv_info5" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">INFO6</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="mv_info6"></textarea></td>
  </tr>
  <tr>
    <td class="tg-13pz">INFO7</td>
    <td class="tg-13pz">
    <input type="text" name="mv_info7" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">INFO8</td>
    <td class="tg-13pz">
    <input type="text" name="mv_info8" style="width:1370px;height:25px;font-size:18px;"></td>
  </tr>
  <tr>
    <td class="tg-13pz">INFO9</td>
    <td class="tg-13pz">
    <textarea rows="7" cols="194" name="mv_info9"></textarea></td>
  </tr>
</tbody>

	<tr height="35">
		<td align="center" colspan="2">
			<input type="submit" value="등록하기" onclick="sendIt();"/>
			<input type="reset" value="다시입력"  onclick="document.myForm.c_modelName.focus();"/>		
			<input type="button" value="작성취소"  onclick="javascript:location.href='<%=cp%>';"/>
		</td>
	</tr>

</table>
</form>

</center>

</body>
</html>
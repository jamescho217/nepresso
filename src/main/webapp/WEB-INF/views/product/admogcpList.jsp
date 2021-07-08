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
<title>관리자 상품 조회</title>

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-6gj1{font-size:18px;text-align:center;vertical-align:bottom}
.tg .tg-13pz{font-size:18px;text-align:center;vertical-align:top}
</style>

<script type="text/javascript">
	
	function sendIt() {
		
		var f = document.myForm;

		f.action = "<%=cp%>/cpog_created_ok.action";
		f.submit();
		
	}

</script>

</head>
<body>

<center>

<br/><br/>

<table width="840" cellpadding="0" cellspacing="3" align="center" bgcolor="#e4e4e4">
	<tr height="50">
		<td bgcolor="#ffffff" style="padding-left: 10px;">
			<b>오리지널 커피 | 리스트</b>
		</td>
	</tr>
</table>
<br/>

<form action="" name="myForm" method="post">

<table class="tg" style="undefined;table-layout: fixed; width: 693px">
<colgroup>
<col style="width: 130px">
<col style="width: 240px">
<col style="width: 470px">
</colgroup>
<thead>
  <tr>
    <th class="tg-13pz">번호</th>
    <th class="tg-13pz">커피사진</th>
    <th class="tg-13pz">커피모델명</th>
  </tr>
</thead>
<tbody>
<c:forEach var="dto" items="${lists1 }">
  <tr>
    <td class="tg-6gj1">${dto.co_num }</td>
    <td class="tg-6gj1">${dto.co_listFileName }</td>
    <td class="tg-6gj1">${dto.co_modelName1 }</td>
  </tr>
</c:forEach>
<!--   <tr>
    <td class="tg-6gj1"></td>
    <td class="tg-6gj1"></td>
    <td class="tg-6gj1"></td>
  </tr> -->
</tbody>

<tr height="35">
	<td align="center" colspan="10">
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
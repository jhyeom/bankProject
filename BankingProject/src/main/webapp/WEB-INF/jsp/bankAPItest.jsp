<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script> 
  <!-- Bootstrap core CSS -->
 <link rel="stylesheet" type="text/css" href="/static/vendor/bootstrap/css/bootstrap.min.css"/>

<script type="text/javascript">

function callAPI(apiNum){

	var url;
	var data;

	if(apiNum=='api1'){
		url='getAPI1';
	}else if(apiNum=='api2'){
		url="getAPI2";
	}else if(apiNum=='api3'){
		url="getAPI3";
	}else if(apiNum=='api4'){
		url="getAPI4";
		data={"brName" : document.getElementById("api4_input").value};
	}
	
	$.ajax({
		url: url,
		type:"POST",
		data: data,
		success : function(info) {
			
			document.getElementById(apiNum+"_text").value = JSON.stringify(info);
		}
	});
}

</script>
<title>특정고객 거래내역 조회 테스트</title>
</head>
<body>
<table class="table table-borderless">
	<tr>
		<td colspan="3" class="p-3 mb-2 bg-info text-white"><h6>1.2018년, 2019년 각 연도별 합계 금액이 가장 많은 고객을 추출하는 API 개발.(단, 취소여부가 ‘Y’ 거래는 취소된 거래임, 합계 금액은 거래금액에서 수수료를 차감한 금액임)</h6></td>
		</tr>
	<tr >
		<td valign="top" style="width: 8%" >출력 : </td>
		<td>
			<textarea id="api1_text" name="api1_text" rows="8" cols="120" class="form-control" ></textarea>		
		</td>
		 <td style="width: 40%"><input class="btn btn-outline-primary" type="button" onclick="callAPI('api1')" value="호출"> </td> 
	</tr>
	<tr>
		<td colspan="3" class="p-3 mb-2 bg-info text-white">2.	2018년 또는 2019년에 거래가 없는 고객을 추출하는 API 개발.(취소여부가 ‘Y’ 거래는 취소된 거래임)</td>
	</tr>
	<tr>
		<td valign="top" style="width: 8%" >출력 : </td>
		<td>
			<textarea id="api2_text" name="api2_text" rows="8" cols="120" class="form-control"></textarea>		
		</td>
		<td style="width: 40%"><input class="btn btn-outline-primary" type="button" value="호출" onclick="callAPI('api2')"> </td>
	</tr>
	<tr>
		<td colspan="3" class="p-3 mb-2 bg-info text-white">3.연도별 관리점별 거래금액 합계를 구하고 합계금액이 큰 순서로 출력하는 API 개발.( 취소여부가 ‘Y’ 거래는 취소된 거래임)</td>
	</tr>
	<tr>
		<td valign="top" style="width: 8%" >출력 : </td>
		<td>
			<textarea id="api3_text" name="api3_text" rows="8" cols="120" class="form-control"></textarea>		
		</td>
		<td style="width: 40%"><input class="btn btn-outline-primary" type="button" value="호출" onclick="callAPI('api3')" > </td>
	</tr>
	<tr>
		<td colspan="3" class="p-3 mb-2 bg-info text-white">4.분당점과 판교점을 통폐합하여 판교점으로 관리점 이관을 하였습니다. 지점명을 입력하면 해당지점의 거래금액 합계를 출력하는 API 개발( 취소여부가 ‘Y’ 거래는 취소된 거래임,)</td>
		
	</tr>
	<tr>
		<td valign="top" style="width: 8%" >입력 : </td>
		<td align="left">
			 <input type="text" id="api4_input" name="api4_input" />		
		</td>
		<td style="width: 40%"><input class="btn btn-outline-primary" type="button" value="호출" onclick="callAPI('api4')"> </td>
	</tr>
	<tr>
		<td valign="top" style="width: 4%" >출력 : </td>
		<td>
			<textarea id="api4_text" name="api4_text" rows="8" cols="120" class="form-control"></textarea>		
		</td>
	</tr>
</table>
 	
</body>
</html>
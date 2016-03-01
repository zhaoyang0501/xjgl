<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ch">
<%@ include file="../common/meta.jsp"%>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/ace/admin.item.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/falgun/bootbox.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".date").datetimepicker({
			language:  'zh-CN',
	        weekStart: 1,
	        todayBtn:  1,
	        format:'yyyy-mm-dd',
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 0
	    });
		if("${tip}" != null && "${tip}" != ""){
			noty({"text":"${tip}","layout":"top","type":"success","timeout":"2000"});
		}
	});
</script>
</head>
	
	<script type="text/javascript">
		$(function() {
		});
	</script>
</head>
<body>
	<div class="layout">
		<!-- top -->
		<%@ include file="../top.jsp"%>
		<!-- 导航 -->
		<%@ include file="../menu.jsp"%>
		<div class="main-wrapper">
			<div class="container-fluid">
				<div class="row-fluid ">
					<div class="span12">
						<div class="content-widgets ">
						<div class="widget-head  bondi-blue">
							<h3>填写学生学籍</h3>
						</div>
						<div class="widget-container">
							<form id='dayoffform' class="form-horizontal " method="post" action="club/save">
								<table id='' class=" responsive table table-striped table_bordered_black table-condensed formtable" >
									<tr>
										<td colspan="8">
											<div class="table_title">
												 <h3>清华大学学生学籍卡</h3> 
											</div>
										</td>
									</tr>
									<tr>
										<td class='lable'>姓名</td>
										<td class='lable' ><input type="text" value="" name='name' style="width: 70%"></input></td>
										
										<td class='lable'>曾用名</td>
										<td class='lable' ><input type="text" value="" name='name' style="width: 70%"></input></td>
										
										<td class='lable'>性别</td>
										<td class='lable' ><input type="text" value="" name='name' style="width: 70%"></input></td>
									
										<td class='lable'>名族</td>
										<td class='lable' ><input type="text" value="" name='name' style="width: 70%"></input></td>
									</tr>
									<tr>
										<td class='lable'>出生日期</td>
										<td class='lable' ><input type="text" value="" name='name' style="width: 70%"></input></td>
										
										<td class='lable'>婚否</td>
										<td class='lable' ><input type="text" value="" name='name' style="width: 70%"></input></td>
										
										<td class='lable'>籍贯</td>
										<td class='lable' ><input type="text" value="" name='name' style="width: 70%"></input></td>
									
										<td class='lable'>疾病历史</td>
										<td class='lable' ><input type="text" value="" name='name' style="width: 70%"></input></td>
									</tr>
									<tr>
										<td class='lable'>邮政编码</td>
										<td class='lable'  colspan="3" ><input type="text" value="" name='name' style="width: 90%"></input></td>
										
										<td class='lable'>联系电话</td>
										<td class='lable' colspan="3" ><input type="text" value="" name='name' style="width: 90%"></input></td>
										
									</tr>
									<tr>
										<td class='lable'>身份证号码</td>
										<td class='lable' colspan="7"><input type="text" value="" name='name' style="width: 90%"></input></td>
										
									</tr>
									<tr>
										<td class='lable'>家庭地址</td>
										<td class='lable' colspan="7"><input type="text" value="" name='name' style="width: 90%"></input></td>
										
									</tr>
									<tr>
										<td class='lable' colspan="8" align="center" style="text-align: center;"><h4>在校情况</h4> </td>
									</tr>
									<tr>
										<td class='lable'>参与二课活动及获奖情况</td>
										<td class='lable'  colspan="3" >
											<textarea rows="2" cols="" style="width: 90%"></textarea>
										</td>
										
										<td class='lable'>奖学金  情况</td>
										<td class='lable'  colspan="3" >
											<textarea rows="2" cols="" style="width: 90%"></textarea>
										</td>
									</tr>
									<tr>
										<td class='lable'>参与社会实践情况及成果</td>
										<td class='lable'  colspan="3" >
											<textarea rows="2" cols="" style="width: 90%"></textarea>
										</td>
										
										<td class='lable'>奖励 情况</td>
										<td class='lable'  colspan="3" >
											<textarea rows="2" cols="" style="width: 90%"></textarea>
										</td>
									</tr>
									<tr>
										<td class='lable'>参与社会公益活动情况</td>
										<td class='lable'  colspan="3" >
											<textarea rows="2" cols="" style="width: 90%"></textarea>
										</td>
										
										<td class='lable'>处分情况</td>
										<td class='lable'  colspan="3" >
											<textarea rows="2" cols="" style="width: 90%"></textarea>
										</td>
									</tr>
									
									<tr>
										<td class='lable'>毕业去向</td>
										<td class='lable' colspan="7"><input type="text" value="" name='name' style="width: 90%"></input></td>
									</tr>
									<tr>
										<td class='lable'>结业证号</td>
										<td class='lable' colspan="7"><input type="text" value="" name='name' style="width: 90%"></input></td>
									</tr>
									<tr  class='remark'>
										<td colspan="8">
											<ol>
											  <li>请如实填写资料</li>
											  <li>所有信息可能会被核查</li>
											</ol>
										</td>
									</tr>
								</table>
								<div >
									<button type="submit" class="btn btn-primary" >提交</button>
								</div>
							</form>
						</div>
					</div>
					
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../foot.jsp"%>
	</div>
</body>
</html>
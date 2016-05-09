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
							<form id='dayoffform' class="form-horizontal " method="post" action="user/save">
								<table id='' class=" responsive table table-striped table_bordered_black table-condensed formtable" >
									<tr>
										<td colspan="8">
											<div class="table_title">
												 <h3>广东工业大学学生学籍卡</h3> 
											</div>
										</td>
									</tr>
									<tr>
										<td class='lable'>姓名</td>
										<td class='lable' ><input type="text" value="${user.name }" name='name' style="width: 70%"></input></td>
										
										<td class='lable'>学号</td>
										<td class='lable' ><input type="text" value="${user.username }" name='username' style="width: 70%"></input></td>
										
										<td class='lable'>性别</td>
										<td class='lable' >
										<select name="c2" >
											<option value="男">男</option>
											<option value="女">女</option>
										</select>
										</td>
									
										<td class='lable'>名族</td>
										<td class='lable' >
											<select name="c3">
											<option value="汉族">汉族</option>
											<option value="蒙古族">蒙古族</option>
											<option value="彝族">彝族</option>
											<option value="侗族">侗族</option>
											<option value="哈萨克族">哈萨克族</option>
											<option value="畲族">畲族</option>
											<option value="纳西族">纳西族</option>
											<option value="仫佬族">仫佬族</option>
											<option value="仡佬族">仡佬族</option>
											<option value="怒族">怒族</option>
											<option value="保安族">保安族</option>
											<option value="鄂伦春族">鄂伦春族</option>
											<option value="回族">回族</option>
											<option value="壮族">壮族</option>
											<option value="瑶族">瑶族</option>
											<option value="傣族">傣族</option>
											<option value="高山族">高山族</option>
											<option value="景颇族">景颇族</option>
											<option value="羌族">羌族</option>
											<option value="锡伯族">锡伯族</option>
											<option value="乌孜别克族">乌孜别克族</option>
											<option value="裕固族">裕固族</option>
											<option value="赫哲族">赫哲族</option>
											<option value="藏族">藏族</option>
											<option value="布依族">布依族</option>
											<option value="白族">白族</option>
											<option value="黎族">黎族</option>
											<option value="拉祜族">拉祜族</option>
											<option value="柯尔克孜族">柯尔克孜族</option>
											<option value="布朗族">布朗族</option>
											<option value="阿昌族">阿昌族</option>
											<option value="俄罗斯族">俄罗斯族</option>
											<option value="京族">京族</option>
											<option value="门巴族">门巴族</option>
											<option value="维吾尔族">维吾尔族</option>
											<option value="朝鲜族">朝鲜族</option>
											<option value="土家族">土家族</option>
											<option value="傈僳族">傈僳族</option>
											<option value="水族">水族</option>
											<option value="土族">土族</option>
											<option value="撒拉族">撒拉族</option>
											<option value="普米族">普米族</option>
											<option value="鄂温克族">鄂温克族</option>
											<option value="塔塔尔族">塔塔尔族</option>
											<option value="珞巴族">珞巴族</option>
											<option value="苗族">苗族</option>
											<option value="满族">满族</option>
											<option value="哈尼族">哈尼族</option>
											<option value="佤族">佤族</option>
											<option value="东乡族">东乡族</option>
											<option value="达斡尔族">达斡尔族</option>
											<option value="毛南族">毛南族</option>
											<option value="塔吉克族">塔吉克族</option>
											<option value="德昂族">德昂族</option>
											<option value="独龙族">独龙族</option>
											<option value="基诺族">基诺族</option>
										</select>
										</td>
									</tr>
									<tr>
										<td class='lable'>出生日期</td>
										<td class='lable' ><div class="input-append date">
											 <input value="${user.c4 }" id="createDate" name="c4" type="text" readonly="readonly" style="width: 80px;" class="form_datetime">
											 <span class="add-on"><i class="icon-th"></i></span>
										    </div></td>
										
										<td class='lable'>婚否</td>
										<td class='lable' >
											<select name="c5">
												<option value="未婚">未婚</option>
												<option value="已婚">已婚</option>
											</select>
										</td>
										
										<td class='lable'>籍贯</td>
										<td class='lable'  ><input type="text" value="${user.c6 }" name='c6' style="width: 70%"></input></td>
									
										<td class='lable'>疾病历史</td>
										<td class='lable' ><input type="text"  value="${user.c7 }"  name='c7' style="width: 70%"></input></td>
									</tr>
									<tr>
										<td class='lable'>邮政编码</td>
										<td class='lable'  colspan="3" ><input type="text"  value="${user.c8 }" name='c8' style="width: 90%"></input></td>
										
										<td class='lable'>联系电话</td>
										<td class='lable' colspan="3" ><input type="text" value="${user.c9 }"  name='c9' style="width: 90%"></input></td>
										
									</tr>
									<tr>
										<td class='lable'>身份证号码</td>
										<td class='lable' colspan="7"><input type="text" value="${user.c10 }" name='c10' style="width: 90%"></input></td>
										
									</tr>
									<tr>
										<td class='lable'>家庭地址</td>
										<td class='lable' colspan="7"><input type="text" value="${user.c11 }" value="" name='c11' style="width: 90%"></input></td>
										
									</tr>
									<tr>
										<td class='lable' colspan="8" align="center" style="text-align: center;"><h4>在校情况</h4> </td>
									</tr>
									<tr>
										<td class='lable'>参与二课活动及获奖情况</td>
										<td class='lable'  colspan="3" >
											<textarea name='c12' rows="2" cols="" style="width: 90%">${user.c12 }</textarea>
										</td>
										
										<td class='lable'>奖学金  情况</td>
										<td class='lable'  colspan="3" >
											<textarea name='c13'  rows="2" cols="" style="width: 90%">${user.c13 }</textarea>
										</td>
									</tr>
									<tr>
										<td class='lable'>参与社会实践情况及成果</td>
										<td class='lable'  colspan="3" >
											<textarea  name='c14'  rows="2" cols="" style="width: 90%">${user.c14 }</textarea>
										</td>
										
										<td class='lable'>奖励 情况</td>
										<td class='lable'  colspan="3" >
											<textarea  name='c15' rows="2" cols="" style="width: 90%">${user.c15 }</textarea>
										</td>
									</tr>
									<tr>
										<td class='lable'>参与社会公益活动情况</td>
										<td class='lable'  colspan="3" >
											<textarea name='c16' rows="2" cols="" style="width: 90%">${user.c16 }</textarea>
										</td>
										
										<td class='lable'>处分情况</td>
										<td class='lable'  colspan="3" >
											<textarea name='c17' rows="2" cols="" style="width: 90%">${user.c17 }</textarea>
										</td>
									</tr>
									
									<tr>
										<td class='lable'>毕业去向</td>
										<td class='lable' colspan="7"><input  type="text" value="${user.c18 }" name='c18' style="width: 90%"></input></td>
									</tr>
									<tr>
										<td class='lable'>结业证号</td>
										<td class='lable' colspan="7"><input type="text" value="${user.c19 }" name='c19' style="width: 90%"></input></td>
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
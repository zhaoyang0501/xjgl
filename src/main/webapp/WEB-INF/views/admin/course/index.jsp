<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ch">
<%@ include file="../common/meta.jsp"%>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/ace/admin.course.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/falgun/bootbox.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	});
</script>
</head>
<body>
	<div class="layout">
		<!-- top -->
		<%@ include file="../top.jsp"%>
		<!-- 导航 -->
		<%@ include file="../menu.jsp"%>
		
		<input type="hidden" id="hf_id" />

		<div class="main-wrapper">
			<div class="container-fluid">
				<div class="row-fluid ">
					<div class="span12">
						<div class="content-widgets ">
							<div class="widget-head  bondi-blue" >
								<h3>课程管理</h3>
							</div>
							<div class="box well form-inline">
								
								<input type="text" id="_name" placeholder="课程名称">
								<a onclick="$.course.initSearchDataTable()"
									class="btn btn-info" data-loading-text="正在加载..."><i class="icon-search"></i>查询</a>
							</div>
							<div class="row-fluid ">
								
									<a class="btn btn-success" style="float: right; margin: 5px;" onclick="$.course.showUserAddModal()"><i class="icon-plus"></i>创建</a>
								<table class="responsive table table-striped table-bordered"
									id="dt_table_view">
									<thead>
										<tr>
											<th >id</th>
											<th >课程名称</th>
											<th >课程介绍</th>
											<th >任课老师</th>
											<th >学时</th>
											<th >上课时间</th>
											<th >上课地点</th>
											<th >考试时间</th>
											<th >创建时间</th>
											<th >操作</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../foot.jsp"%>
	</div>

	<!-- 编辑新增弹出框 -->
	<div class="modal hide fade" id="_modal">
		<div class="modal-header blue">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<label id="_modal_header_label"></label>
		</div>
		<div class="modal-body" >
			<div class="row-fluid">
				<div class="span12">
					<div class="form-container grid-form form-background left-align form-horizontal">
						<form action="" method="get" id=''>
							<input type="hidden"  name='id' id="id" value="">
							
							<div class="control-group">
								<label for="title" class="control-label">课程名称：</label>
								<div class="controls">
									<input type="text" name='name' id="name" placeholder="">
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">任课老师：</label>
								<div class="controls">
									<input type="text" name='teacher' id="teacher" placeholder="">
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">学时：</label>
								<div class="controls">
									<input type="text" name='score' id="score" placeholder="">
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">上课时间：</label>
								<div class="controls">
									<input type="text" name='courseDate' id="courseDate" placeholder="">
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">上课地点：</label>
								<div class="controls">
									<input type="text" name='address' id="address" placeholder="">
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">考试时间：</label>
								<div class="controls">
									<input type="text" name='checkDate' id="checkDate" placeholder="">
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">课程简介：</label>
								<div class="controls">
								<textarea rows="3" cols="" id='remark' name='remark'></textarea>
								</div>
							</div>
							
							
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<div class="modal-footer center" id="div_footer">
			<a class="btn btn-primary" onclick="$.course.saveUser()">保存</a>
			<a href="#" class="btn" data-dismiss="modal" id="closeViewModal">关闭</a>
		</div>
	</div>
</body>
</html>
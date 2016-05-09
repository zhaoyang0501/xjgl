<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="leftbar leftbar-close clearfix">
	<div class="admin-info clearfix">
		<div class="admin-thumb">
			<i class="icon-user"></i>
		</div>
		<div class="admin-meta">
			<ul>
				<li class="admin-username" style="margin-top: 10px;">欢迎你 ${sessionScope.adminuser.name}
				<c:if test="${sessionScope.adminuser.username=='admin'}">
					管理员
				</c:if>
				<c:if test="${sessionScope.adminuser.username!='admin'}">
					同学
				</c:if>
				</li>
				<li><a href="${pageContext.request.contextPath}/admin/loginout">
				<i class="icon-lock"></i> 退出</a></li>
			</ul>
		</div>
	</div>

	<div class="left-nav clearfix">
		<div class="left-primary-nav">
			<ul id="myTab">
				<li  class="active"><a href="#dailyreport" class="icon-calendar" data-original-title="日报"></a></li>
			</ul>
		</div>
		<div class="responsive-leftbar">
			<i class="icon-list"></i>
		</div>
		<div class="left-secondary-nav tab-content" >
			<div class="tab-pane active dailyreport" id="dailyreport">
				<ul id="nav" class="accordion-nav" >
				<c:if test="${sessionScope.adminuser.username=='admin'}">
				
						<li><a href="${pageContext.request.contextPath}/admin/user/create"><i class="icon-pencil"></i>学籍卡录入</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/user/index"><i class="icon-pencil"></i>学籍管理</a></li>
					    
					    <li><a href="${pageContext.request.contextPath}/admin/category/index"><i class="icon-pencil"></i>专业管理</a></li>
						
						<li><a href="${pageContext.request.contextPath}/admin/course/index"><i class="icon-pencil"></i>课程管理</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/score/index"><i class="icon-pencil"></i>成绩管理</a></li>
				</c:if>
				<c:if test="${sessionScope.adminuser.username!='admin'}">
						<li><a href="${pageContext.request.contextPath}/admin/user/show"><i class="icon-pencil"></i>我的学籍资料</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/score/show"><i class="icon-pencil"></i>我的成绩</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/course/viewindex"><i class="icon-pencil"></i>课程查询</a></li>
				</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>
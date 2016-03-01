<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="leftbar leftbar-close clearfix">
	<div class="admin-info clearfix">
		<div class="admin-thumb">
			<i class="icon-user"></i>
		</div>
		<div class="admin-meta">
			<ul>
				<li class="admin-username" style="margin-top: 10px;">欢迎你 ${sessionScope.adminuser.name}，${sessionScope.adminuser.club.name}</li>
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
					<li><a href="${pageContext.request.contextPath}/admin/club/create"><i class="icon-pencil"></i>社团登记</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/dept/create"><i class="icon-pencil"></i>社团部门登记</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/work/create"><i class="icon-pencil"></i>社团活动登记</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/user/index"><i class="icon-pencil"></i>社团会员登记</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/apply/index"><i class="icon-pencil"></i>社团经费审批</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/club/index"><i class="icon-pencil"></i>社团查询理</a></li>	
						<li><a href="${pageContext.request.contextPath}/admin/dept/index"><i class="icon-pencil"></i>社团部门查询</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/userview/index"><i class="icon-pencil"></i>社团会员</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/work/index"><i class="icon-pencil"></i>社团活动</a></li>
				</c:if>
				<c:if test="${sessionScope.adminuser.username!='admin'}">
						<li><a href="${pageContext.request.contextPath}/admin/apply/create"><i class="icon-pencil"></i>社团经费申请</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/club/index"><i class="icon-pencil"></i>社团查询</a></li>	
						<li><a href="${pageContext.request.contextPath}/admin/dept/index"><i class="icon-pencil"></i>社团部门查询</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/userview/index"><i class="icon-pencil"></i>社团会员</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/work/index"><i class="icon-pencil"></i>社团活动</a></li>
			
				</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>
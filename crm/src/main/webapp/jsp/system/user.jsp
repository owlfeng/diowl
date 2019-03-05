<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>用户管理</title>
<jsp:include page="/WEB-INF/jsp/config/baseConfig.jsp" />

</head>
<body>
	<div class="padding-md">
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb">
					<li class="active"><a href="index.html"> <i
							class="fa fa-home"></i>首页
					</a></li>
					<li>系统管理</li>
					<li>用户管理</li>
				</ul>

				<div class="smart-widget">
					<div class="smart-widget-inner">
						<div class="smart-widget-body">
							<form class="form-inline" role="form" id="queryForm">

								<div class="form-group">
									所属部门： <select id="selectError" class="c0">
										<option value=""></option>
										<option value="集团总部">集团总部</option>
										<option value="人事中心">|—人事中心</option>
										<option value="总经办">|—|—总经办</option>
										<option value="行政办">|—|—行政办</option>
										<option value="财务中心">|—财务中心</option>
										<option value="会计室">|—|—会计室</option>
										<option value="出纳室">|—|—出纳室</option>
										<option value="信息中心">|—信息中心</option>
										<option value="软件系统组">|—|—软件系统组</option>
										<option value="硬件网络组">|—|—硬件网络组</option>
										<option value="零售事业部中心">|—零售事业部</option>
										<option value="采购部">|—|—采购部</option>
										<option value="采购组一">|—|—|—采购组一</option>
										<option value="采购组二">|—|—|—采购组二</option>
										<option value="采购组三">|—|—|—采购组三</option>
										<option value="营运部">|—|—营运部</option>
										<option value="企划部">|—|—企划部</option>
										<option value="物业事业部">|—物业事业部</option>
										<option value="软件系统组">|—|—软件系统组</option>
										<option value="硬件网络组">|—|—硬件网络组</option>
									</select>
								</div>
								&nbsp;&nbsp;
								<div class="form-group">
									快速检索：<select id="selectError" class="c1">
										<option value="用户编码">用户编码</option>
										<option value="姓名">姓名</option>
										<option value="性别">性别</option>
										<option value="状态">状态</option>
										<option value="职位">职位</option>
										<option value="移动电话">移动电话</option>
										<option value="办公电话">办公电话</option>
										<option value="职位">职位</option>
										<option value="角色">角色</option>
										<option value="所属公司">所属公司</option>
									</select>
								</div>

							</form>
						</div>
					</div>
					<!-- ./smart-widget-inner -->
				</div>
				<!-- ./smart-widget -->
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="smart-widget widget-dark-blue">

					<div class="smart-widget-inner">
						<div class="smart-widget-body no-padding">
							<div class="padding-md">

								<table id="table" class="dataTable display" cellspacing="0"
									width="100%">
									<thead>
										<tr>
											<th style="text-align: center;">姓名</th>
											<th style="text-align: center;">性别</th>
											<th style="text-align: center;">部门</th>
											<th style="text-align: center;">职位</th>
											<th style="text-align: center;">角色</th>
											<th style="text-align: center;">移动电话</th>
											<th style="text-align: center;">状态</th>
											<th style="text-align: center;">所属公司</th>
											<th style="text-align: center;">建档日期</th>
											<th style="text-align: center;">操作</th>
										</tr>
									</thead>
								</table>
							</div>
						</div>
					</div>
					<!-- ./smart-widget-inner -->
				</div>
				<!-- ./smart-widget -->
			</div>
			<!-- ./col -->
		</div>
	</div>
	<!-- ./padding-md -->
	<script type="text/javascript" language="javascript" class="init">
$(document).ready(function() {
    // DataTable
    //表格内容
    $('#table').DataTable( {
		"ajax": {
			"url": "../data/kh(客户信息).json",
			 "datasrc":"data",
       "dataType":"",
       "server":"",//ture
       "data":{}
		},
		 //支持国际化，将search转为中文
        language: {
          "decimal":        "",
          "emptyTable":     "No data available in table",
          "info":           "显示 _START_ 到 _END_ 页共 _TOTAL_ 条",
          "infoEmpty":      "显示 0 到 0 页共 0 条",
          "infoFiltered":   "(filtered from _MAX_ total entries)",
          "infoPostFix":    "",
          "thousands":      ",",
          
          "lengthMenu":     "显示 _MENU_ 条",
          "loadingRecords": "Loading...",
          "processing":     "Processing...",
          "search":         "",
          "zeroRecords":    "没有匹配项",
          "paginate": {
              "first":      "First",
              "last":       "Last",
              "next":       "下页",
              "previous":   "上页"
          },
          "aria": {
              "sortAscending":  ": activate to sort column ascending",
              "sortDescending": ": activate to sort column descending"
          },
        },
		"columns": [
			{ "data": "item" },
			{ "data": "item1" },
			{ "data": "item2" },
			{ "data": "item3" },
			{ "data": "item4" },
			{ "data": "item5" },
			{ "data": "item6" },
			{ "data": "item7" },
			{ "data": "item8" },
			{ "data": "item9" }
		]
	} );

} );	</script>


</body>
</html>

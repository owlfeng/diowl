<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
		<title>权限管理</title>
        <jsp:include page="/WEB-INF/jsp/config/baseConfig.jsp" />
	</head>
	<body>
				<div class="padding-md">
					<div class="row">
		  			<div class="col-lg-12">
		  					<ul class="breadcrumb">
						<li class="active"><a href="index.html"> <i class="fa fa-home"></i>首页</a></li>
						<li>系统管理</li>
						<li>权限管理</li>
					</ul>
					
		
		  			</div>
		  	</div>
				
									<div class="row">
						<div class="col-lg-12">
							<div class="smart-widget widget-dark-blue">
								
								<div class="smart-widget-inner">
									<div class="smart-widget-body no-padding">
										<div class="padding-md">
										  
										    <table id="table" class="dataTable display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th style="text-align: center;">权限名称</th>
						<th style="text-align: center;">权限编号</th>
						<th style="text-align: center;">资源路径</th>
						<th style="text-align: center;">状态</th>
						<th style="text-align: center;">菜单名称</th>
					</tr>
				</thead>
			</table>
										</div>
									</div>
								</div><!-- ./smart-widget-inner -->
							</div><!-- ./smart-widget -->
						</div><!-- ./col -->
					</div>
				</div><!-- ./padding-md -->
				
 <script type="text/javascript" language="javascript" class="init">
$(document).ready(function() {
    // DataTable
    //表格内容
    $('#table').DataTable( {
		"ajax": {
			"url": "../data/kh(权限管理).json",
			 "datasrc":"",
	       "dataType":"",
	       "server":""//ture
	       
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
			{ "data": "item4" }
		]
	} );

} );	</script> 
 		

	</body>
</html>

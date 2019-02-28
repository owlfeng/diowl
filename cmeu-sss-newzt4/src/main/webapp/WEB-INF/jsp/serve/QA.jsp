<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
		<title>QA库管理</title>
		<jsp:include page="/WEB-INF/jsp/config/baseConfig.jsp" />
	</head>
	<body>
		<div class="wrapper preload">
<jsp:include page="/WEB-INF/jsp/config/baseTop.jsp" />
		<jsp:include page="/WEB-INF/jsp/config/baseMenu.jsp" />
		<br/>		
					<div class="main-container">
						  <div class="padding-md">
		  	<div class="row">
		  			<div class="col-lg-12">
		  					<ul class="breadcrumb">
						<li class="active"><a href="index.html"> <i class="fa fa-home"></i>首页</a></li>
						<li>服务管理</li>
						<li>QA库管理</li>
					</ul>
		
		<div class="smart-widget">
						<div class="smart-widget-inner">
							<div class="smart-widget-body">
                  <form class="form-inline" role="form">
                            <div class="form-group">
                             问题：	<input type="text" class="input-medium search-query">
                            </div>&nbsp;&nbsp;
                        </form>

							</div>		 
						</div><!-- ./smart-widget-inner -->
					</div><!-- ./smart-widget -->
		  			</div>
		</div>   
		  	
				<div class="row">
						<div class="col-lg-12">
							<div class="smart-widget widget-dark-blue">
								<div class="smart-widget-header">
								表格
									<span class="smart-widget-option">
										<span class="refresh-icon-animated">
											<i class="fa fa-circle-o-notch fa-spin"></i>
										</span>
			                          <a href="#" class="widget-collapse-option" data-toggle="collapse">
			                                <i class="fa fa-chevron-up"></i>
			                            </a>
			                            <a href="#" class="widget-remove-option">
			                                <i class="fa fa-times"></i>
			                            </a>
			                        </span>
								</div>
								<div class="smart-widget-inner">
									<div class="smart-widget-body no-padding">
										<div class="padding-md">
											    
										     <table id="table" class="dataTable display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th style="text-align: center;">问题</th>
						<th style="text-align: center;">活动类型</th>
						<th style="text-align: center;">点击率</th>
						<th style="text-align: center;">状态</th>
						<th style="text-align: center;">创建人</th>
					</tr>
				</thead>
			</table>
										</div>
									</div>
								</div><!-- ./smart-widget-inner -->
							</div><!-- ./smart-widget -->
						</div><!-- ./col -->
					</div>
					
		  </div>
			</div><!-- /main-container -->	
		
		<footer class="footer">
				<span class="footer-brand">
					<strong class="text-danger">CRM</strong> 后台管理系统
				</span>
				<p class="no-margin">
					&copy; 2014 <strong>CRM后台管理系统</strong>.@CRM后台管理系统  
				</p>	
		</footer>
		
		</div><!--wrapper-->
		
		
	 <script type="text/javascript" language="javascript" class="init">
$(document).ready(function() {
  $('#table').DataTable( {
		"ajax": {
			"url": "../data/kh(库管理).json",
			"dataSrc": ""
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
	
	
});
	</script>

	</body>
</html>

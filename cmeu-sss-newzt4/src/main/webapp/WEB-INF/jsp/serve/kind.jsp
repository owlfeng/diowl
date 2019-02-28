<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>产品类别</title>
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
							<li>客户管理</li>
							<li>产品类别</li>
						</ul>

						<div class="smart-widget">
							<div class="smart-widget-inner">
								<div class="smart-widget-body">
									<form class="form-inline" role="form">
										<div class="form-group">
											产品： <select id="selectError" class="c0">
												<option></option>
												<option value="机械及行业设备">机械及行业设备</option>
												<option value="电子元器件">电子元器件</option>
												<option value="礼品、工艺品">礼品、工艺品</option>
												<option value="家具用电">家具用电</option>
												<option value="电工电气">电工电气</option>
												<option value="建筑建材">建筑建材</option>
												<option value="五金、工具">五金、工具</option>
											</select>
										</div>
										&nbsp;&nbsp;


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
							<div class="smart-widget-header">
								表格 <span class="smart-widget-option"> <span
									class="refresh-icon-animated"> <i
										class="fa fa-circle-o-notch fa-spin"></i>
								</span> <a href="#" class="widget-collapse-option"
									data-toggle="collapse"> <i class="fa fa-chevron-up"></i>
								</a> <a href="#" class="widget-remove-option"> <i
										class="fa fa-times"></i>
								</a>
								</span>
							</div>
							<div class="smart-widget-inner">
								<div class="smart-widget-body no-padding">
									<div class="padding-md">

										<table id="table" class="dataTable display" cellspacing="0"
											width="100%">
											<thead>
												<tr>
													<th style="text-align: center;">简称</th>
													<th style="text-align: center;">名称</th>
													<th style="text-align: center;">产品</th>
													<th style="text-align: center;">数量</th>
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

	<script type="text/javascript" language="javascript" class="init">
$(document).ready(function() {
	$('#table').DataTable( {
	"ajax": {
			"url": "../data/kh(产品类别).json",
			 "datasrc":"",
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
			{ "data": "item4" }
		]
	} );
	
	
});
	</script>

</body>
</html>

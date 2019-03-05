<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>产品信息</title>
<jsp:include page="/WEB-INF/jsp/config/baseConfig.jsp" />
</head>
<body>
			<div class="padding-md">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li class="active"><a href="../index.html"> <i
									class="fa fa-home"></i>首页
							</a></li>
							<li>服务管理</li>
							<li>合同订单</li>
						</ul>

						<div class="smart-widget">
							<div class="smart-widget-inner">
								<div class="smart-widget-body">
									<form class="form-inline" role="form">
										<div class="form-group">
											<form class="well form-search">
												对应客户 ： <input type="text" class="input-medium search-query">
										</div>

										<div class="form-group">
											分类 <select id="selectError" class="c0">
												<option></option>
												<option value="代理销售">代理销售</option>
												<option value="服务">服务</option>
												<option value="产品销售">产品销售</option>
												<option value="其他">其他</option>
											</select>
										</div>
										&nbsp;&nbsp;
										<div class="form-group">
											到期筛选：<select id="selectError" class="c1">
												<option></option>
												<option value="代理销售">代理销售</option>
												<option value="三天内合同到期">三天内合同到期</option>
												<option value="一周内合同到期">一周内合同到期</option>
												<option value="15天内合同到期">15天内合同到期</option>
												<option value="一个月内合同到期">一个月内合同到期</option>
												<option value="三个月内合同到期">三个月内合同到期</option>
												<option value="半年内合同到期">半年内合同到期</option>
												<option value="一年内合同到期">一年内合同到期</option>
												<option value="合同到期">合同到期</option>
											</select>
										</div>
										<div class="form-group">
											日期： <input type="text" class="input-medium " id="startTime" />
										</div>
										<span>TO</span>
										<div class="form-group">

											<input type="text" class="input-medium " id="endTime" />
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
													<th style="text-align: center;">主题</th>
													<th style="text-align: center;">对应客户</th>
													<th style="text-align: center;">分类</th>
													<th style="text-align: center;">开始日期</th>
													<th style="text-align: center;">结束日期</th>
													<th style="text-align: center;">金额</th>
													<th style="text-align: center;">创建人</th>
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
	<script type="text/javascript"> 
	   $("#startTime").datetimepicker({
  	       minView: "month",
  	       language:  'cn',
  	       format: 'yyyy-mm-dd hh:ii',
  	       autoclose: true,
  	       todayBtn: true,
  	       pickerPosition: "bottom-left"
  	   }).on('changeDate',function(ev){
  	        var starttime=$("#startTime").val();
  	$("#endTime").datetimepicker('setStartDate',starttime);
  	        $("#startTime").datetimepicker('hide');
  	   });

  	/*结束时间的插件 */
  	   $("#endTime").datetimepicker({
  	       minView: "month",
  	       language:  'cn',
  	       format: 'yyyy-mm-dd hh:ii',
  	       autoclose: true,
  	       todayBtn: true,
  	       pickerPosition: "bottom-left"
  	   }).on('changeDate',function(ev){
  	        var starttime=$("#startTime").val();
  	        var endtime=$("#endTime").val();
  	        $("#startTime").datetimepicker('setEndDate',endtime);
  	        $("#endTime").datetimepicker('hide'); 
  	   });
</script>

	<script type="text/javascript" language="javascript" class="init">
$(document).ready(function() {
    $('#table').DataTable( {
        "ajax":{
        	 "url":"../data/kh(合同订单).json",
        	 "datasrc":"",
		       "dataType":"",
		       "server":"",//ture
		       "data":{}
        } ,
       "columns": [
		
			{ "data": "item" },
			{ "data": "item1" },
			{ "data": "item2" },
			{ "data": "item3" },
		  { "data": "item4" },
		  { "data": "item5" },
		  { "data": "item6" }
		], //支持国际化，将search转为中文
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
		
    } );
} );
	</script>


</body>
</html>

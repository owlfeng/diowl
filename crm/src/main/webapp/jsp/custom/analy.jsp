<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
		<title>客户分析</title>
		
  <jsp:include page="/WEB-INF/jsp/config/baseConfig.jsp" />
	
	</head>
	<body>
				<div class="padding-md">
					<div class="row">
						<div class="col-lg-12">
								<ul class="breadcrumb">
						<li class="active"><a href="index.html"> <i class="fa fa-home"></i>首页</a></li>
						<li>客户管理</li>
						<li>客户分析</li>
					</ul>
		
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
										     <table id="table1" class="dataTable display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th style="text-align: center;">客户状态</th>
						<th style="text-align: center;">类型</th>
						<th style="text-align: center;">数量</th>
					</tr>
				</thead>
			</table>
										</div>
									</div>
								</div><!-- ./smart-widget-inner -->
							</div><!-- ./smart-widget -->
						</div><!-- ./col -->
					</div>
				
									<div class="row">
						<div class="col-lg-12">
							<div class="smart-widget widget-dark-blue">
								<div class="smart-widget-header">
								图形
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
										    <div class="canvas-wrapper">
						     <div id="main" style="height:400px;"></div>
						</div>
										</div>
									</div>
								</div><!-- ./smart-widget-inner -->
							</div><!-- ./smart-widget -->
						</div><!-- ./col -->
					</div>
				</div><!-- ./padding-md -->
<script src="<%=request.getContextPath()%>/plugins/echarts/echarts.common.min.js"></script>
 <script type="text/javascript" language="javascript" class="init">
$(document).ready(function() {
    var Arr = new Array();//类型
    var ArrNum = new Array()//个数
    $.ajax(
        {
            type: "POST",
            url: "<%=request.getContextPath()%>/custom/queryEchart",
            dataType: 'json',
            success: function (result) {
                if (result) {
                    echartPie(result);
                }
            },
            error : function(errorMsg) {
                alert("加载数据失败");
            }
        });

    var dom = document.getElementById("main");
    var myChart = echarts.init(dom);
    function echartPie(result){

        option = null;
        option = {
            title: {
                text: '用户类型图',
                subtext: '',
                x: 'center'
            },
            tooltip: {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                orient: 'vertical',
                x: 'left',
                data: result

            },
            toolbox: {
                show: true,
                feature: {
                    mark: {show: true},
                    dataView: {show: true, readOnly: false},
                    magicType: {
                        show: true,
                        type: ['pie', 'funnel'],
                        option: {
                            funnel: {
                                x: '25%',
                                width: '50%',
                                funnelAlign: 'left',
                                max: 1700
                            }
                        }
                    },
                    restore: {show: true},
                    saveAsImage: {show: true}
                }
            },
            calculable: true,
            series: [
                {
                    name: '访问来源',
                    type: 'pie',
                    radius: '55%',
                    center: ['50%', '60%'],
                    data: result,
                    itemStyle: {
                        emphasis: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };

        if (option && typeof option === "object") {
            myChart.setOption(option, true);
        }
    }


//*******************DataTable***************************************************

    var tables = $('#table1').DataTable( {
		"ajax": {
			url:"<%=request.getContextPath()%>/custom/queryAnaly",
	         server:"",//ture
           type:"post",
			dataType:"json",
			data:{
			}
		},
        "columns": [
            { "data": "stageId" },
            { "data": "value" },
            { "data": "number" },
        ],
        columnDefs: [

        ],
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
//在每次table被draw完后回调函数
        fnDrawCallback: function () {
            var api = this.api();
        }

    });
});
	</script> 


	</body>
</html>

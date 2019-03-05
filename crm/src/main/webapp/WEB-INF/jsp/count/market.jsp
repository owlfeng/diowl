<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
		<title>市场分析</title>
		
<jsp:include page="/WEB-INF/jsp/config/baseConfig.jsp" />
 		
	</head>
	<body>
				<div class="padding-md">
					<div class="row">
						<div class="col-lg-12">
								<ul class="breadcrumb">
						<li class="active"><a href="index.html"> <i class="fa fa-home"></i>首页</a></li>
						<li>统计分析</li>
						<li>市场分析</li>
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
						<th style="text-align: center;">类型</th>
						<th style="text-align: center;">数量</th>
						<th style="text-align: center;">管理员</th>
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
						     <div id="main" style="height:400px"></div>
						</div>
										</div>
									</div>
								</div><!-- ./smart-widget-inner -->
							</div><!-- ./smart-widget -->
						</div><!-- ./col -->
					</div>
				</div><!-- ./padding-md -->
				
				
		
 <script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
    <script type="text/javascript">
        // 路径配置
        require.config({
            paths: {
                echarts: 'http://echarts.baidu.com/build/dist'
            }
        });
        
        // 使用
        require(
            [
                'echarts',
                'echarts/chart/pie' // 使用柱状图就加载bar模块，按需加载
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('main')); 
                
                var option = {
    title : {
        text: '数据分析',
        x:'center'
    },
     legend: {
     	         orient : 'vertical',
                 x : 'left',
                data:['潜在客户','意向客户','成交客户','失败客户','已流失客户','其他客户']
            },
    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    toolbox: {
                show : true,
                feature : {
                    mark : {show: true},
                    dataView : {show: true, readOnly: false},
                    magicType : {
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
                    restore : {show: true},
                    saveAsImage : {show: true}
                }
            },
    series : [
        {
            name: '访问来源',
            type: 'pie',
            radius : '55%',
            center: ['50%', '60%'],
            data:[
                {value:135, name:'潜在客户'},
                {value:210, name:'意向客户 '},
                {value:334, name:'成交客户'},
                {value:135, name:'失败客户'},
                {value:348, name:'已流失客户'},
                {value:848, name:'其他客户'}
            ],
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
 // 为echarts对象加载数据 
                myChart.setOption(option); 
            }
        );
    </script>

 <script type="text/javascript" language="javascript" class="init">
$(document).ready(function() {
    $('#table1').DataTable( {
           "ajax":{
        	
        	 "url":"../data/kh(费用).json",
        	 "datasrc":"",
        	 "dataType":"",
        	 "server":"",//ture
        	  "data":{}
       
        } ,
      "columns": [
		
			{ "data": "item" },
			{ "data": "item1" },
			{ "data": "item2" }
		],  //支持国际化，将search转为中文
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

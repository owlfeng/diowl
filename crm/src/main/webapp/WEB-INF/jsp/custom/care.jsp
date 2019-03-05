<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
		<title>客户关怀</title>
		
     <jsp:include page="/WEB-INF/jsp/config/baseConfig.jsp" />
 		
	</head>
	
	
	<body>
			<div class="padding-md">
					<div class="row">
						<div class="col-lg-12">
								<ul class="breadcrumb">
						<li class="active"><a href="index.html"> <i class="fa fa-home"></i>首页</a></li>
						<li>客户管理</li>
						<li>客户关怀</li>
					</ul>
		
						</div>
					</div><!--row end-->
				   
					<div class="smart-widget">
						<div class="smart-widget-inner">
							<div class="smart-widget-body">
               <form class="form-inline" role="form">
                            <div class="form-group">
                          <form class="well form-search">   关怀主题：
  			<input type="text" class="input-medium search-query">
                           </div>&nbsp;&nbsp;
                             <div class="form-group">
                           <form class="well form-search">   对应客户 ：
  			<input type="text" class="input-medium search-query">
                          </div>&nbsp;&nbsp;&nbsp;&nbsp;
                            <div class="form-group">
                         	  日期：
                   <input  type="text" class="input-medium " id="startTime" />
                            </div>
                            <div class="form-group">
                         	  TO
                   <input  type="text" class="input-medium " id="endTime" />
                            </div>
                        </form> 

							</div>		 
							</div>		 
						</div><!-- ./smart-widget-inner -->
				
									<div class="row">
						<div class="col-lg-12">
							<div class="smart-widget widget-dark-blue">
								<div class="smart-widget-header">
								表格
									<span class="smart-widget-option">
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
										   <table id="dataTable" class="dataTable display" cellspacing="0" width="100%">
													<thead>
														<tr>
															<th style="text-align: center;">关怀主题</th>
															<th style="text-align: center;">对应客户</th>
															<th style="text-align: center;">联系人</th>
															<th style="text-align: center;">创建日期</th>	
															<th style="text-align: center;">执行人</th>
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

<script type="text/javascript">

var tables = $("#dataTable").dataTable({
       serverSide: false,//分页，取数据等等的都放到服务端去
       //processing: true,//载入数据的时候是否显示“载入中”
       pageLength: 10,//首次加载的数据条数
       ordering: false, //排序操作在服务端进行，所以可以关了。
       pagingType: "full_numbers",//显示首页和尾页
       autoWidth: false,//禁止自动计算列宽
       stateSave: true,//保持翻页状态，和comTable.fnDraw(false);结合使用
       searching: false,//禁用datatables搜索
       ajax: {
           type: "post",
           url: "<%=request.getContextPath()%>/queryCare",
            dataSrc: "data",
            dataType:'json',
            data:{
            }
        },
        columns: [//对应上面thead里面的序列
        	{"data":"careName"},
            {"data": function(customer){
            	return customer.adress;
            }},
            {"data": "name"},
            {"data": function(obj){ 
	                	 return getMyDate(obj.createData);//createTime是实体类的属性
	            	 }
            },  
           /*  {"data":'columnDefs'} */

        ],
      //操作按钮
        /* columnDefs: {
                targets: 0,
                defaultContent: "<input type='checkbox' name='checkList'>"
            }, */
        language: {
            "decimal":        "",
            "emptyTable":     "No data available in table",
            "info":           "显示 _START_ 到 _END_ 条 共 _TOTAL_ 条",
            "infoEmpty":      "显示 0 到 0 条 共 0 条",
            "infoFiltered":   "(filtered from _MAX_ total entries)",
            "infoPostFix":    "",
            "thousands":      ",",
            
            "lengthMenu":     "显示 _MENU_ 条",
            "loadingRecords": "Loading...",
            "processing":     "Processing...",
            "search":         "",
            "zeroRecords":    "没有匹配项",
            "paginate": {
                "first":      "首页",
                "last":       "尾页", 
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
//将时间戳格式化 
function getMyDate(time){ 
    if(typeof(time)=="undefined"){
        return "";
    }
    var oDate = new Date(time),  
     oYear = oDate.getFullYear(),  
     oMonth = oDate.getMonth()+1,  
     oDay = oDate.getDate(),  
     oHour = oDate.getHours(),  
     oMin = oDate.getMinutes(),  
     oSen = oDate.getSeconds(),  
     oTime = oYear +'-'+ getzf(oMonth) +'-'+ getzf(oDay) +' '+ getzf(oHour) +':'+ getzf(oMin) +':'+getzf(oSen);//最后拼接时间  
            
     return oTime;  
    };
</script>

	</body>
</html>

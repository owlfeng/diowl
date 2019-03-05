<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
pageContext.setAttribute("path", path);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>客户信息</title>
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
							<li>客户信息</li>
						</ul>

						<div class="smart-widget">
							<div class="smart-widget-inner">
								<div class="smart-widget-body">
									<form class="form-inline" role="form">
										<div class="form-group">
											联系人名称 ： <input type="text" id="selectName"
												class="input-medium search-query">

										</div>
										&nbsp;&nbsp;
										<div class="form-group">
											分类 <select id="selectCategory" class="c0">
												<option></option>
												<c:forEach items="${allCustomerCategory }"
													var="customerCategory">
													<option value="${customerCategory.customerCategoryId }">${customerCategory.customerCategoryValue }</option>
												</c:forEach>
											</select>
										</div>
										&nbsp;&nbsp;
										<div class="form-group">
											地址：<select id="selectAdress" class="c1">
												<option></option>
												<c:forEach items="${allAdress }" var="adress">
													<option value="${adress.adressId }">${adress.adressValue }</option>
												</c:forEach>
												<option value="济南">济南</option>
												<option value="湖南">湖南</option>
												<option value="湖北">湖北</option>
												<option value="哈尔滨">哈尔滨</option>
												<option value="河北">河北</option>
												<option value="青海">青海</option>
												<option value="广州">广州</option>
												<option value="杭州">杭州</option>
												<option value="南京">南京</option>
												<option value="上海">上海</option>
												<option value="郑州">郑州</option>
												<option value="青岛">青岛</option>
												<option value="沈阳">沈阳</option>
												<option value="厦门">厦门</option>
												<option value="苏州">苏州</option>
												<option value="成都">成都</option>
												<option value="香港">香港</option>
												<option value="澳门">澳门</option>
												<option value="台北">台北</option>
												<option value="深圳">深圳</option>

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
										<!-- 查询、添加、批量删除、导出、刷新 -->
										<div class="pull-right">
											<div class="btn-group">
												<button type="button" class="btn btn-info btn-sm"
													id="btn-add">
													<i class="fa fa-plus"></i> 添加
												</button>
												<button type="button" class="btn btn-default btn-sm"
													id="btn-delAll">
													<i class="fa fa-remove"></i> 删除
												</button>
												<button type="button" class="btn btn-success btn-sm"
													id="btn-export">
													<i class="fa fa-sign-in"></i> 导出
												</button>
												<button type="button" class="btn btn-primary-outline btn-sm"
													id="btn-re">
													<i class="fa fa-refresh"></i> 刷新
												</button>
											</div>
										</div>

										<div class="row pull-left">
											<form class="form-inline" role="form" id="queryForm"
												action="" method="post">
												<div class="form-group">
													<input type="text" id="seachname" name="seachname"
														class="form-control " placeholder="搜索" value="" />
													<button type="button" class="btn btn-primary btn-sm"
														id="btn-query">
														<i class="fa fa-search"></i> 查询
													</button>
												</div>
												&nbsp;&nbsp;

											</form>

										</div>
										<table id="dataTable" class="dataTable display"
											cellspacing="0" width="100%">
											<thead>
												<tr>
													<th><input type="checkbox" id="checkAll"></th>
													<th style="text-align: center;">客户编号</th>
													<th style="text-align: center;">客户名称</th>
													<th style="text-align: center;">联系方式</th>
													<th style="text-align: center;">邮箱</th>
													<th style="text-align: center;">客户种类</th>
													<th style="text-align: center;">地址</th>
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

	<div class="modal fade" id="editModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span> <span class="sr-only"></span>
					</button>
					<h4 class="modal-title" id="myModalLabel">信息修改</h4>
				</div>

				<div class="modal-body">
					<form class="form-horizontal" id="editForm" action="" method="post">
						<input type="hidden" class="form-control" name="customerId">
						<div class="form-group">
							<label for="inputName" class="col-sm-3 control-label">客户名称</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="name" value="">
							</div>
						</div>
						<div class="form-group">
							<label for="inputName" class="col-sm-3 control-label">联系方式</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="telephone"
									value="">
							</div>
						</div>
						<div class="form-group">
							<label for="inputName" class="col-sm-3 control-label">邮箱</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="email" value="">
							</div>
						</div>
						<div class="form-group">
							<label for="inputName" class="col-sm-3 control-label">种类</label>
							<%-- <div class="col-sm-9">
                                <input type="text" class="form-control" name="category" value="${updateInfo.category }">
                            </div> --%>
							<div class="col-sm-9">
								<select name="category_id" class="form-control">
									<option></option>
									<c:forEach items="${allCustomerCategory }"
										var="customerCategory">
										<option value="${customerCategory.customerCategoryId }">${customerCategory.customerCategoryValue }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="inputName" class="col-sm-3 control-label">地址</label>
							<div class="col-sm-9">
								<select name="adress" class="form-control">
									<option></option>
									<option value="济南">济南</option>
									<option value="湖南">湖南</option>
									<option value="湖北">湖北</option>
									<option value="哈尔滨">哈尔滨</option>
									<option value="河北">河北</option>
									<option value="青海">青海</option>
									<option value="广州">广州</option>
									<option value="杭州">杭州</option>
									<option value="南京">南京</option>
									<option value="上海">上海</option>
									<option value="郑州">郑州</option>
									<option value="青岛">青岛</option>
									<option value="沈阳">沈阳</option>
									<option value="厦门">厦门</option>
									<option value="苏州">苏州</option>
									<option value="成都">成都</option>
									<option value="香港">香港</option>
									<option value="澳门">澳门</option>
									<option value="台北">台北</option>
									<option value="深圳">深圳</option>
								</select>
							</div>
						</div>
					</form>
				</div>
				<!-- modal-body END -->

				<div class="modal-footer">
					<button type="submit" id="btn-submit" class="btn btn-primary">确认</button>
				</div>
			</div>
		</div>
	</div>

	<script>
 $(function () {
		//添加、修改异步提交地址
		var str = "";
		str += "<div class='btn-group'>" +
        "<button id='editRow' class='btn btn-primary btn-sm' type='button'><i class='fa fa-edit'></i></button>" +
        "<button id='delRow' class='btn btn-primary btn-sm btn-del' type='button'><i class='fa fa-trash-o'></i></button>" +
        "</div>"; 
        var url = "";
        //搜索框
        
        	       
        var tables = $("#dataTable").dataTable({
            serverSide: true,//分页，取数据等等的都放到服务端去
            //processing: true,//载入数据的时候是否显示“载入中”
            pageLength: 10,//首次加载的数据条数
            ordering: false, //排序操作在服务端进行，所以可以关了。
            pagingType: "full_numbers",//显示首页和尾页
            autoWidth: false,//禁止自动计算列宽
            stateSave: true,//保持翻页状态，和comTable.fnDraw(false);结合使用
            searching: false,//禁用datatables搜索
            ajax: {
                type: "post",
                url: "<%=request.getContextPath()%>/queryCustomer",
                dataSrc: "data",
                dataType:'json',
                data:{
                	'name': "",
                	'email':'',
                	'telephone':'',
        			'customerCategoryValue': '',
        			"adress": '',
        			'id':''
                }
            },
            columns: [//对应上面thead里面的序列
            	{"data":"null"},
                {"data": "id"},
                {"data": "name"},
                {"data": "telephone"},
                {"data": 'email'},
                {"data": 'customerCategoryValue'},
                {"data": 'adress'},
                {"data":'columnDefs'}

            ],
          //操作按钮
            columnDefs: [
                {
                    targets: 0,
                    defaultContent: "<input type='checkbox' name='checkList'>"
                },
                {
                    targets: -1,
                    defaultContent: str
                }
            ],
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

		//查询按钮
        $("#btn-query").on("click", function () {
        	
        	var param = {
                	name : $("#seachname").val()
             };
             tables.fnSettings().ajax.data=param; 
             tables.api().ajax.reload();
             tables.fnDraw();//查询后不需要保持分页状态，回首页
        });
		
		

		//添加
        $("#btn-add").on("click", function () {
            url = "${path}/newCustomer";
            $("input[name=customerId]").val(null);
            $("input[name=name]").val("");
            $("input[name=telephone]").val("");
            $("input[name=email]").val("");
            $("select[name=category_id]").val("");
            $("select[name=adress]").val("");
            
            $("#editModal").modal("show");
        });

		//批量删除
        $("#btn-delAll").on("click", function () {
        	var flag;
        	$("#dataTable").find(":input:checked").each(function() {
				if ($(this).attr("checked")=="checked") {
					flag=true;
				}
        	});
        	
        	if(flag==true){
	        	if (confirm("是否确认删除这几条信息?")) {
	        		$("#dataTable").find(":input:checked").each(function() {
	        		var datas = tables.api().row($(this).parents("tr")).data();
							$.ajax({
		                    url: '${path}/delCustomer',
		                    type: 'post',
		                    data: {'id':datas.id},
		                    dataType: "json",
		                    cache: "false",
		                    success: function (result) {
		                    	if(result.msg == "success"){
		                    		tables.api().row().remove().draw(false);
		                    	}else{
		                    		alert("系统故障，删除失败");
		                    	}
		                    }
						});
	        		});
	        	}
	        }
        	else
        	{
        		alert("你没有选中要删除的数据");
        	}
		});
		//导出
        $("#btn-export").on("click", function () {
        });

		//刷新
        $("#btn-re").on("click", function () {
            tables.fnDraw(false);//刷新保持分页状态
        });

		//checkbox全选
        $("#checkAll").on("click", function () {
            if ($(this).prop("checked") === true) {
                $("input[name='checkList']").prop("checked", $(this).prop("checked"));
                $("#dataTable tbody tr").addClass('selected');
                $(this).hasClass('selected')
            } else {
                $("input[name='checkList']").prop("checked", false);
                $("#dataTable tbody tr").removeClass('selected');
            }
        });

		//修改
        $("#dataTable tbody").on("click", "#editRow", function () {
            var data = tables.api().row($(this).parents("tr")).data();
            $("input[name=customerId]").val(data.id);
            $("input[name=name]").val(data.name);
            $("input[name=telephone]").val(data.telephone);
            $("input[name=email]").val(data.email);
            $("select[name='category_id'] option:contains('"+data.customerCategoryValue+"')").attr("selected",true);//+"+data.customerCategoryValue+"+
            //console.log();
            $("select[name='adress'] option:contains('"+data.adress+"')").attr("selected",true);
            url = "${path}/updateCustomer";

            $("#editModal").modal("show");
        });
		//表单提交
        $("#btn-submit").on("click", function () {
            $.ajax({
                cache: false,//true的话会读缓存，可能真的到服务器上
                type: "POST",
                url: url,
                data: $("#editForm").serialize(),
                async: false,
                dataType:"json",
                error: function (request) {
                    <%-- showFail("Server Connection Error<%=request.getContextPath()%>."); --%>
                },
                success: function (result) {
                	console.log(result.msg);
                    if (result.msg == "success") {
                   		$("#editModal").modal("hide");
                        tables.fnDraw(false);
                    } else if(result.error!=""||result.error!=null){
                    	alert(result.error);
                    	$("#editModal").modal("hide");
                    } else{
                    	alert("系统故障，操作失败");
                    	$("#editModal").modal("hide");
                    }
                }
            });
        });

		//删除
        $("#dataTable tbody").on("click", "#delRow", function () {
            var data = tables.api().row($(this).parents("tr")).data();
            if (confirm("是否确认删除这条信息?")) {
            	/* console.log( data.id); */
                $.ajax({
                    url: '${path}/delCustomer',
                    type: 'post',
                    data: {'id':data.id},
                    dataType: "json",
                    cache: "false",
                    success: function (result) {
                    	if(result.msg == "success"){
                    		tables.api().row().remove().draw(false);
                    	}else{
                    		alert("系统故障，删除失败");
                    	}
                    },
                    error: function (err) {
                    	alert("系统故障，删除失败");
                    } 
                });
            }
        });
		//多条件查询
  		function query() {
        	var param = {
        			name : $("#selectName").val(),
        	    	category_id : $("#selectCategory").val(),
        	     	adress : $("#selectAdress").val()
             };
             tables.fnSettings().ajax.data=param;
             tables.api().ajax.reload();
            //tables.fnDraw();//查询后不需要保持分页状态，回首页
        }
         $("#selectName").on('keyup',function(){
        	query();
        });
        $("#selectCategory").on('change',function(){
        	query();
        });
        $("#selectAdress").on('change',function(){
        	query();
        }); 

    });
</script>
</body>
</html>

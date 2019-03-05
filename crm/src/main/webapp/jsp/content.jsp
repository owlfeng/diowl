<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="/WEB-INF/jsp/config/baseConfig.jsp" />
</head>
<body>
	<div class="padding-md">
		<ul class="breadcrumb">
			<li class="active"><a href="<%=request.getContextPath()%>/content"> <i
					class="fa fa-home"></i>首页
			</a></li>
			<li>常用</li>
		</ul>
		<div class="smart-widget">
			<div class="smart-widget-inner">
				<div class="smart-widget-body">
					<button class="btn btn-info btn-md" data-toggle="modal"
						data-target="#add">新建</button>
					<button class="btn btn-default btn-md" data-toggle="modal"
						data-target="#fankui">反馈</button>
					<button class="btn btn-default btn-md" data-toggle="modal"
						data-target="#manyidu">满意度</button>
				</div>
			</div>
			<!-- ./smart-widget-inner -->
		</div>
		<!-- ./smart-widget -->

		<div class="row">
			<div class="col-lg-6">
				<div class="smart-widget">
					<div class="smart-widget-header">
						待办任务 <span class="smart-widget-option"> <span
							class="refresh-icon-animated"> <i
								class="fa fa-circle-o-notch fa-spin"></i>
						</span> <a href="#" class="widget-toggle-hidden-option"> <i
								class="fa fa-cog"></i>
						</a> <a href="#" class="widget-collapse-option" data-toggle="collapse">
								<i class="fa fa-chevron-up"></i>
						</a> <a href="#" class="widget-refresh-option"> <i
								class="fa fa-refresh"></i>
						</a></span>
					</div>
					<div class="smart-widget-inner">
						<div class="smart-widget-hidden-section">
							<ul class="widget-color-list clearfix">
								<li style="background-color: #20232b;" data-color="widget-dark"></li>
								<li style="background-color: #4c5f70;"
									data-color="widget-dark-blue"></li>
								<li style="background-color: #23b7e5;" data-color="widget-blue"></li>
								<li style="background-color: #2baab1;" data-color="widget-green"></li>
								<li style="background-color: #edbc6c;"
									data-color="widget-yellow"></li>
								<li style="background-color: #fbc852;"
									data-color="widget-orange"></li>
								<li style="background-color: #e36159;" data-color="widget-red"></li>
								<li style="background-color: #7266ba;"
									data-color="widget-purple"></li>
								<li style="background-color: #f5f5f5;"
									data-color="widget-light-grey"></li>
								<li style="background-color: #fff;" data-color="reset"></li>
							</ul>
						</div>
						<div class="smart-widget-body no-padding">
							<div class="padding-md">
								<div id="totalSalesChart" class="morris-chart"
									style="height: 250px;"></div>
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






	<!--弹出窗口 新建-->
	<div class="modal fade" id="add" role="dialog"
		aria-labelledby="gridSystemModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">新建</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form class="form-horizontal" id="editForm"
							action="${path }/newCustomer" method="post">
							<div class="form-group ">
								<label class="col-xs-3 control-label">客户名称：</label>
								<div class="col-xs-8 ">
									<input type="email" class="form-control input-sm duiqi"
										name="name" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label">分类：</label>
								<div class="col-xs-8 ">
									<select name="category" class="form-control">
										<option></option>
										<option value="特别重要">特别重要</option>
										<option value="重要">重要</option>
										<option value="普通">普通</option>
										<option value="不重要">不重要</option>
										<option value="失效">失效</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label">联系方式：</label>
								<div class="col-xs-8">
									<input type="text" name="telephone"
										class="form-control input-sm duiqi" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label">邮箱：</label>
								<div class="col-xs-8">
									<input type="text" name="email"
										class="form-control input-sm duiqi" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label">地址：</label>
								<div class="col-xs-8">
									<select name="adress" class="form-control">
										<option></option>
										<option value="北京">北京</option>
										<option value="湖南">湖南</option>
										<option value="河北">河北</option>
										<option value="天津">天津</option>
										<option value="山东">山东</option>
										<option value="浙江">浙江</option>
										<option value="哈尔滨">哈尔滨</option>
										<option value="武汉">武汉</option>
										<option value="重庆">重庆</option>
										<option value="广州">广州</option>
										<option value="上海">上海</option>
										<option value="深圳">深圳</option>
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-xs-3 control-label">行业：</label>
								<div class="col-xs-8">
									<select name="" class="form-control">
										<option></option>
										<option value="机械及行业设备">机械及行业设备</option>
										<option value="电子元素器件">电子元素器件</option>
										<option value="礼品、工艺品、饰品">礼品、工艺品、饰品</option>
										<option value="电子电器">电子电器</option>
										<option value="家居用品">家居用品</option>
										<option value="建筑、建材">建筑、建材</option>
										<option value="五金、工具">五金、工具</option>
										<option value="其他">其他</option>
									</select>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-md btn-default"
						data-dismiss="modal">取 消</button>
					<button type="button" id="submitNewForm"
						class="btn btn-md btn-info">保 存</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->


	<!--modal反馈-->
	<div class="modal fade" id="fankui" role="dialog"
		aria-labelledby="gridSystemModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">反馈内容</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form class="form-horizontal">
							<div class="form-group ">
								<label class="col-xs-3 control-label">客户：</label>
								<div class="col-xs-8 ">
									<input type="email" class="form-control input-sm duiqi"
										id="sName" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="sshijian" class="col-xs-3 control-label">时间：</label>
								<div class="col-xs-8 ">
									<input type="text" class="form-control" id="startTime"
										placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="sKnot" class="col-xs-3 control-label">投诉分类：</label>
								<div class="col-xs-8">
									<select class="form-control">
										<option></option>
										<option value="产品投诉">产品投诉</option>
										<option value="服务投诉">服务投诉</option>
										<option value="客户意见">客户意见</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label">投诉内容：</label>
								<div class="col-lg-8">

									<textarea class="form-control" rows="3"></textarea>

								</div>
							</div>

						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-md btn-default"
						data-dismiss="modal">取 消</button>
					<button type="button" class="btn btn-md btn-info">保 存</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- modal -->


	<!--modal满意度-->
	<div class="modal fade" id="manyidu" role="dialog"
		aria-labelledby="gridSystemModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">满意度</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form class="form-horizontal">
							<div class="form-group ">
								<label for="sName" class="col-xs-3 control-label">客户：</label>
								<div class="col-xs-8 ">
									<input type="email" class="form-control input-sm duiqi"
										id="sName" placeholder="">
								</div>
							</div>

							<div class="form-group ">
								<label for="sName" class="col-xs-3 control-label">客户来源：</label>
								<div class="col-xs-8 ">
									<select class="form-control">
										<option></option>
										<option value="注册会员">注册会员</option>
										<option value="朋友介绍">朋友介绍</option>
										<option value="手工录入">手工录入</option>
										<option value="失败客户">失败客户</option>
										<option value="行业展会">行业展会</option>
										<option value="客户介绍">客户介绍</option>
										<option value="电子商务">电子商务</option>
										<option value="未归类">未归类</option>
									</select>
								</div>
							</div>

							<div class="form-group ">
								<label for="sName" class="col-xs-3 control-label">客户状态：</label>
								<div class="col-xs-8 ">
									<select class="form-control">
										<option></option>
										<option value="潜在客户">潜在客户</option>
										<option value="意向客户">意向客户</option>
										<option value="成交客户">成交客户</option>
										<option value="失败客户">失败客户</option>
										<option value="已流失客户">已流失客户</option>
										<option value="未归类">未归类</option>
									</select>
								</div>
							</div>

							<div class="form-group">
								<label for="smyd" class="col-xs-3 control-label">满意度：</label>
								<div class="col-xs-8">
									<select class="form-control">
										<option></option>
										<option value="A+:明确成交意向">A+:明确成交意向</option>
										<option value="A-：有初步成交意向">A-：有初步成交意向</option>
										<option value="B+:关键人有成交意向">B+:关键人有成交意向</option>
										<option value="B-：关键人成交意向不确定">B-：关键人成交意向不确定</option>
										<option value="C+：初步联系，有意向">C+：初步联系，有意向</option>
										<option value="C-:初步联系，意向不确定">C-:初步联系，意向不确定</option>
										<option value="D：新建客户">D：新建客户</option>
									</select>
								</div>
							</div>

							<div class="form-group">
								<label for="sneirong" class="col-xs-3 control-label">评价内容：</label>
								<div class="col-lg-8">

									<textarea class="form-control" rows="3"></textarea>

								</div>
							</div>

						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-md btn-default"
						data-dismiss="modal">取 消</button>
					<button type="button" class="btn btn-md btn-info">保 存</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- modal -->

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
pageContext.setAttribute("path", path);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet"
	href="${path }/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${path }/bootstrap/css/bootstrapValidator.css">
<link rel="stylesheet"
	href="${path }/plugins/tx1/AdminLTE.css">

<link rel="stylesheet"
	href="${path }/plugins/tx1/test.css">
<script
	src="${path }/plugins/jquery/jquery.min.js"></script>
<script
	src="${path }/bootstrap/js/bootstrap.min.js"></script>
<script
	src="${path }/bootstrap/js/bootstrapValidator.js"></script>
<script>
	if (top != window)
		top.location.href = window.location.href;
</script>
<title>CRM</title>


</head>
<body class="bgtest">
<!--特效--><!--我是一个注解-->
	<canvas style="position:absolute; left:-10px"></canvas>
    
	<div class="login-box">
		<div class="login-logo">CRM管理系统</div>
		<!-- Custom Tabs (Pulled to the right) -->
		<div class="nav-tabs-custom">
			<ul class="nav nav-tabs pull-left">
				<li class="active"><a href="#tab_1-1" data-toggle="tab">用户登录</a></li>
				<li class="login-box-msg"><i class="fa fa-th"></i></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="tab_1-1">
					<!-- /.login-logo -->
					<div class="login-box-body">
					
						<br><br>
						<form id="form_login" action="${path }/login" method="post">
							<div class="form-group has-feedback">
								<input name="loginName" type="text" class="form-control"
									id="loginName" placeholder="您的用户名"> <span
									class="glyphicon glyphicon-user form-control-feedback"></span>
							</div>
							<div class="form-group has-feedback">
								<input name="password" type="password" class="form-control"
									id="password" placeholder="密码"> <span
									class="glyphicon glyphicon-lock form-control-feedback"></span>
							</div>
							<!--<div class="form-group">
								<div class="row">
									<div class="col-xs-6">
										<input name="jg_login_verify" type="text" class="form-control"
											id="validCode" placeholder="请输入验证码" />
									</div>
									<div class="col-xs-6 text-right">
										<img id="img_verify" style="max-width:100%;"
											src="<%=request.getContextPath()%>/rest/captcha-image" />
									</div>
								</div>
							</div>-->
							<div class="row">
								<!-- /.col -->
								<div class="col-xs-6">
									<button id="btn_reset" type="button"
										class="btn btn-primary btn-block btn-flat">重置</button>
								</div>
								<div class="col-xs-6">
									<button id="btn_login" type="submit"
										class="btn btn-primary btn-block btn-flat">登录</button>
								</div>
								<!-- /.col -->
							</div>
						</form>
					</div>
					<!-- /.login-box-body -->

				</div>
				<!-- /.tab-pane -->
				
			</div>
			<!-- /.tab-content -->
		</div>
		<!-- nav-tabs-custom -->
	</div>
	<!-- /.login-box -->
	
	<script>
		 $(document).ready(function() {
			//登录表单验证
		$('#form_login').bootstrapValidator({
				message : '提交数据不能全为空',
				feedbackIcons : {
					valid : 'glyphicon glyphicon-ok',
					invalid : 'glyphicon glyphicon-remove',
					validating : 'glyphicon glyphicon-refresh'
				},
				fields : {
					/*验证*/
					loginName : {
						/*键名username和input name值对应*/
						message : '用户验证失败',
						validators : {
							notEmpty : {
								/*非空提示*/
								message : '用户名不能为空'
							},
							regexp : {
								/* 只需加此键值对，包含正则表达式，和提示 */
								regexp : /[a-zA-Z0-9_]{2,16}/,
								message : '请正确输入您的用户名'
							}
						}
					},
					password : {
						message : '密码无效',
						validators : {
							notEmpty : {
								message : '密码不能为空'
							},
							stringLength : {
								min : 1,
								max : 6,
								message : '密码长度必须在6到30之间'
							}
						}
					}
				} //验证内容
			}).on('success.form.bv', function(e) {
				e.preventDefault();
				var $form = $(e.target);
				var bv = $form.data('bootstrapValidator');
				//这里提交表单
				$.post('<%=request.getContextPath()%>/login', {
					loginName : $("#loginName").val(),
					password : $("#password").val(),
				}, function(result) {
					if (result.msg == "success") {
						window.location.href = '<%=request.getContextPath()%>/index';
					} else {
						alert(result.msg);
					}
				},"json");
			});

			
			
			//重置按钮事件
			$("#btn_reset").on("click", function() {
				$("#loginName").val("");
				// $("#password").val("");
			});
			
			//tab2校验
			
			 $('#form_login1').bootstrapValidator({
				message : '提交数据不能全为空',
				feedbackIcons : {
					valid : 'glyphicon glyphicon-ok',
					invalid : 'glyphicon glyphicon-remove',
					validating : 'glyphicon glyphicon-refresh'
				},
				fields : {
					/*验证*/
					username1 : {
						/*键名username和input name值对应*/
						message : '用户验证失败',
						validators : {
							notEmpty : {
								/*非空提示*/
								message : '用户名不能为空'
							},
							regexp : {
								/* 只需加此键值对，包含正则表达式，和提示 */
								regexp : /[a-zA-Z0-9_]{2,16}/,
								message : '请正确输入您的用户名'
							}
						}
					},
					password1 : {
						message : '密码无效',
						validators : {
							notEmpty : {
								message : '密码不能为空'
							},
							stringLength : {
								min : 1,
								max : 6,
								message : '密码长度必须在6到30之间'
							}
						}
					}
				} //验证内容
			}).on('success.form.bv', function(e) {
				e.preventDefault();
				var $form = $(e.target);
				var bv = $form.data('bootstrapValidator');
				//这里提交表单
				$.post('<%=request.getContextPath()%>/login', {
					username : $("#username1").val(),
					password : $("#password1").val(),
				}, function(result) {
					if (result.msg == "success") {
						window.location.href = '<%=request.getContextPath()%>/index';
					} else {
						alert(result.msg);
					}
				},"json");
			});
			
			//重置按钮事件
			$("#btn_reset1").on("click", function() {
				$("#username1").val("");
				$("#password1").val("");
			});
			
		})
			
			
			
$(function(){
  var canvas = document.querySelector('canvas'),
      ctx = canvas.getContext('2d')
  canvas.width = window.innerWidth;
  canvas.height = window.innerHeight;
  ctx.lineWidth = .3;
  ctx.strokeStyle = (new Color(150)).style;

  var mousePosition = {
    x: 30 * canvas.width / 100,
    y: 30 * canvas.height / 100
  };

  var dots = {
    nb: 550,
    distance: 50,
    d_radius: 100,
    array: []
  };

  function colorValue(min) {
    return Math.floor(Math.random() * 255 + min);
  }
  
  function createColorStyle(r,g,b) {
    return 'rgba(' + r + ',' + g + ',' + b + ', 0.8)';
  }
  
  function mixComponents(comp1, weight1, comp2, weight2) {
    return (comp1 * weight1 + comp2 * weight2) / (weight1 + weight2);
  }
  
  function averageColorStyles(dot1, dot2) {
    var color1 = dot1.color,
        color2 = dot2.color;
    
    var r = mixComponents(color1.r, dot1.radius, color2.r, dot2.radius),
        g = mixComponents(color1.g, dot1.radius, color2.g, dot2.radius),
        b = mixComponents(color1.b, dot1.radius, color2.b, dot2.radius);
    return createColorStyle(Math.floor(r), Math.floor(g), Math.floor(b));
  }
  
  function Color(min) {
    min = min || 0;
    this.r = colorValue(min);
    this.g = colorValue(min);
    this.b = colorValue(min);
    this.style = createColorStyle(this.r, this.g, this.b);
  }

  function Dot(){
    this.x = Math.random() * canvas.width;
    this.y = Math.random() * canvas.height;

    this.vx = -.5 + Math.random();
    this.vy = -.5 + Math.random();

    this.radius = Math.random() * 2;

    this.color = new Color();
    /* console.log(this); */
  }

  Dot.prototype = {
    draw: function(){
      ctx.beginPath();
      ctx.fillStyle = this.color.style;
      ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2, false);
      ctx.fill();
    }
  };

  function createDots(){
    for(i = 0; i < dots.nb; i++){
      dots.array.push(new Dot());
    }
  }

  function moveDots() {
    for(i = 0; i < dots.nb; i++){

      var dot = dots.array[i];

      if(dot.y < 0 || dot.y > canvas.height){
        dot.vx = dot.vx;
        dot.vy = - dot.vy;
      }
      else if(dot.x < 0 || dot.x > canvas.width){
        dot.vx = - dot.vx;
        dot.vy = dot.vy;
      }
      dot.x += dot.vx;
      dot.y += dot.vy;
    }
  }

  function connectDots() {
    for(i = 0; i < dots.nb; i++){
      for(j = 0; j < dots.nb; j++){
        i_dot = dots.array[i];
        j_dot = dots.array[j];

        if((i_dot.x - j_dot.x) < dots.distance && (i_dot.y - j_dot.y) < dots.distance && (i_dot.x - j_dot.x) > - dots.distance && (i_dot.y - j_dot.y) > - dots.distance){
          if((i_dot.x - mousePosition.x) < dots.d_radius && (i_dot.y - mousePosition.y) < dots.d_radius && (i_dot.x - mousePosition.x) > - dots.d_radius && (i_dot.y - mousePosition.y) > - dots.d_radius){
            ctx.beginPath();
            ctx.strokeStyle = averageColorStyles(i_dot, j_dot);
            ctx.moveTo(i_dot.x, i_dot.y);
            ctx.lineTo(j_dot.x, j_dot.y);
            ctx.stroke();
            ctx.closePath();
          }
        }
      }
    }
  }

  function drawDots() {
    for(i = 0; i < dots.nb; i++){
      var dot = dots.array[i];
      dot.draw();
    }
  }

  function animateDots() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    moveDots();
    connectDots();
    drawDots();

    requestAnimationFrame(animateDots);	
  }

  $('canvas').on('mousemove', function(e){
    mousePosition.x = e.pageX;
    mousePosition.y = e.pageY;
  });

  $('canvas').on('mouseleave', function(e){
    mousePosition.x = canvas.width / 2;
    mousePosition.y = canvas.height / 2;
  });

  createDots();
  requestAnimationFrame(animateDots);	
});

	</script>
	
</body>
</html>
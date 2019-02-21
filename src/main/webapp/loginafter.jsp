<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>
            X-admin v1.0
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="shortcut icon" href="${pageContext.request.contextPath }/static/favicon.ico" type="image/x-icon" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/static/after/css/x-admin.css" media="all">
    </head>
    <body style="background-color: #393D49">
        <div class="x-box">
            <div class="x-top">
                <i class="layui-icon x-login-close">
                    &#x1007;
                </i>
                <ul class="x-login-right">
                    <li style="background-color: #F1C85F;" color="#F1C85F">
                    </li>
                    <li style="background-color: #EA569A;" color="#EA569A">
                    </li>
                    <li style="background-color: #393D49;" color="#393D49">
                    </li>
                </ul>
            </div>
            <div class="x-mid">
                <div class="x-avtar">
                    <img src="${pageContext.request.contextPath }/static/images/logo.png" alt="">
                </div>
                <div class="input">
                    <form class="layui-form" method="get" action="${pageContext.request.contextPath }/index.jsp">
                        <div class="layui-form-item x-login-box">
                            <label for="username" class="layui-form-label">
                                <i class="layui-icon">&#xe612;</i>
                            </label>
                            <div class="layui-input-inline">
                                <input type="text" id="username" name="username" required="" lay-verify="username"
                                autocomplete="off" placeholder="请输入管理名" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item x-login-box">
                            <label for="pass" class="layui-form-label">
                                <i class="layui-icon">&#xe628;</i>
                            </label>
                            <div class="layui-input-inline">
                                <input type="password" id="pass" name="pass" required="" lay-verify="pass"
                                autocomplete="off" placeholder="请输入密码" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item" id="loginbtn">
                       <input type="submit" class="layui-btn" value="登录" >
                            <!--  <button  class="layui-btn" lay-filter="save" lay-submit="">
                                                                             登录
                            </button> -->
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <p style="color:#fff;text-align: center;">Copyright Â© 2017.Company name All rights X-admin </p>
        <script src="./static/after/lib/layui/layui.js" charset="utf-8">
        </script>
        <script>
            layui.use(['form'],
            function() {
                 $ = layui.jquery;
                var form = layui.form(),
                layer = layui.layer;
 
                $('.x-login-right li').click(function(event) {
                    color = $(this).attr('color');
                    $('body').css('background-color', color);
                });

                //监听提交
             /*    form.on('submit(save)',
                function(data) {
                    console.log(data);
                    layer.alert(JSON.stringify(data.field), {
                      title: '最终的提交信息'
                    },function  () {
                        location.href = "${pageContext.request.contextPath }/WEB-INF/jsp/after/index.jsp";
                    })
                    return false;
                });  

            }); */

        </script>
    </body>

</html>
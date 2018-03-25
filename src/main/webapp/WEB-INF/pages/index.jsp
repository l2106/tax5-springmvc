<%--
  Created by IntelliJ IDEA.
  User: chengyi
  Date: 2018-03-24
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" src="/tax5-springmvc/statics/js/jquery-2.2.3.min.js"></script>
    <script type="text/javascript" src="/tax5-springmvc/statics/js/main.js"></script>
    <link rel="stylesheet" href="/tax5-springmvc/statics/css/bootstrap.min.css">
    <script src="/tax5-springmvc/statics/js/bootstrap.min.js"></script>
    <title>契税业务办理</title>
    <style>
        #tab {
            text-align: center;
            margin-top: 15%;
        }

        .collectInfo {
            margin-top: 15%;
            margin-left: 35%;
            margin-right: 35%;
        }
    </style>
</head>
<body>
<div class="content">
    <div id="tab">

        <div>
            <img id="zlf" src="/tax5-springmvc/statics/images/zlf.png" onclick="showCollectInfo()">
        </div>
        <br>
        <br>
        <div>
            <img src="/tax5-springmvc/statics/images/clf.png">
        </div>
    </div>

    <div id="collectInfo">
        <div class="page-header">
            <h2 align="center">增量房信息采集资料</h2>
        </div>
        <div class="collectInfo">
            <h4 class="list-group-item-heading">
                请确认是否备齐以下书面资料，备齐请点击确认进行下一步：
            </h4>
            <ul class="list-group">
                <li class="list-group-item">1.一手房买卖合同</li>
                <li class="list-group-item">2.购房发票</li>
                <li class="list-group-item">3.身份证明文件</li>
                <li class="list-group-item">4.家庭唯一住房证明材料</li>
                <br>
                <br>
                <li class="list-group-item"><input type="checkbox">办理资料已准备齐全</li>
            </ul>
        </div>
        <div align="center">
            <button id="returnTab" type="button" class="btn btn-lg"> 返回</button>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button id="next_identifier" type="button" class="btn btn-primary btn-lg"> 下一步</button>
        </div>
        <div>

        </div>
    </div>

    <div id="identifier">
        <div class="page-header">
            <h2 align="center">增量房信息采集资料</h2>
        </div>
        <div class="collectInfo">
            <ul class="list-group">
                <li class="list-group-item">开发企业纳税人识别号：</li>
                <li class="list-group-item"><input type="text" class="form-control" placeholder="请输入开发企业纳税人识别号"></li>
            </ul>
            <br>
            <br>
            <div align="center">
                <button type="button" class="btn btn-primary btn-lg"> 查找</button>
            </div>
        </div>
        <br>
        <br>
        <div align="center">
            <button id="returnCollectInfo" type="button" class="btn btn-lg"> 返回</button>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button id="next_transaction" type="button" class="btn btn-primary btn-lg"> 下一步</button>
        </div>
    </div>

    <div id="transaction">
        <div class="page-header">
            <h2 align="center">增量房信息采集</h2>
        </div>

        <%--<div class="page-header">--%>
        <%--<h4 align="center">房源及交易信息</h4>--%>
        <%--</div>--%>
        <%--<div class="collectInfo">--%>

        <div id="legend" class="">
            <legend class="" align="center">房源及交易信息</legend>
        </div>
        <form class="form-horizontal" role="form">
            <div class="form-group">
                <label class="col-sm-5 control-label">权属转移对象</label>
                <div class="col-sm-3">
                    <%--<input type="text" class="form-control" id="" placeholder="请输入名字">--%>
                    <label class="radio-inline">
                        <input type="radio" name="radio" checked="checked">商品住房
                    </label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <label class="radio-inline">
                        <input type="radio" name="radio">非住房
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-5 control-label">权属转移用途</label>
                <div class="col-sm-3">
                    <label class="radio-inline">
                        <input type="radio" name="radio1" checked="checked">居住
                    </label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <label class="radio-inline">
                        <input type="radio" name="radio1">其它
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-5 control-label">权属转移方式</label>
                <div class="col-sm-3">
                    <label class="radio-inline">
                        <input type="radio" name="radio2" checked="checked">买卖
                    </label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <label class="radio-inline">
                        <input type="radio" name="radio2">其它
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label for="address" class="col-sm-5 control-label">房屋住址</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="address"
                           placeholder="请输入房屋住址">
                </div>
            </div>
            <div class="form-group">
                <label for="area" class="col-sm-5 control-label">建筑面积</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="area"
                           placeholder="请输入建筑面积">
                </div>
            </div>
            <%--<div class="form-group">--%>
            <%--<div class="col-sm-offset-2 col-sm-10">--%>
            <%--<div class="checkbox">--%>
            <%--<label>--%>
            <%--<input type="checkbox"> 请记住我--%>
            <%--</label>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="form-group">--%>
            <%--<div class="col-sm-offset-2 col-sm-10">--%>
            <%--<button type="submit" class="btn btn-default">登录</button>--%>
            <%--</div>--%>
            <%--</div>--%>
        </form>
        <br>
        <div align="center">
            <button id="returnIdentifier" type="button" class="btn btn-lg"> 返回</button>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button id="next_flatsInfo" type="button" class="btn btn-primary btn-lg"> 下一步</button>
        </div>
    </div>


    <div id="flatsInfo">

        <div class="page-header">
            <h2 align="center">增量房信息采集</h2>
        </div>

        <%--<div class="page-header">--%>
        <%--<h4 align="center">房源及交易信息</h4>--%>
        <%--</div>--%>
        <%--<div class="collectInfo">--%>

        <div id="legend" class="">
            <legend class="" align="center">房源及交易信息</legend>
        </div>
        <form class="form-horizontal" role="form">
            <div class="form-group">
                <label for="unitPrice" class="col-sm-5 control-label">单价</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="unitPrice"
                           placeholder="请输入单价">
                </div>
            </div>
            <div class="form-group">
                <label for="tradingPrice" class="col-sm-5 control-label">交易价格</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="tradingPrice"
                           placeholder="请输入交易价格">
                </div>
            </div>
            <div class="form-group">
                <label for="signingTime" class="col-sm-5 control-label">合同签订时间</label>
                <div class="col-sm-3">
                    <input type="date" class="form-control" id="signingTime"
                           placeholder="请选择合同签订时间">
                </div>
            </div>
            <div class="form-group">
                <label for="taxMonth" class="col-sm-5 control-label">当前应收税款所属月份</label>
                <div class="col-sm-3">
                    <input type="month" class="form-control" id="taxMonth"
                           placeholder="请选择税款所属月份">
                </div>
            </div>
        </form>
    </div>


</div>

</body>
</html>

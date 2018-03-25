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
    <link rel="stylesheet" href="/tax5-springmvc/statics/css/jquery.step.css">
    <script src="/tax5-springmvc/statics/js/bootstrap.min.js"></script>
    <script src="/tax5-springmvc/statics/js/jquery.step.min.js"></script>
    <title>契税业务办理</title>
    <style>
        #tab {
            text-align: center;
            margin-top: 15%;
        }

        .collectInfo {
            margin-top: 4%;
            margin-left: 35%;
            margin-right: 35%;
        }

        .main {
            width: 600px;
            margin: 3% auto;
        }

        #step {
            margin-bottom: 60px;
        }

        .table {
            width: 29.7cm;
            height: 21cm;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
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

    <div class="main" id="progressBar">
        <div id="step"></div>
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
                <li class="list-group-item"><label><input type="checkbox">办理资料已准备齐全</label></li>
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

        <div id="legends" class="">
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

            <div align="center">
                <button id="returnTransaction" type="button" class="btn btn-lg"> 返回</button>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <button id="next_personalInfo" type="button" class="btn btn-primary btn-lg"> 下一步</button>
            </div>
        </form>
    </div>


    <div id="personalInfo">
        <div class="page-header">
            <h2 align="center">增量房信息采集</h2>
        </div>
        <div class="">
            <legend class="" align="center">房源及交易信息</legend>
        </div>

        <form class="form-horizontal" role="form">
            <div class="form-group">
                <label for="name" class="col-sm-5 control-label">购房者姓名</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="name"
                           placeholder="请输入购房者姓名">
                </div>
            </div>

            <div class="form-group">
                <label for="name" class="col-sm-5 control-label">证件类型</label>
                <div class="col-sm-3 controls">
                    <select class="input-xlarge">
                        <option>身份证</option>
                        <option>护照</option>
                        <option>军官证</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="IDnumber" class="col-sm-5 control-label">证件号码</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="IDnumber"
                           placeholder="请输入证件号码">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-5 control-label">买房套次</label>
                <div class="col-sm-3">
                    <label class="radio-inline">
                        <input type="radio" name="radio3" checked="checked">首套
                    </label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <label class="radio-inline">
                        <input type="radio" name="radio3">改善性住房
                    </label>
                </div>
            </div>
            <div align="center">
                <button id="returnFlatsInfo" type="button" class="btn btn-lg"> 返回</button>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <button id="next_basicInfo" type="button" class="btn btn-primary btn-lg"> 下一步</button>
            </div>
        </form>

        <div class="modal fade" id="checkInfo" tabindex="-1" role="dialog" aria-labelledby="ModalLabel"
             aria-hidden="true" data-backdrop="static">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">×</span></button>
                        <h4 class="modal-title" id="addModalLabel">是否确定要进行增量房交易申报</h4>
                    </div>
                    <%--<div class="modal-body">--%>
                    <%--<div class="form-group">--%>
                    <%--<label >用户名</label>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" id="btn_submit" class="btn btn-primary" data-dismiss="modal">确定</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="basicInfo">
        <div class="page-header">
            <h2 align="center">增量房信息采集</h2>
        </div>
        <div id="" class="">
            <legend class="" align="center">房源及交易信息</legend>
        </div>
        <form class="form-horizontal" role="form">
            <div class="form-group">
                <label class="col-sm-5 control-label">开票方</label>
                <div class="col-sm-3">
                    <label class="radio-inline">
                        <input type="radio" name="radio5" checked="checked">承受方
                    </label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <label class="radio-inline">
                        <input type="radio" name="radio5">转让方
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-5 control-label">交易价格是否含税</label>
                <div class="col-sm-3">
                    <label class="radio-inline">
                        <input type="radio" name="radio6" checked="checked">是
                    </label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <label class="radio-inline">
                        <input type="radio" name="radio6">否
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="sTaxes" class="col-sm-5 control-label">税款所属期起</label>
                <div class="col-sm-3">
                    <input type="date" class="form-control" id="sTaxes"
                           placeholder="请选择合同签订时间">
                </div>
            </div>
            <div class="form-group">
                <label for="eTaxes" class="col-sm-5 control-label">税款所属期止</label>
                <div class="col-sm-3">
                    <input type="date" class="form-control" id="eTaxes"
                           placeholder="请选择税款所属月份">
                </div>
            </div>

            <div align="center">
                <button id="returnPersonalInfo" type="button" class="btn btn-lg"> 返回</button>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <button id="next_tableInfo" type="button" class="btn btn-primary btn-lg"> 下一步</button>
            </div>
        </form>
    </div>


    <div id="tableInfo">
        <div class="page-header">
            <h2 align="center">增量房信息采集</h2>
        </div>
        <div class="">
            <legend class="" align="center">表单信息</legend>
        </div>
        <form class="form-horizontal" role="form">
            <div class="form-group">
                <label for="name" class="col-sm-5 control-label">契税品目</label>
                <div class="col-sm-3 controls">
                    <select class="input-xlarge">
                        <option>商品住房买卖</option>
                        <option>其它</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="name" class="col-sm-5 control-label">契税计税依据</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="deedTax"
                           placeholder="请输入契税计税依据">
                </div>
            </div>
            <div class="form-group">
                <label for="name" class="col-sm-5 control-label">契税税率</label>
                <div class="col-sm-3 controls">
                    <select class="input-xlarge">
                        <option>1%</option>
                        <option>1.5%</option>
                        <option>3%</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="IDnumber" class="col-sm-5 control-label">应缴纳税额</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="taxPayable"
                           placeholder="请输入应缴纳税额">
                </div>
            </div>
            <div align="center">
                <button id="returnBasicInfo" type="button" class="btn btn-lg"> 返回</button>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <button id="next_tablePrint" type="button" class="btn btn-primary btn-lg"> 下一步</button>
            </div>
        </form>
    </div>


    <div id="tablePrint">
        <%--<div class="page-header">--%>
        <%--<h2 align="center">契税申报表</h2>--%>
        <%--</div>--%>
        <table border="1" class="table" width="29.7cm">
            <caption>契税申报表</caption>
            <tr>
                <td colspan="2">纳税人识别号：</td>
                <td colspan="7"></td>
            </tr>

            <tr>
                <td rowspan="4" width="10%">承受方信息</td>
                <td width="10%">名称</td>
                <td width="30%" colspan="3"></td>
                <td width="50%" colspan="4">单位&nbsp;个人</td>
            </tr>
            <tr>
                <td width="10%">登记注册类型</td>
                <td width="30%" colspan="3"></td>
                <td width="20%" colspan="2">所属行业</td>
                <td width="30%" colspan="2"></td>
            </tr>
            <tr>
                <td width="10%">身份证件类型</td>
                <td width="30%" colspan="3">身份证</td>
                <td width="20%" colspan="2">身份证件号码</td>
                <td width="30%" colspan="2"></td>
            </tr>
            <tr>
                <td width="10%">联系人</td>
                <td width="30%" colspan="3"></td>
                <td width="20%" colspan="2">联系方式</td>
                <td width="30%" colspan="2"></td>
            </tr>

            <tr>
                <td rowspan="3" width="10%">转让方信息</td>
                <td width="10%">名称</td>
                <td width="30%" colspan="3"></td>
                <td width="50%" colspan="4">单位&nbsp;个人</td>
            </tr>
            <tr>
                <td width="10%">纳税人识别号</td>
                <td width="10%"></td>
                <td width="20%" colspan="2">登记注册类型</td>
                <td width="20%" colspan="2"></td>
                <td width="10%">所属行业</td>
                <td width="20%" colspan="2"></td>
            </tr>
            <tr>
                <td width="10%">身份证件类型</td>
                <td width="10%"></td>
                <td width="20%" colspan="2">身份证件号码</td>
                <td width="20%" colspan="2"></td>
                <td width="10%">联系方式</td>
                <td width="20%" colspan="2"></td>
            </tr>

            <tr>
                <td rowspan="4" width="10%">土地房屋权属转移信息</td>
                <td width="10%">合同签订日期</td>
                <td width="10%"></td>
                <td width="20%" colspan="2">土地房屋坐落地址</td>
                <td width="20%" colspan="2"></td>
                <td width="10%">权属转移对象</td>
                <td width="20%" colspan="2"></td>
            </tr>
            <tr>
                <td width="10%" rowspan="2">权属转移方式</td>
                <td width="10%" rowspan="2">下拉框</td>
                <td width="20%" colspan="2" rowspan="2">用途</td>
                <td width="20%" colspan="2" rowspan="2">下拉框</td>
                <td width="10%">家庭唯一住房</td>
                <td width="20%">90平方米以上<br>90平方米以下</td>
            </tr>
            <tr>
                <td width="10%">家庭第二套住房</td>
                <td width="20%">90平方米以上<br>90平方米以下</td>
            </tr>
            <tr>
                <td width="10%">权属转移面积</td>
                <td width="10%"></td>
                <td width="20%" colspan="2">成交价格</td>
                <td width="20%" colspan="2"></td>
                <td width="10%">成交单价</td>
                <td width="20%" colspan="2"></td>
            </tr>

            <tr>
                <td width="10%">税款征收信息</td>
                <td width="10%">评估价格</td>
                <td width="10%"></td>
                <td width="20%" colspan="2">计税价格</td>
                <td width="20%" colspan="2"></td>
                <td width="10%">税率</td>
                <td width="20%" colspan="2"></td>
            </tr>
            <tr>
                <td width="10%">计征税额</td>
                <td width="10%"></td>
                <td width="10%">减免性质代码</td>
                <td width="10%"></td>
                <td width="10%">减免税额</td>
                <td width="10%"></td>
                <td width="10%">应纳税额</td>
                <td width="20%" colspan="2"></td>
            </tr>

            <tr>
                <td colspan="9">以下由纳税人填写：</td>
            </tr>
            <tr>
                <td width="10%">纳税人声明</td>
                <td colspan="8">此纳税申报表是根据《中华人民共和国契税展性条例》和国家有关税收规定填报的，是真实的、可靠的、完整的。</td>
            </tr>

            <tr>
                <td width="10%">纳税人签章</td>
                <td width="10%"></td>
                <td width="10%">代理人签章</td>
                <td width="20%" colspan="2">代理人签章</td>
                <td width="20%" colspan="2">代理人身份证号</td>
                <td width="30%" colspan="2"></td>
            </tr>

            <tr>
                <td colspan="9">以下由纳税机关填写：</td>
            </tr>

            <tr>
                <td width="10%">受理人</td>
                <td width="10%"></td>
                <td width="10%">受理日期</td>
                <td width="20%" colspan="2"></td>
                <td width="20%" colspan="2">受理税务机关签章</td>
                <td width="30%" colspan="2"></td>
            </tr>
            <tr>
                <td colspan="9">本表一式两份，一份纳税人留存，一份税务机关留存。</td>
            </tr>
        </table>
    </div>
</div>

</body>

<script type="text/javascript">
    var $step = $("#step");
    $step.step({
        time: 500,
        title: ["资料采集", "信息采集", "申报计税", "缴款纳税"]
    });
    $("#prevBtn").on("click", function () {
        $step.prevStep();
    });

    $("#nextBtn").on("click", function () {
        $step.nextStep();
    });
</script>
</html>

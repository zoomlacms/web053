<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Orderlistinfo.aspx.cs" Inherits="ZoomLaCMS.BU.Order.Orderlistinfo" MasterPageFile="~/Common/Master/User.Master" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
<title>订单信息</title>
<style>
@media screen and (max-width:768px){ /*小于768px私有*/
.u_fix_height { height:0;}
#u_ban { display:none;}
}
</style>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
<link rel="stylesheet" href="/App_Themes/control.css"/>
<link href="/App_Themes/V3.css" rel="stylesheet" />
<link href="/dist/css/weui.min.css" rel="stylesheet" />
<div id="pageflag" data-nav="shop" data-ban="store"></div>
<div class="container padding0_xs">
<div class="margin_t5">
<ol class="breadcrumb">
<li><a title="会员中心" href="/User/">会员中心</a></li>
<li><a href="/User/UserShop/OrderList">店铺订单</a></li>
<li class="active">订单管理</li>
<div class="clearfix"></div>
</ol>
</div>

<ul class="nav nav-tabs" role="tablist">
<li class="active"><a href="#OrderState" role="tab" data-toggle="tab">订单状态</a></li>
<li><a href="#Logistics" role="tab" data-toggle="tab">物流管理</a></li>
<li><a href="#Financial" role="tab" data-toggle="tab">财务管理</a></li>
<li><a href="#Selled" role="tab" data-toggle="tab">售后管理</a></li>
</ul>
</div>
<div class="container padding0_xs">
<div class="tab-content">
<div role="tabpanel" class="tab-pane active" id="OrderState">
<div class="weui-cells">
<div class="weui-cell">
<div class="weui-cell__bd">
<p>订单编号</p>
</div>
<div class="weui-cell__ft"><asp:Label ID="HeadTitle_L" runat="server"></asp:Label></div>
</div>

<div class="weui-cell">
<div class="weui-cell__bd">
<p>收货人</p>
</div>
<div class="weui-cell__ft"><asp:Label ID="Reuser" runat="server"></asp:Label></div>
</div>

<div class="weui-cell">
<div class="weui-cell__bd">
<p>用户名</p>
</div>
<div class="weui-cell__ft"><asp:Label runat="server" ID="UName_L"></asp:Label></div>
</div>

<div class="weui-cell">
<div class="weui-cell__bd">
<p>下单时间</p>
</div>
<div class="weui-cell__ft"><asp:Label runat="server" ID="OrderType_L"></asp:Label></div>
</div>

<div class="weui-cell">
<div class="weui-cell__bd">
<p>确认订单</p>
</div>
<div class="weui-cell__ft"><asp:Label runat="server" ID="IsSure_L"></asp:Label></div>
</div>

<div class="weui-cell">
<div class="weui-cell__bd">
<p>需开发票</p>
</div>
<div class="weui-cell__ft"><asp:Label ID="Invoiceneeds" runat="server"></asp:Label></div>
</div>

<div class="weui-cell">
<div class="weui-cell__bd">
<p>已开发票</p>
</div>
<div class="weui-cell__ft"><asp:Label ID="Developedvotes" runat="server"></asp:Label></div>
</div>

<div class="weui-cell">
<div class="weui-cell__bd">
<p>付款状态</p>
</div>
<div class="weui-cell__ft"><asp:Label ID="Paymentstatus" runat="server"></asp:Label></div>
</div>

<div class="weui-cell">
<div class="weui-cell__bd">
<p>物流状态</p>
</div>
<div class="weui-cell__ft"><asp:Label ID="ExpStatus_L" runat="server"></asp:Label></div>
</div>

<div class="weui-cell">
<div class="weui-cell__bd">
<p>订单状态</p>
</div>
<div class="weui-cell__ft"><%=GetOrderStatus() %><div runat="server" id="prog_order_div"></div></div>
</div>


</div>
</div>
<div role="tabpanel" class="tab-pane" id="Logistics">
<div class="panel panel-info">
<div class="panel-heading">物流信息</div>
<div class="panel-body">
<div class="col-md-6">
<table class="table table-bordered table-striped">
<tr>
<td width="28%" align="right">收货人姓名：</td>
<td width="72%" align="left">&nbsp;<asp:Label ID="Reusers" runat="server"></asp:Label></td>
</tr>
<tr>
<td align="right">收货人地址：
</td>
<td align="left">&nbsp;<asp:Label ID="Jiedao" runat="server"></asp:Label>
</td>
</tr>
<tr class="hidden">
<td align="right">收货人邮箱：
</td>
<td align="left">&nbsp;<asp:Label ID="Email" runat="server"></asp:Label>
</td>
</tr>
<tr>
<td align="right">付款方式：
</td>
<td align="left">&nbsp;<asp:Label ID="Payment" runat="server"></asp:Label>
</td>
</tr>
<tr class="hidden">
<td align="right">发票信息：
</td>
<td align="left">&nbsp;<asp:Label ID="Invoice" runat="server"></asp:Label>
</td>
</tr>
<tr>
<td align="right">缺货处理：
</td>
<td align="left">&nbsp;<asp:Label ID="Outstock" runat="server"></asp:Label>
</td>
</tr>
<tr>
<td align="right">配送时间：
</td>
<td align="left">&nbsp;<asp:Label ID="ExpTime_L" runat="server"></asp:Label>
</td>
</tr>
</table>
</div>
<div class="col-md-6">
<table class="table table-bordered table-striped">
<tr>
<td width="28%" align="right">联系电话：
</td>
<td width="72%" align="left">&nbsp;<asp:Label ID="Phone" runat="server"></asp:Label>
</td>
</tr>
<tr class="hidden">
<td align="right">邮政编码：
</td>
<td align="left"&nbsp;<asp:Label ID="ZipCode" runat="server"></asp:Label>
</td>
</tr>
<tr>
<td align="right">收货人手机：
</td>
<td align="left">&nbsp;<asp:Label ID="Mobile" runat="server"></asp:Label>
</td>
</tr>
<tr class="hidden">
<td align="right">跟单员：
</td>
<td align="left">&nbsp;<asp:Label ID="AddUser" runat="server"></asp:Label>
</td>
</tr>
<tr>
<td align="right">订单状态：&nbsp;
</td>
<td align="left">&nbsp;<asp:Label ID="OrderStatus" runat="server"></asp:Label>
                                
</td>
</tr>
<tr>
<td class="text-right">配送信息：</td>
<td>
<div>配送员：<asp:Label runat="server" ID="ExpName_L"></asp:Label></div>
<div style="display:none;">
快递单号：<asp:Label runat="server" ID="ExpCode_L"></asp:Label>
</div>
</td>
</tr>
</table>
</div>
</div>
<div class="panel-footer text-center">
<a href="../iServer/BiServer.aspx?orderid=<%:Mid %>" class="btn btn-primary">服务记录</a>
</div>
</div>

</div>
<div role="tabpanel" class="tab-pane" id="Financial">
<div class="panel panel-primary">
<div class="panel-heading"><span class="fa fa-th"></span><span class="margin_l5">商品信息</span></div>
<div class="panel-body">
<table class="table table-striped table-bordered">
<tr>
<td class="td_s">ID</td>
<td class="td_m">图片</td>
<td>商品名称</td>
<td class="td_s">单位</td>
<td class="td_m">价格</td>
<td class="td_s">数量</td>
<td class="td_m">金额</td>
</tr>
<asp:Repeater ID="Procart_RPT" runat="server">
<ItemTemplate>
<tr>
<td><%#Eval("ProID") %></td>
<td>
<img src="<%#ZoomLa.Common.function.GetImgUrl(Eval("Thumbnails"))%>" onerror="shownopic(this);" class="img_50" /></td>
<td>
<a href='<%#GetShopUrl()%>' target='_blank'><%#Eval("proname")%></a>
<%#Eval("PClass","").Equals("2")?"<input type='button' value='促销组合' onclick=\"showSuit("+Eval("ID")+");\" class='btn btn-info'>":"" %>
</td>
<td><%#Eval("Danwei") %></td>
<td><%#Eval("Shijia","{0:F2}")%></td>
<td><%#Eval("pronum") %></td>
<td><%#Eval("AllMoney","{0:F2}") %></td>
</tr>
</ItemTemplate>
</asp:Repeater>
<tr>
<td colspan="7">
<div class="input-group pull-right" style="width:550px;">
<span class="input-group-addon">运费</span>
<asp:TextBox runat="server" ID="PI_OrderExpMoney_T" class="form-control text_s" />
<span class="input-group-addon">订单</span>
<asp:TextBox runat="server" ID="PI_OrdersMoney_T" class="form-control text_md" />
<span class="input-group-addon">合计</span>
<asp:TextBox runat="server" ID="PI_OrderTotal_T" class="form-control text_md" disabled="disabled"/>
<span class="input-group-btn">
<asp:Button ID="ChangeMoney_Btn" runat="server" Text="确认修改" CssClass="btn btn-primary" OnClick="ChangeMoney_Btn_Click" OnClientClick="return confirm('确定要修改订单和运费金额吗');" />
</span>
</div>
</td>
</tr>
<tr>
<script runat="server">
    public bool IsPrePayOrder()
    {
        if (payMod == null ||payMod.PaymentID<1|| payMod.PayType != (int)ZoomLa.Model.M_OrderList.PayTypeEnum.PrePay) { return false; }
        else { return true; }
    }
    public string ShowPreInfo(ZoomLa.Model.M_PrePayinfo preInfo)
    {
        string html = "";
        string payedTlp = "<span>(<span style='color:green;'>已付款</span>:{0},{1})</span>";
        string nopayTlp = "<span>(<span style='color:red;'>未付款</span>)</span>";
        html += "<span style='color:#d9534f;'>定金:" + preInfo.money_pre.ToString("F2") + "</span>";
        html += preInfo.money_pre_payed > 0 ? string.Format(payedTlp, preInfo.money_pre_payed.ToString("F2"), preInfo.pre_payMethod) : nopayTlp;
        html += "<span style='color:#d9534f'>尾款:" + preInfo.money_after.ToString("F2") + "</span>";
        html += preInfo.money_after_payed > 0 ? string.Format(payedTlp, preInfo.money_after_payed.ToString("F2"), preInfo.after_payMethod) : nopayTlp;
        return html;
    }
</script>
<td colspan="7">
<%if (!IsPrePayOrder())
    {%>
<div>
    <span>总计：</span>
    <%=(orderinfo.Ordersamount).ToString("F2")%>
-
    <span>优惠：</span>
   <%=payMod.ArriveMoney.ToString("F2") %>
    =
    <span>需付：</span>
    <%=(payMod.MoneyPay).ToString("F2") %>
(<span>已收金额：<%=orderinfo.Receivablesamount.ToString("F2") %></span>)
</div>
    <%}
    else
    {
              ZoomLa.Model.M_PrePayinfo preInfo = new ZoomLa.Model.M_PrePayinfo(payMod.PrePayInfo);
             %>
<div>
    <span>总计：</span><%=(orderinfo.Ordersamount).ToString("F2") %>
    -
    <span>优惠：</span>
   <%=payMod.ArriveMoney.ToString("F2") %>
    =
    <span>需付<%=preInfo.money_total.ToString("F2") %></span>
   [<%=ShowPreInfo(preInfo) %>]
</div>

<%} %>
</td>
</tr>
</table>
</div>
</div>
</div>
<div role="tabpanel" class="tab-pane" id="Selled">
<div class="panel panel-primary">
<div class="panel-heading" id="msg_tabs">
<a href="javascript:;" data-tar="#tab1" class="btn btn-default active"><i class="fa fa-history"></i> 内部记录</a> 
<a href="javascript:;" data-tar="#tab2" class="btn btn-default"><i class="fa fa-sticky-note-o"></i> 备注留言</a>
<a href="javascript:;" data-tar="#tab3" class="btn btn-default"><i class="fa fa-user"></i> 客户详情</a>
</div>
<div class="panel-body tab-content" id="msg_content" style="min-height:240px;">
<div class="tab-pane active" id="tab1">
<asp:TextBox runat="server" ID="Internalrecords_T" CssClass="form-control" style="height:200px;" TextMode="MultiLine" placeholder="内部记录"></asp:TextBox>
</div>
<div class="tab-pane" id="tab2">
<asp:TextBox runat="server" ID="Ordermessage_T" CssClass="form-control" style="height:200px;" TextMode="MultiLine" placeholder="备注留言"></asp:TextBox>
</div>
<div class="tab-pane" id="tab3">
<table class="table table-bordered">
<tr>
<td class="td_m">姓名</td>
<td>证件号</td>
<td>手机</td>
</tr>
<asp:Repeater runat="server" ID="UserRPT" EnableViewState="false">
<ItemTemplate>
<tr>
<td><%#Eval("Name") %></td>
<td><%#Eval("CertCode") %></td>
<td><%#Eval("Mobile") %></td>
</tr>
</ItemTemplate>
</asp:Repeater>
</table>
</div>
</div>
<div class="panel-footer"><asp:Button runat="server" ID="SaveRemind_Btn" Text="保存修改" OnClick="SaveRemind_Btn_Click" CssClass="btn btn-primary" /></div>
</div>
<div class="panel panel-primary">
<div class="panel-heading"><i class="fa fa-chevron-left"></i> 退款申请</div>
<div class="panel-body">
<table class="table table-bordered">
<tr><td class="td_l">用户退款理由：</td><td><asp:Label ID="Back_UserRemind_L" runat="server" /></td></tr>
<tr><td>退款处理记录：</td><td><asp:Label ID="Back_AdminRemind_L" runat="server" /></td></tr>
<tr><td>处理结果：</td><td><asp:Label runat="server" ID="Back_ZStatus_L" /></td></tr>
</table>
</div>
<div class="panel-footer">
<input type="button" value="处理退款" onclick="ShowDrawDiag();" runat="server" class="btn btn-danger" id="Back_Btn" visible="false"/>
</div>
</div>
</div>
</div>

<div class="weui-cells__title">订单流程</div>
<div class="row" style="margin:0;">
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 padding5 margin_top20"><asp:Button ID="OS_Sure_Btn" Enabled="false" CssClass="btn btn-info btn-block" runat="server" Text="确认订单" OnClick="OS_Sure_Btn_Click" /></div>
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 padding5 margin_top20"><asp:Button ID="OS_NoSure_Btn" CssClass="btn btn-info btn-block" runat="server" Text="取消确认" OnClick="OS_NoSure_Btn_Click" /></div>
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 padding5 margin_top20 hidden"><asp:Button ID="OS_Pause_Btn" CssClass="btn btn-warning btn-block" runat="server" Text="暂停处理" OnClick="OS_Pause_Btn_Click" /></div>
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 padding5 margin_top20 hidden"><asp:Button ID="OS_Freeze_Btn" CssClass="btn btn-warning btn-block" runat="server" Text="冻结订单" OnClick="OS_Freeze_Btn_Click" /></div>
</div>

<div class="weui-cells__title">物流状态</div>
<div class="row" style="margin:0;">
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-4 padding5 margin_top20"><asp:Button runat="server" CssClass="btn btn-info btn-block" ID="Exp_Cancel_Btn" Text="取消发送" OnClick="EXP_Cancel_Btn_Click" OnClientClick="return confirm('确定要修改发送状态吗');" /></div>
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-4 padding5 margin_top20"><asp:Button runat="server" CssClass="btn btn-info btn-block" ID="Exp_Send_Btn" Text="发送货物" OnClientClick="return ShowSendGood();" /></div>
</div>

<div class="weui-cells__title">财务管理</div>
<div class="row" style="margin:0;">
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 padding5 margin_top20"><button runat="server" type="button" class="btn btn-info btn-block" id="Pay_Settle_Btn" onclick="orderSettle();">订单补充</button></div>
<!--<span class="rd_green">（*此操作用于预付款购物,可调整商品数量与补交金额,用户支付后才可操作）</span>-->
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-4 padding5 margin_top20"><asp:Button runat="server" CssClass="btn btn-info btn-block" ID="Exp_ClientSign_Btn"  Text="客户签收"  OnClick="Exp_ClientSign_Btn_Click" Enabled="false" /></div>
</div>

<div class="weui-cells__title">附加操作</div>
<div class="row" style="margin:0;">
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 padding5 margin_top20 hidden"><asp:Button ID="OS_Invoice_Btn" CssClass="btn btn-info btn-block" runat="server" Text="已开发票" OnClick="OS_Invoice_Btn_Click" /></div>
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 padding5 margin_top20 hidden"><button id="ExpPrint_B" runat="server" type="button" class="btn btn-info btn-block" onclick="printexp();" >快递打单</button></div>
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 padding5 margin_top20 hidden"><a href="addon/printorder.aspx?id=<%:Mid %>"target="_blank" class="btn btn-info btn-block">打印订单</a></div>
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 padding5 margin_top20"><a href="/User/Money/GiveMoney?stype=1&OrderID=<%=Mid %>" class="btn btn-info btn-block">现金返利</a></div>

<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 padding5 margin_top20"><a href="Addon/PrintOrder.aspx?ID=<%=Mid%>" class="btn btn-info btn-block">打印订单</a></div>
</div>


<div id="chkreturn_div" style="display:none;">
<table class="table table-bordered table-striped">
<tr>
<td style="width:20%;" class="text-right">订单号：</td><td><asp:Label ID="OrderNo_L" runat="server"></asp:Label></td>
</tr>
<tr>
<td style="width:20%;" class="text-right">订单金额：</td><td><asp:Label ID="Orderamounts_L" runat="server"></asp:Label> </td>
</tr>
<tr>
<td style="width:20%;" class="text-right">下单日期：</td><td><asp:Label ID="Cdate_L" runat="server"></asp:Label></td>
</tr>
<tr>
<td style="width:20%;" class="text-right">理由：</td><td><asp:TextBox runat="server" ID="Back_T" TextMode="MultiLine" CssClass="form-control" style="height:120px;width:100%;max-width:100%;" /></td>
</tr>
</table>
</div>
</div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ScriptContent">
<link href="/Plugins/Third/alert/sweetalert.css" rel="stylesheet" />
<script src="/Plugins/Third/alert/sweetalert.min.js?v=1"></script>
<script src="/JS/Controls/ZL_Dialog.js"></script>
<script src="/JS/Controls/ZL_Array.js"></script>
<script src="/JS/Controls/Control.js"></script>
<script src="/JS/DatePicker/WdatePicker.js"></script>
<script>
    var diag = new ZL_Dialog();
    //发货弹出框(后期改为独立页面)
    function ShowSendGood() {
        comdiag.maxbtn = false;
        comdiag.ShowModal("Addon/exp/delivery.aspx?ID=<%=Mid %>", "发货操作");
        return false;
    }
    function CloseDiag() {
        diag.CloseModal();
        comdiag.CloseModal();
        DrawDiag.CloseModal();
    }
    function showuinfo(uid) {
        var url = siteconf.path + "User/UserInfo.aspx?id=" + uid
        comdiag.maxbtn = false;
        comdiag.ShowModal(url, "会员信息");
    }
    function showtxt(obj) {
        if (obj.options[obj.selectedIndex].value == "77") {
            var txt = document.getElementById("kdgs");
            txt.style.display = "";

        } else {
            var txt = document.getElementById("kdgs");
            txt.style.display = "none";
        }
    }
    function ShowDrawDiag() {
        ShowComDiag("addon/back/orderback.aspx?id=<%:Mid%>","退款处理");
    }
    function RefreshDiv() {
        v = $("#inter_Text").val();
        $("#inter_Div").html(v);
    }
    $(function () {
        $("#msg_tabs a").click(function () {
            $("#msg_tabs a").removeClass("active");
            $(this).addClass("active");
            $("#msg_content .tab-pane").removeClass("active");
            $($(this).data("tar")).addClass("active");
        });
    });
    function refund() {
        swal({ title: "退单返款", "text": "该订单收款<%=orderinfo.Receivablesamount%>元,确定要退回用户[<%=orderinfo.AddUser%>]的余额中吗？", type: "info", showCancelButton: true, confirmButtonColor: "#DD6B55", confirmButtonText: "确定", closeOnConfirm: false }, function () { $("#Refund_Btn").click(); });
    }
    function orderpay() {
        diag.url = "Diag/OrderPay.aspx?orderid=<%=Mid%>";
        diag.title = "确认支付";
        diag.maxbtn = false;
        diag.ShowModal();
    }
    function orderSettle() {
        location.href = "/BU/Money/OrderSettle.aspx?ID=<%:Mid%>";
    }
    function printexp() {
        window.location.href = "Addon/ExpPrint.aspx?ID=<%:Mid%>";
    }
    function showSuit(cartid) {
        ShowComDiag("/common/comp/SuitPro_Cart.aspx?CartID=" + cartid, "促销组合");
    }
</script>
</asp:Content>
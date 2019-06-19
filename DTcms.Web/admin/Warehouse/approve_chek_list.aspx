﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="approve_chek_list.aspx.cs" Inherits="DTcms.Web.admin.Warehouse.approve_chek_list" %>

<%@ Import namespace="DTcms.Common" %>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=1.0,user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<title>零星领料待审核列表</title>
<link href="../../scripts/artdialog/ui-dialog.css" rel="stylesheet" type="text/css" />
<link href="../skin/default/style.css" rel="stylesheet" type="text/css" />
<link href="../../css/pagination.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../scripts/jquery/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="../../scripts/artdialog/dialog-plus-min.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/laymain.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/common.js"></script>
</head>

<body class="mainbody">
<form id="form1" runat="server">
<!--导航栏-->
<div class="location">
  <a href="javascript:history.back(-1);" class="back"><i></i><span>返回上一页</span></a>
  <a href="../center.aspx" class="home"><i></i><span>首页</span></a>
  <i class="arrow"></i>
  <span>零星领料待审核列表</span>
</div>
<!--/导航栏-->

<!--工具栏-->
<div id="floatHead" class="toolbar-wrap">
  <div class="toolbar">
    <div class="box-wrap">
      <a class="menu-btn"></a>
      <div class="l-list">
        <ul class="icon-list">
          <%--<li><a class="add" href="barcode_edit.aspx?action=<%=DTEnums.ActionEnum.Add %>"><i></i><span>新增</span></a></li>--%>
          <%--<li><a class="all" href="javascript:;" onclick="checkAll(this);"><i></i><span>全选</span></a></li>--%>
          <%--<li><asp:LinkButton ID="btnDelete" runat="server" CssClass="del" OnClientClick="return ExePostBack('btnDelete');" onclick="btnDelete_Click"><i></i><span>删除</span></asp:LinkButton></li>--%>
        </ul>
      </div>
      <div class="r-list">
        <asp:TextBox ID="txtKeywords" runat="server" CssClass="keyword" />
        <asp:LinkButton ID="lbtnSearch" runat="server" CssClass="btn-search" onclick="btnSearch_Click">查询</asp:LinkButton>
      </div>
    </div>
  </div>
</div>
<!--/工具栏-->

<!--列表-->
<div class="table-container">
  <asp:Repeater ID="rptList" runat="server">
  <HeaderTemplate>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="ltable">
    <tr>
      <%--<th width="8%">选择</th>--%>
      <th align="center" width="15%">申请单号</th>
      <th align="center" width="10%">提出申请时间</th>
      <th align="center" width="10%">申请人姓名</th>
      <th align="center" >申请备注</th>
      <th align="center" width="10%">申请类型</th> 
      <th width="8%">操作</th>
    </tr>
  </HeaderTemplate>
  <ItemTemplate>
    <tr>
      <%--<td align="center">
        <asp:CheckBox ID="chkId" CssClass="checkall" runat="server" style="vertical-align:middle;" />
        <asp:HiddenField ID="hidId" Value='<%#Eval("BatchNumber")%>' runat="server" />
      </td>--%>
      <td align="center"><%# Eval("ApproveNum") %></td>
      <td align="center"><%# Eval("CreateDate") %></td>
      <td align="center"><%# Eval("CreateByName") %></td>
      <td align="center"><%# Eval("ApplyRemark") %></td>
      <td align="center"><%# Eval("IsPlanApprove").ToString()=="0"?"非计划零星领料":"计划零星领料" %></td>
      <td align="center">
          <a href="approve_check.aspx?action=<%#DTEnums.ActionEnum.Edit %>&ApproveNum=<%#Eval("ApproveNum")%>">审核</a>
              <%--<asp:LinkButton ID="lbtnExport" runat="server" CommandArgument='<%#Eval("BatchNumber") %>' OnClick="lbtnExport_Click">导出</asp:LinkButton>
              <asp:LinkButton ID="lbtnDel" runat="server" CommandArgument='<%#Eval("BatchNumber") %>' OnClick="lbtnDel_Click">删除</asp:LinkButton>--%>
      </td>
        
    </tr>
  </ItemTemplate>
  <FooterTemplate>
    <%#rptList.Items.Count == 0 ? "<tr><td align=\"center\" colspan=\"10\">暂无记录</td></tr>" : ""%>
  </table>
  </FooterTemplate>
  </asp:Repeater>
</div>
<!--/列表-->

<!--内容底部-->
<div class="line20"></div>
<div class="pagelist">
  <%--<div class="l-btns">
    <span>显示</span><asp:TextBox ID="txtPageNum" runat="server" CssClass="pagenum" onkeydown="return checkNumber(event);"
                OnTextChanged="txtPageNum_TextChanged" AutoPostBack="True"></asp:TextBox><span>条/页</span>
  </div>
 <div id="PageContent" runat="server" class="default"></div>
</div>--%>
<!--/内容底部-->
</form>
</body>
</html>
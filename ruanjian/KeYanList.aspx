﻿<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="KeYanList.aspx.cs" Inherits="KeYanList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <!-- Begin Page Content -->
  <div class="container-fluid">
  <!-- Begin Page Content -->
  <div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Research Project</h1>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="KeYan.aspx" CssClass="btn btn-success btn-icon-split mb-3" Target="_self">
        <span class="icon text-white-50">
            <i class="fas fa-plus"></i>
        </span>
        <span class="text">Add</span>
    </asp:HyperLink>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Research Project List</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
        <form id="form1" runat="server">
            <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" CellSpacing="0" AutoGenerateColumns="False" GridLines="None" Width="100%">
              <Columns>
                <asp:BoundField DataField="JiaoSHi" HeaderText="Teacher" />
                <asp:BoundField DataField="ShiJian" HeaderText="Time" />
                <asp:BoundField DataField="XiangMu" HeaderText="Project" />
              <asp:BoundField DataField="JiangXiang" HeaderText="Award" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="KeYan.aspx?ID={0}"
                    HeaderText="Edit" Text="Edit" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="KeYanD.aspx?ID={0}"
                    HeaderText="Delete" Text="Delete" />
              </Columns>
            </asp:GridView>
        </form>
        </div>
    </div>
    </div>

  </div>
  <!-- /.container-fluid -->
</asp:Content>
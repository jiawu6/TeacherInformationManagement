﻿<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GongGaoList.aspx.cs" Inherits="GongGaoList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">Rules and Regulations</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="/Admin/GongGao.aspx" CssClass="btn btn-success btn-icon-split mb-3" Target="_self">
            <span class="icon text-white-50">
                <i class="fas fa-plus"></i>
            </span>
            <span class="text">Add</span>
        </asp:HyperLink>
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Rules and Regulations List</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
            <form id="form1" runat="server">
                <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" CellSpacing="0" AutoGenerateColumns="False" GridLines="None" Width="100%">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                      <asp:BoundField DataField="Title" HeaderText="Title" />
                      <asp:BoundField DataField="FaBuRen" HeaderText="Publisher" />
                      <asp:BoundField DataField="ShiJian" HeaderText="Time" />
                      <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="GongGao.aspx?ID={0}"
                          HeaderText="Edit" Text="Edit" />
                      <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="GongGaoD.aspx?ID={0}"
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


   

       

      


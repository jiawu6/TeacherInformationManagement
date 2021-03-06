﻿<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AdminMod.aspx.cs" Inherits="Admin_AdminMod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container-fluid">
        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Change Password</h1>
        </div>

        <!-- Content Row -->
        <div class="row">
            <div class="col-md-8 order-md-1">
                <form class="needs-validation" novalidate="" runat="server">
                    <div class="mb-3">
                        <label>New password</label>
                        <div class="input-group">
                            <asp:TextBox id="TextBox2" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label>Confirm password</label>
                        <div class="input-group">
                            <asp:TextBox id="TextBox3" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <hr class="mb-4">
                    <div class="row">
                        <div class="col-6">
                            <asp:button ID="Button1" CssClass="btn btn-primary btn-lg btn-block" Type="submit" Onclick="Button1_Click" Text="Confirm"  runat="server"></asp:button>
                        </div>
                        <div class="col-6">
                            <asp:button ID="Button3" CssClass="btn btn-outline-danger btn-lg btn-block" Type="submit"  onclick="Button3_Click" Text="Return"  runat="server"></asp:button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>

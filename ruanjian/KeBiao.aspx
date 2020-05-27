<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="KeBiao.aspx.cs" Inherits="KeBiao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container-fluid">
        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Timetable Management</h1>
        </div>

        <!-- Content Row -->
        <div class="row">
        <div class="col-md-8 order-md-1">
            <form class="needs-validation" novalidate="" runat="server">
                <div class="row">
                    <div class="col-md-4 mb-3">
                      <label>Teacher</label>
                      <asp:DropDownList ID="DropDownList1" cssClass="custom-select d-block w-100" runat="server">
                      </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                  <div class="col-md-4 mb-3">
                    <label>Morning or Afternoon</label>
                    <asp:DropDownList ID="DropDownList2" cssClass="custom-select d-block w-100" runat="server">
                      <asp:ListItem>Morning</asp:ListItem>
                      <asp:ListItem>Afternoon</asp:ListItem>
                    </asp:DropDownList>
                  </div>
                </div>

                <div class="mb-3">
                  <label>Monday</label>
                  <div class="input-group">
                    <asp:TextBox ID="TextBox1" CssClass="form-control" PlaceHolder="Monday" runat="server"></asp:TextBox>
                  </div>
                </div>
                <div class="mb-3">
                  <label>Tuesday</label>
                  <div class="input-group">
                    <asp:TextBox ID="TextBox2" CssClass="form-control" PlaceHolder="Tuesday" runat="server"></asp:TextBox>
                  </div>
                </div>
                <div class="mb-3">
                  <label>Wednesday</label>
                  <div class="input-group">
                    <asp:TextBox ID="TextBox3" CssClass="form-control" PlaceHolder="Wednesday" runat="server"></asp:TextBox>
                  </div>
                </div>
                <div class="mb-3">
                  <label>Thursday</label>
                  <div class="input-group">
                    <asp:TextBox ID="TextBox4" CssClass="form-control" PlaceHolder="Thursday" runat="server"></asp:TextBox>
                  </div>
                </div>
                <div class="mb-3">
                  <label>Friday</label>
                  <div class="input-group">
                    <asp:TextBox ID="TextBox5" CssClass="form-control" PlaceHolder="Friday" runat="server"></asp:TextBox>
                  </div>
                </div>
                <hr class="mb-4">
                <div class="row">
                    <div class="col-6">
                    <asp:button ID="Button1" CssClass="btn btn-primary btn-lg btn-block" Text="Confirm" onclick="Button1_Click" runat="server"></asp:button>
                    </div>
                    <div class="col-6">
                    <asp:button ID="Button2" CssClass="btn btn-outline-danger btn-lg btn-block" Text="Refill" onclick="Button2_Click" runat="server"></asp:button>
                    </div>
                </div>
            </form>
        </div>
        </div>
    </div>
</asp:Content>

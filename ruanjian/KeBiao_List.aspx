<%@ Page Language="C#"  MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="KeBiao_List.aspx.cs" Inherits="KeBiao_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <!-- Begin Page Content -->
  <div class="container-fluid">
  <!-- Begin Page Content -->
  <div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Timetable Management</h1>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Time Table</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
        <form id="form1" runat="server">
            <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                <div class="row">
                    <div class="col-6">
                        <div class="input-group">
                            <asp:TextBox ID="TextBox1" CssClass="form-control bg-light border-0 small" PlaceHolder="Search for..." runat="server"></asp:TextBox>
                    
                          <%--  <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">--%>
                            <div class="input-group-append">
                                <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Search" />
                            </div>
                        </div>
                    </div>
                </div>
                
            </form>
            
            <br />
            <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" CellSpacing="0" AutoGenerateColumns="False" GridLines="None" Width="100%">
              <Columns>
                <asp:BoundField DataField="JiaoShi" HeaderText="Teacher" />
                <asp:BoundField DataField="ShangXiaWu" HeaderText="Morning or Afternoon" />
                <asp:BoundField DataField="One" HeaderText="Monday" />
                <asp:BoundField DataField="Two" HeaderText="Tuesday" />
                <asp:BoundField DataField="Three" HeaderText="Wednesday" />
                <asp:BoundField DataField="Four" HeaderText="Thursday" />
                <asp:BoundField DataField="five" HeaderText="Friday" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" 
                    DataNavigateUrlFormatString="KeBiao.aspx?ID={0}" HeaderText="Edit" Text="Edit" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="KeBiaoD.aspx?ID={0}"
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

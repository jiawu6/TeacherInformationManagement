<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Teacher_List.aspx.cs" Inherits="Teacher_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">Teacher management</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Teacher.aspx" CssClass="btn btn-success btn-icon-split mb-3" Target="_self">
            <span class="icon text-white-50">
                <i class="fas fa-plus"></i>
            </span>
            <span class="text">Add Teacher</span>
        </asp:HyperLink>
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Teacher list</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
            <form id="form1" runat="server">
                <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" CellSpacing="0" AutoGenerateColumns="False" GridLines="None" Width="100%">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="TeacherID" HeaderText="Teacher ID" />
                        <asp:BoundField DataField="TeacherName" HeaderText="Teacher's name" />
                        <asp:BoundField DataField="Sex" HeaderText="Gender" />
                        <asp:BoundField DataField="Phone" HeaderText="Telephone" />
                        <asp:BoundField DataField="Age" HeaderText="Age" />
                        <asp:BoundField DataField="Memo" HeaderText="Remarks" />
                        <asp:HyperLinkField DataNavigateUrlFields="ID" 
                            DataNavigateUrlFormatString="Teacher.aspx?ID={0}" HeaderText="Edit" Text="Edit" />
                        <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="TeacherD.aspx?ID={0}"
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


   

       

      

<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Teacher.aspx.cs" Inherits="Teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container-fluid">
        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Teacher management</h1>
        </div>

        <!-- Content Row -->
        <div class="row">
        <div class="col-md-8 order-md-1">
            <form class="needs-validation" novalidate="" runat="server">
                <div class="row">
                    <div class="col-md-6 mb-3">
                    <label>Teacher ID</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                        <span class="input-group-text">#</span>
                        </div>
                        <asp:TextBox ID="TextBox1"  PlaceHolder="Teacher ID" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="invalid-feedback" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="Teacher Number Can't Be Empty"></asp:RequiredFieldValidator>
                    </div>
                    </div>
                </div>
        
                <div class="mb-3">
                    <label>Teacher's name</label>
                    <div class="input-group">
                    <asp:TextBox ID="TextBox2" CssClass="form-control" PlaceHolder="Teacher's name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="invalid-feedback" runat="server" ControlToValidate="TextBox2"
                            ErrorMessage="Teachers'names should not be empty."></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 mb-3">
                    <label>Gender</label>
                    <asp:DropDownList ID="DropDownList1" cssClass="custom-select d-block w-100" runat="server">
                        <asp:ListItem>Choose gender...</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 mb-3">
                    <label for="username">Age</label>
                    <div class="input-group">
                        <asp:TextBox ID="TextBox3" type="number" CssClass="form-control" PlaceHolder="Teacher's age" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                            ErrorMessage="Age cannot be empty" CssClass="invalid-feedback" Style="width: 100%;"></asp:RequiredFieldValidator>
                    </div>
                    </div>
                </div>
                
                <div class="mb-3">
                    <label for="username">Telephone</label>
                    <div class="input-group">
                    <asp:TextBox ID="TextBox4" CssClass="form-control" PlaceHolder="Teacher's telephone" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
                            ErrorMessage="Telephone can't be empty" CssClass="invalid-feedback"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="remarks">Remarks</label>
                    <div class="input-group">
                    <asp:TextBox ID="TextBox5" runat="server" Rows="5" CssClass="form-control" PlaceHolder="Remarks"  TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5"
                                ErrorMessage="Notes cannot be empty" CssClass="invalid-feedback"></asp:RequiredFieldValidator>
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

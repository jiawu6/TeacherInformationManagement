<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MessageBoard.aspx.cs" Inherits="MessageBoard" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="index.css">
  <style>
    body{background:#f5f5f5}
    .text-white-50 { color: rgba(255, 255, 255, .5); }
    .bg-blue { background-color:#00b5ec; }
    .border-bottom { border-bottom: 1px solid #e5e5e5; }
    .box-shadow { box-shadow: 0 .25rem .75rem rgba(0, 0, 0, .05); }
  </style>
</head>
<body>
  <main role="main" class="container bootdey.com">
    
    <div class="d-flex align-items-center p-3 my-3 text-white-50 bg-blue rounded box-shadow">
      <img class="mr-3" src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" width="48" height="48">
      <div class="lh-100">

        <h6 class="mb-0 text-white lh-100">
            <asp:Label ID="Label1" Text="Valerie Luna" runat="server"></asp:Label>
        </h6>
        <small>Messages</small>
      </div>
    </div>
  
    <div class="my-3 p-3 bg-white rounded box-shadow">
      <h6 class="border-bottom border-gray pb-2 mb-0">Recent messages</h6>
      <% foreach (DataRow dr in mbds.Tables[0].Rows) { %>
        <div>
          
        </div>
        <div class="media text-muted pt-3">
          <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="" class="mr-2 rounded" width="32" height="32">
          <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <strong class="d-block text-gray-dark mb-1">@<%= dr["UserName"] %></strong>
            <span><%= dr["Content"] %></span>
            <small class="d-block text-gray-dark mt-1"><%= dr["PostTime"] %></small>
          </p>
        </div>
      <% } %> 
      <small class="d-block text-right mt-3">
        <a href="#">All messages</a>
      </small>
    </div>
    <form  runat="server">
      <!-- <h3 class="pull-left">New Comment</h3> -->
      <fieldset>
        <div class="row">
          <div class="form-group col-12">
              <asp:TextBox  ID="TXTMessage" runat="server" CssClass="form-control"  PlaceHolder="Enter message" TextMode="multiline" Rows="5"></asp:TextBox>
          </div>
        </div>  	
      </fieldset>
      <asp:Button ID="PostButton" runat="server"  Text="Submit" CssClass="btn btn-normal mb-4" OnClick="PostButton_Click" />
    </form>
  </main>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerSurvey.aspx.cs" Inherits="SportsPro.CustomerSurvey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/site.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div class="container">
        <div class="jumbotron">
            <h1>SportsPro</h1>
            <h4>Sports management software for the sports enthusiast</h4>
        </div>
        <form id="form1" runat="server" class="form-horizontal">
            <div class="form-group">
                <div class="col-sm-offset-1 col-sm-2">
                    <asp:Label ID="Label1" runat="server" Text="Enter your customer ID:" CssClass="control-label"></asp:Label>
                </div>
                <div class="col-sm-2">
                    <asp:TextBox ID="txtCustomerID" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-2">
                    <asp:Button ID="btnGetIncidents" runat="server" Text="Get Incidents" CssClass="btn btn-primary btn-block" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-1 col-sm-9">
                    <asp:ListBox ID="lstIncidents" runat="server" CssClass="form-control"></asp:ListBox>
                </div>
            </div>

        </form>
    </div>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SurveyComplete.aspx.cs" Inherits="SportsPro.SurveyComplete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/site.css" rel="stylesheet" />
    <title>Project 2-A: Survey Customer</title>
</head>
<body>
   <div class="container">
        <div class="jumbotron">
            <h1>SportsPro</h1>
            <h4>Sports management software for the sports enthusiast</h4>
        </div>
        <form id="form1" runat="server" class="form-horizontal">
            <div class="col-sm-offset-1 col-sm-2">
                <asp:Button ID="btnReturn" runat="server" Text="Return to Survey" 
                    PostBackUrl="~/CustomerSurvey.aspx" CssClass="btn btn-block btn-primary"/>
            </div>
        </form>
    </div>
</body>
</html>

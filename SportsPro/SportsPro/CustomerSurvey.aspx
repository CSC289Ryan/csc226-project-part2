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
                    <asp:Label ID="lblID" runat="server" Text="Enter your customer ID:" CssClass="control-label"></asp:Label>
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
            <div class="form-group">
                <div class="col-sm-offset-1 col-sm-11">
                    <asp:Label ID="lblRate" runat="server" Text="Please rate this incident by the following categories:" 
                        Font-Bold="True"></asp:Label>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-1 col-sm-2">
                    <asp:Label ID="lblResponseTime" runat="server" Text="Response time:" CssClass="control-label"></asp:Label>
                </div>
                <div class="col-sm-9">
                    <asp:RadioButtonList ID="rblResponseTime" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">Not satisfied</asp:ListItem>
                        <asp:ListItem Value="2">Somewhat satisfied</asp:ListItem>
                        <asp:ListItem Value="3">Satisfied</asp:ListItem>
                        <asp:ListItem Value="4">Completely satisfied</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="col-sm-offset-1 col-sm-2">
                    <asp:Label ID="lblEfficiency" runat="server" Text="Technician Efficiency:" CssClass="control-label"></asp:Label>
                </div>
                <div class="col-sm-9">
                    <asp:RadioButtonList ID="rblEfficiency" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">Not satisfied</asp:ListItem>
                        <asp:ListItem Value="2">Somewhat satisfied</asp:ListItem>
                        <asp:ListItem Value="3">Satisfied</asp:ListItem>
                        <asp:ListItem Value="4">Completely satisfied</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="col-sm-offset-1 col-sm-2">
                    <asp:Label ID="lblResolution" runat="server" Text="Problem resolution:" CssClass="control-label"></asp:Label>
                </div>
                <div class="col-sm-9">
                    <asp:RadioButtonList ID="rblResolution" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">Not satisfied</asp:ListItem>
                        <asp:ListItem Value="2">Somewhat satisfied</asp:ListItem>
                        <asp:ListItem Value="3">Satisfied</asp:ListItem>
                        <asp:ListItem Value="4">Completely satisfied</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-1 col-sm-2">
                    <asp:Label ID="lblComments" runat="server" Text="Additional comments:"></asp:Label>
                </div>
                <div class="col-sm-7">
                    <asp:TextBox ID="txtComments" runat="server" Rows="4" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-1 col-sm-11">
                    <asp:CheckBox ID="chkContactMe" Text="Please contact me to discuss this incident"
                        Checked="true" runat="server"/>
                </div>
                <div class="col-sm-offset-2">
                    <asp:RadioButton ID="rdoEmail" runat="server"
                        Checked="true" GroupName="ContactBy" Text="Contact by email"/>
                </div>
                <div class="col-sm-offset-2">
                    <asp:RadioButton ID="rdoPhone" runat="server"
                        GroupName="ContactBy" Text="Contact by phone"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-1 col-sm-2">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary btn-block" />
                </div>
            </div>
        </form>
    </div>
</body>
</html>

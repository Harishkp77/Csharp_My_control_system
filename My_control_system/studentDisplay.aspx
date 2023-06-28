<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentDisplay.aspx.cs" Inherits="My_control_system.studentDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="displayuser.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header">
                <div>
                    <h1>Himalia Engineering College</h1>
                </div>

                <div class="titlebar">
                    <ul class="navbar">
                        <li><a href="homePage.aspx">HOME</a></li>

                    </ul>
                </div>
            </div>

            <div class="body">

             <div class="left-column">
                    <asp:Label ID="infolabel" runat="server" Text="Label"></asp:Label>
                </div>
                <div class="right-column">
                    <asp:Label ID="infolabel2" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

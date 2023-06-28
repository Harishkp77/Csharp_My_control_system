<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signupPage.aspx.cs" Inherits="My_control_system.signupPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link href="userManagestylesheet.css" rel="stylesheet" />
</head>
<body>
<form id="signupForm" runat="server">
                <h1>Himaliya  Engineering College </h1>
     
        <div class="container">
        <div>
               <h2>Sign Up</h2>
            </div>
        <div>
            <label for="signupUsername">Username:</label>
            <asp:TextBox ID="signupUsername" runat="server" required="true" />
            <br />
            <label for="signupPassword">Password:</label>
            <asp:TextBox ID="signupPassword" runat="server" TextMode="Password" required="true" />
            <br />
            <label for="signupRole">Role:</label>
            <asp:DropDownList ID="signupRole" runat="server">
                <asp:ListItem Value="staff">Staff</asp:ListItem>
                <asp:ListItem Value="student">Student</asp:ListItem>
            </asp:DropDownList>
            <br />
            <label for="signupStaff">Staff ID:</label>
            <asp:TextBox ID="signupStaff" runat="server" />
            <br />
            <label for="signupStudent">Student ID:</label>
            <asp:TextBox ID="signupStudent" runat="server" />
            <br />
            <asp:Button ID="signupButton" runat="server" Text="Sign up" CssClass="btn-submit" OnClick="SignupButton_Click" />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn-submit" NavigateUrl="~/homePage.aspx">Go To Home Page</asp:HyperLink>
                  <div>
                    <asp:Label ID="lblMessage" runat="server" CssClass="emessage"></asp:Label>
                </div>     
        </div>
             </div>
    </form>
</body>
</html>

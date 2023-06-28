<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginuserstudent.aspx.cs" Inherits="My_control_system.loginuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>loginstudent</title>
    <link href="userManagestylesheet.css?v=1.0" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
                  <h1>Himaliya  Engineering College </h1>
        <div class="container">
            <div>
              <h2>Login</h2>    
            </div>          
                <div>
                    <label for="loginUsername">Username:</label>
                    <asp:TextBox ID="loginUsername" runat="server" required="true" />
                    <br />
                    <label for="loginPassword">Password:</label>
                    <asp:TextBox ID="loginPassword" runat="server" TextMode="Password" required="true" />
                    <br />
                    <asp:Button ID="loginButton" runat="server" Text="Login" CssClass="btn-submit" OnClick="LoginButton_Click" />
                         <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn-submit" NavigateUrl="~/homePage.aspx">Go To Home Page</asp:HyperLink>
                   <div>
                    
                     <asp:Label ID="lblMessage" runat="server" CssClass="emessage"></asp:Label>
               
             
        
                </div>     
                 
                </div>
 
            </div>
    </form>
</body>
</html>

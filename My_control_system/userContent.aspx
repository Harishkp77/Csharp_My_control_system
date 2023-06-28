<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="userContent.aspx.cs" Inherits="My_control_system.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            
     <div class="right-bottom">
            <div class="table-container">
                <h2>User database</h2>
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged1" OnCancelCommand="DataGrid1_CancelCommand1" OnDeleteCommand="DataGrid1_DeleteCommand1" OnEditCommand="DataGrid1_EditCommand1" OnUpdateCommand="DataGrid1_UpdateCommand1">
                    <Columns>
                        <asp:BoundColumn DataField="user_id" HeaderText="User ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="user_username" HeaderText="Username"></asp:BoundColumn>
                        <asp:BoundColumn DataField="user_password" HeaderText="Password"></asp:BoundColumn>
                        <asp:BoundColumn DataField="user_role" HeaderText="Role"></asp:BoundColumn>
                        <asp:BoundColumn DataField="staff_id" HeaderText="Staff ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="student_id" HeaderText="Student ID"></asp:BoundColumn>
                    </Columns>
                </asp:DataGrid>

            </div>
        </div>


</asp:Content>

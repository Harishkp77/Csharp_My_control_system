<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="salaryContent.aspx.cs" Inherits="My_control_system.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="right-side">
        <div class="right-top">
            <div class="container-reg">
                <h3>Salary Registration</h3>
                <div class="registration-form">
        
                    <div class="form-group">
                        <asp:Label ID="staff_id" runat="server" Text="Staff Id:"></asp:Label>
                        <asp:TextBox ID="staff_idTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Staff Id Required" ControlToValidate="staff_idTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Min 3 Numeric value" ControlToValidate="staff_idTextBox" Display="Dynamic" ForeColor="Red" ValidationExpression="^\d{3,8}$"></asp:RegularExpressionValidator>  </div>
                    <div class="form-group">
                        <asp:Label ID="month" runat="server" Text="Month:"></asp:Label>
                        <asp:DropDownList ID="monthDropDown" runat="server">
                            <asp:ListItem Text="January" Value="January"></asp:ListItem>
                            <asp:ListItem Text="February" Value="February"></asp:ListItem>
                            <asp:ListItem Text="March" Value="March"></asp:ListItem>
                            <asp:ListItem Text="April" Value="April"></asp:ListItem>
                            <asp:ListItem Text="May" Value="May"></asp:ListItem>
                            <asp:ListItem Text="June" Value="June"></asp:ListItem>
                            <asp:ListItem Text="July" Value="July"></asp:ListItem>
                            <asp:ListItem Text="August" Value="August"></asp:ListItem>
                            <asp:ListItem Text="September" Value="September"></asp:ListItem>
                            <asp:ListItem Text="October" Value="October"></asp:ListItem>
                            <asp:ListItem Text="November" Value="November"></asp:ListItem>
                            <asp:ListItem Text="December" Value="December"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="year" runat="server" Text="Year:"></asp:Label>
                        <asp:TextBox ID="yearTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Year" ControlToValidate="yearTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Year " ControlToValidate="yearTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^2\d{3}$"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="amount" runat="server" Text="Amount:"></asp:Label>
                        <asp:TextBox ID="amountTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Amount Required" ControlToValidate="amountTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid amount" ControlToValidate="amountTextBox" Display="Dynamic" ForeColor="Red" ValidationExpression="^(?!0+$)\d{0,6}(\.\d{1,3})?$"></asp:RegularExpressionValidator> </div>
                    <div class="form-group inputsend">
                        <asp:Button ID="Register" runat="server" Text="Register" CssClass="btn-submit" OnClick="Register_Click" />
                        <asp:Button ID="Reset" runat="server" Text="Clear" CssClass="btn-reset" OnClick="Reset_Click" CausesValidation="False" />
                    </div>
                    <div>
                        <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <div class="right-bottom">
            <div class="table-container">
                <h2>Salary Database</h2>
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged1" OnCancelCommand="DataGrid1_CancelCommand1" OnDeleteCommand="DataGrid1_DeleteCommand1" OnEditCommand="DataGrid1_EditCommand1" OnUpdateCommand="DataGrid1_UpdateCommand1">
                    <Columns>
                        <asp:BoundColumn DataField="salary_id" HeaderText="Salary ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="staff_id" HeaderText="Staff ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="month" HeaderText="Month"></asp:BoundColumn>
                        <asp:BoundColumn DataField="year" HeaderText="Year"></asp:BoundColumn>
                        <asp:BoundColumn DataField="amount" HeaderText="Amount"></asp:BoundColumn>
                        <asp:EditCommandColumn ButtonType="PushButton" CancelText="Cancel" EditText="Edit" HeaderText="Modify" CausesValidation="False" UpdateText="Update"></asp:EditCommandColumn>
                        <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" HeaderText="Delete" Text="Delete"></asp:ButtonColumn>
                    </Columns>
                </asp:DataGrid>
            </div>
        </div>
    </div>
</asp:Content>

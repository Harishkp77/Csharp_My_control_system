<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="attendanceContent.aspx.cs" Inherits="My_control_system.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="right-side">
        <div class="right-top">
            <div class="container-reg">
                <h3>Attendance Entry</h3>
                <div class="registration-form">
                    <div class="form-group">
                        <asp:Label ID="userLabel" runat="server" Text="User ID:"></asp:Label>
                        <asp:TextBox ID="userTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required User Id" ControlToValidate="userTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Must Be Numeric" ControlToValidate="userTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>  </div>
                    <div class="form-group">
                        <asp:Label ID="subjectLabel" runat="server" Text="Subject ID:"></asp:Label>
                        <asp:TextBox ID="subjectTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Subject Id" ControlToValidate="subjectTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Must Be Numeric" ControlToValidate="subjectTextBox" Display="Dynamic" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>     </div>
                    <div class="form-group">
                        <asp:Label ID="dateLabel" runat="server" Text="Date:"></asp:Label>
                        <asp:TextBox ID="dateTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Date" ControlToValidate="dateTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Must Be DD-MM-YYYY format" ControlToValidate="dateTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(0[1-9]|[1-2]\d|3[01])-(0[1-9]|1[0-2])-\d{4}$"></asp:RegularExpressionValidator>   </div>
                    <div class="form-group">
                        <asp:Label ID="presentLabel" runat="server" Text="Present:"></asp:Label>
                        <div class="radio-group">
                            <asp:RadioButton ID="presentYesRadioButton" runat="server" GroupName="presentGroup" Text="Yes" Checked="true"></asp:RadioButton>
                            <asp:RadioButton ID="presentNoRadioButton" runat="server" GroupName="presentGroup" Text="No"></asp:RadioButton>
                        </div>
                    </div>



                    <div class="form-group inputsend">
                        <asp:Button ID="registerButton" runat="server" Text="Register" CssClass="btn-submit" OnClick="Register_Click" />
                        <asp:Button ID="resetButton" runat="server" Text="Clear" CssClass="btn-reset" OnClick="Reset_Click" />
                    </div>
                <div>
                    <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
                </div>
                </div>
            </div>
        </div>
        <div class="right-bottom">
            <div class="table-container">
                <h2>Attendance Database</h2>
                <asp:DataGrid ID="attendanceDataGrid" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged1" OnCancelCommand="DataGrid1_CancelCommand1" OnDeleteCommand="DataGrid1_DeleteCommand1" OnEditCommand="DataGrid1_EditCommand1" OnUpdateCommand="DataGrid1_UpdateCommand1">
                    <Columns>
                        <asp:BoundColumn DataField="attendance_id" HeaderText="Attendance ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="user_id" HeaderText="User ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="subject_id" HeaderText="Subject ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="date" HeaderText="Date" DataFormatString="{0:dd/MMM/yyyy}"></asp:BoundColumn>
                        <asp:BoundColumn DataField="is_present" HeaderText="Present"></asp:BoundColumn>
                        <asp:EditCommandColumn ButtonType="PushButton" CancelText="Cancel" EditText="Edit" HeaderText="Modify" CausesValidation="False" UpdateText="Update"></asp:EditCommandColumn>
                        <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" HeaderText="Delete" Text="Delete"></asp:ButtonColumn>
                    </Columns>
                </asp:DataGrid>
            </div>
        </div>
    </div>
</asp:Content>

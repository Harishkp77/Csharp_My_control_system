<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="subjectContent.aspx.cs" Inherits="My_control_system.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="right-side">
    <div class="right-top">
        <div class="container-reg">
            <h3>Subject Registration</h3>
            <div class="registration-form">
                <div class="form-group">
                    <asp:Label ID="subjectid" runat="server" Text="Subject Id:"></asp:Label>
                    <asp:TextBox ID="subject_id" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Subject Id" ControlToValidate="subject_id" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Must Be Numeric" ControlToValidate="subject_id" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^\d+$"></asp:RegularExpressionValidator></div>
              <div class="form-group">
                    <asp:Label ID="id" runat="server" Text="Course Id:"></asp:Label>
                    <asp:TextBox ID="course_id" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required Course Id" ControlToValidate="course_id" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  <br /> <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Must Be Numeric" ControlToValidate="course_id" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^\d+$"></asp:RegularExpressionValidator></div>
                <div class="form-group">
                    <asp:Label ID="subname" runat="server" Text="Subject Name:"></asp:Label>
                    <asp:TextBox ID="subj_name" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Subject name" ControlToValidate="subj_name" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Max 100 Character" ControlToValidate="subj_name" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[\w\s,.\\-]{1,100}$"></asp:RegularExpressionValidator></div>
                <div class="form-group">
                    <asp:Label ID="stubject_desc" runat="server" Text="Subject description:"></asp:Label>
                    <asp:TextBox ID="subj_description" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required descripition" ControlToValidate="subj_description" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Max 100 Character" ControlToValidate="subj_description" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[\w\s,.\\-]{1,100}$"></asp:RegularExpressionValidator>  </div>
               
               
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
                <h2>Subject database</h2>
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged1" OnCancelCommand="DataGrid1_CancelCommand1" OnDeleteCommand="DataGrid1_DeleteCommand1" OnEditCommand="DataGrid1_EditCommand1" OnUpdateCommand="DataGrid1_UpdateCommand1">
                    <Columns>
                        <asp:BoundColumn DataField="subject_id" HeaderText="Subject ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="course_id" HeaderText="Course  ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="subject_name" HeaderText="Subject Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="subject_description" HeaderText="Subject  Descripition"></asp:BoundColumn>
                        <asp:EditCommandColumn ButtonType="PushButton" CancelText="Cancel" EditText="Edit" HeaderText="Modify" UpdateText="Update"></asp:EditCommandColumn>
                        <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" HeaderText="Delete" Text="Delete"></asp:ButtonColumn>
                    </Columns>
                </asp:DataGrid>

            </div>
        </div>
    </div>

</asp:Content>

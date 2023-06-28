<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="courseContent.aspx.cs" Inherits="My_control_system.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="right-side">
    <div class="right-top">
        <div class="container-reg">
            <h3>Course Registration</h3>
            <div class="registration-form">
                <div class="form-group">
                    <asp:Label ID="id" runat="server" Text="Course Id:"></asp:Label>
                    <asp:TextBox ID="course_id" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Course Id Required" ControlToValidate="course_id" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RangeValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Must Be Numeric" ControlToValidate="course_id" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="stu_fname" runat="server" Text="Course Name:"></asp:Label>
                    <asp:TextBox ID="course_name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Course Name Required" ControlToValidate="course_name" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Max 100 Character" ControlToValidate="course_name" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[\w\s,.\\-]{1,100}$"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="stu_lname" runat="server" Text="course_description:"></asp:Label>
                    <asp:TextBox ID="course_description" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Descripition" ControlToValidate="course_description" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator> <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Max 100 Character" ControlToValidate="course_description" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[\w\s,.\\-]{1,100}$"></asp:RegularExpressionValidator>
                </div>
               
               
                <div class="form-group inputsend">
                    <asp:Button ID="Register" runat="server" Text="Register" CssClass="btn-submit" OnClick="Register_Click" />
                    <asp:Button ID="Reset" runat="server" Text="Clear" CssClass="btn-reset" OnClick="Reset_Click" />
                </div>
                <div>
                    <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
                </div>


            </div>

        </div>
    </div>

     <div class="right-bottom">
            <div class="table-container">
                <h2>Course database</h2>
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged1" OnCancelCommand="DataGrid1_CancelCommand1" OnDeleteCommand="DataGrid1_DeleteCommand1" OnEditCommand="DataGrid1_EditCommand1" OnUpdateCommand="DataGrid1_UpdateCommand1">
                    <Columns>
                        <asp:BoundColumn DataField="course_id" HeaderText="Course  ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="course_name" HeaderText="Course Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="course_description" HeaderText="Descripition"></asp:BoundColumn>
                        <asp:EditCommandColumn ButtonType="PushButton" CancelText="Cancel" EditText="Edit" HeaderText="Modify" CausesValidation="False" UpdateText ="Update"></asp:EditCommandColumn>
                        <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" HeaderText="Delete" Text="Delete"></asp:ButtonColumn>
                    </Columns>
                </asp:DataGrid>

            </div>
        </div>
    </div>

</asp:Content>

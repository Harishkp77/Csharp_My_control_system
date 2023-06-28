<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="staffContent.aspx.cs" Inherits="My_control_system.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="right-side">
    <div class="right-top">
        <div class="container-reg">
            <h3>Staff Registration</h3>
            <div class="registration-form">
                <div class="form-group">
                    <asp:Label ID="id" runat="server" Text="Staff Id:"></asp:Label>
                    <asp:TextBox ID="staffid" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Staff Id Required" ControlToValidate="staffid" Display="Dynamic" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Must Be Numeric" ControlToValidate="staffid" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                    </div>
              
                <div class="form-group">
                    <asp:Label ID="staff_fname" runat="server" Text="First Name:"></asp:Label>
                    <asp:TextBox ID="firstname" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="First Name Required!" ControlToValidate="firstname" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Should Contain Only Alpha character" ControlToValidate="firstname" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[A-Za-z\s]+$"></asp:RegularExpressionValidator>
                    </div>
              
                <div class="form-group">
                    <asp:Label ID="staff_lname" runat="server" Text="Last Name:"></asp:Label>
                    <asp:TextBox ID="lastname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Last Name Required" ControlToValidate="lastname" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Should Contain Only Alpha character" ControlToValidate="lastname" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[A-Za-z\s]+$"></asp:RegularExpressionValidator>
                    
                </div>
                <div class="form-group">
                    <asp:Label ID="staff_email" runat="server" Text="Email Id:"></asp:Label>
                    <asp:TextBox ID="emailid" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email Id Required" ControlToValidate="emailid" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email Format!" ControlToValidate="emailid" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w{2,4}$"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="staff_phoneno" runat="server" Text="Mobile No:"></asp:Label>
                    <asp:TextBox ID="phone" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mobile Number Required" ControlToValidate="phone" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Mobile No must be 10 digit " ControlToValidate="phone" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                  
                </div>
                <div class="form-group">
                    <asp:Label ID="staff_address" runat="server" Text="Address:"></asp:Label>
                    <asp:TextBox ID="address" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address required" ControlToValidate="address" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <br />   
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Max 50 Character" ControlToValidate="address" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[\w\s,.\\-]{1,100}$"></asp:RegularExpressionValidator>
                
                </div>
                <div class="form-group">
                    <asp:Label ID="staff_dob" runat="server" Text="Date of Birth:"></asp:Label>
                    <asp:TextBox ID="dateofbirth" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Date of Birth Required" ControlToValidate="dateofbirth" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Date Format!" ControlToValidate="dateofbirth" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(0[1-9]|[1-2]\d|3[01])-(0[1-9]|1[0-2])-\d{4}$"></asp:RegularExpressionValidator>
      
                </div>
        
                <div class="form-group">
                    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                    <asp:DropDownList ID="ddlGender" runat="server">
                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                    <div class="form-group">
                    <asp:Label ID="staff_doj" runat="server" Text="Date of Joining:"></asp:Label>
                    <asp:TextBox ID="dateofjoining" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Date of Joining Required" ControlToValidate="dateofjoining" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="Invalid Date Format!" ControlToValidate="dateofjoining" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(0[1-9]|[1-2]\d|3[01])-(0[1-9]|1[0-2])-\d{4}$"></asp:RegularExpressionValidator>

                </div>
                <div class="form-group inputsend">
                    <asp:Button ID="Register" runat="server" Text="Register" CssClass="btn-submit" OnClick="Register_Click" />
                    <asp:Button ID="Reset" runat="server" Text="Clear" CssClass="btn-reset" OnClick="Reset_Click" CausesValidation="False" />
                </div>
                <div>
                    <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
                </div>

            </div>

        </div>
    
     

     <div class="right-bottom">
            <div class="table-container">
                <h2>Staff database</h2>
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged1" OnCancelCommand="DataGrid1_CancelCommand1" OnDeleteCommand="DataGrid1_DeleteCommand1" OnEditCommand="DataGrid1_EditCommand1" OnUpdateCommand="DataGrid1_UpdateCommand1">
                    <Columns>
                        <asp:BoundColumn DataField="staff_id" HeaderText="Student ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="staff_first_name" HeaderText="First Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="staff_last_name" HeaderText="Last Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="staff_email_id" HeaderText="Mail ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="staff_phone_number" HeaderText="Mobile Number"></asp:BoundColumn>
                        <asp:BoundColumn DataField="staff_address" HeaderText="Address"></asp:BoundColumn>
                        <asp:BoundColumn DataField="staff_dateofbirth" DataFormatString="{0:dd/MMM/yyyy}" HeaderText="Date Of Birth"></asp:BoundColumn>
                        <asp:BoundColumn DataField="staff_gender" HeaderText="Gender"></asp:BoundColumn>
                        <asp:BoundColumn DataField="staff_dateofjoin" HeaderText="Date of Joining" DataFormatString="{0:dd/MMM/yyyy}"></asp:BoundColumn>
                        <asp:EditCommandColumn ButtonType="PushButton" CancelText="Cancel" EditText="Edit" HeaderText="Modify" CausesValidation="False" UpdateText="Update"></asp:EditCommandColumn>
                        <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" HeaderText="Delete" Text="Delete"></asp:ButtonColumn>
                    </Columns>
                </asp:DataGrid>

            </div>
        </div>
    </div>
             </div>
 
</asp:Content>

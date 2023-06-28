﻿<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="markContent.aspx.cs" Inherits="My_control_system.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="right-side">
        <div class="right-top">
            <div class="container-reg">
                <h3>Mark Registration</h3>
                <div class="registration-form">
       
                    <div class="form-group">
                        <asp:Label ID="user_id" runat="server" Text="User Id:"></asp:Label>
                        <asp:TextBox ID="user_idTextBox" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="subject_id" runat="server" Text="Subject Id:"></asp:Label>
                        <asp:TextBox ID="subject_idTextBox" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="exam_id" runat="server" Text="Exam Id:"></asp:Label>
                        <asp:TextBox ID="exam_idTextBox" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="marks_obtained" runat="server" Text="Marks Obtained:"></asp:Label>
                        <asp:TextBox ID="marks_obtainedTextBox" runat="server"></asp:TextBox>
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
                <h2>Mark Database</h2>
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged1" OnCancelCommand="DataGrid1_CancelCommand1" OnDeleteCommand="DataGrid1_DeleteCommand1" OnEditCommand="DataGrid1_EditCommand1" OnUpdateCommand="DataGrid1_UpdateCommand1">
                    <Columns>
                        <asp:BoundColumn DataField="mark_id" HeaderText="Mark ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="user_id" HeaderText="User ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="subject_id" HeaderText="Subject ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="exam_id" HeaderText="Exam ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="marks_obtained" HeaderText="Marks Obtained"></asp:BoundColumn>
                        <asp:EditCommandColumn ButtonType="PushButton" CancelText="Cancel" EditText="Edit" HeaderText="Modify" CausesValidation="False" UpdateText="Update"></asp:EditCommandColumn>
                        <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" HeaderText="Delete" Text="Delete"></asp:ButtonColumn>
                    </Columns>
                </asp:DataGrid>
            </div>
        </div>
    </div>
</asp:Content>

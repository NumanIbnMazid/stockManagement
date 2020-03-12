<%@ Page Title="" Language="C#" MasterPageFile="~/Management.Master" AutoEventWireup="true" CodeBehind="CategorySetupUI.aspx.cs" Inherits="stockmanagement.CategorySetupUI" %>

<asp:Content ID="Content3" ContentPlaceHolderID="title" runat="server">

    Category Setup

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Panel ID="Panel1" runat="server" style=" margin-bottom:50px; position: relative; left:-350px; margin-top:30px;">

        <asp:Label ID="heading" runat="server" Text="Setup Category"  style="margin-left:0px; height: 40px; font-family:Algerian; font-size:25px; color:darkcyan; font-weight:700;"></asp:Label>

        <br /><br />

       <asp:Label ID="Label1" runat="server" Text="Category Name : " ></asp:Label>
        <asp:TextBox ID="categoryTextBox" runat="server" style="margin-left: 25px; margin-top: 0px" Width="242px"></asp:TextBox>
         <br />
        <br />
        <asp:Button ID="categorysaveButton" runat="server" OnClick="categorysaveButton_Click" style="margin-left: 135px; margin-top: 0px" Text="Save" Width="161px" />
        <br /><br />
        

        <asp:Label ID="resultLabel" runat="server" Text="" style="color:darkcyan; font-family:'Agency FB'; font-size: 20px; margin-left: 135px; margin-top:15px;"></asp:Label>
        <br /> <br /> 
        <asp:GridView ID="categoryGridView" runat="server" Height="206px" style="margin-left: 135px; margin-top: 10px" Width="308px"></asp:GridView>
       

    </asp:Panel>
     
</asp:Content>

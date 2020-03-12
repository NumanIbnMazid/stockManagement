<%@ Page Title="" Language="C#" MasterPageFile="~/Management.Master" AutoEventWireup="true" CodeBehind="CompanySetupUI.aspx.cs" Inherits="stockmanagement.CompanySetupUI" %>
<asp:Content ID="Content3" ContentPlaceHolderID="title" runat="server">

    Company Setup

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

     <asp:Panel ID="Panel1" runat="server" style=" margin-bottom:50px; position: relative; left:-350px; margin-top:12px; top: 20px; width: 450px;"> 

         <asp:Label ID="heading" runat="server" Text="Setup Company"  style="margin-left:0px; height: 40px; font-family:Algerian; font-size:25px; color:darkcyan; font-weight:700;"></asp:Label>

        <br /><br />

       <asp:Label ID="Label1" runat="server" Text="Company Name : "  ></asp:Label>
        <asp:TextBox ID="companyTextBox" runat="server" style="margin-left: 25px; margin-top: 0px" Width="242px"></asp:TextBox>
         <br />
        <br />
        <asp:Button ID="companysaveButton" runat="server" OnClick="companysaveButton_Click" style="margin-left: 136px; margin-top: 0px" Text="Save" Width="161px" />
        <br /><br />
        
         <asp:Label ID="resultLabel" runat="server" Text="" style="color:darkcyan; font-family:'Agency FB'; font-size: 20px; margin-left: 135px; margin-top:15px;"></asp:Label>
         <br /> 
        <asp:GridView ID="companyGridView" runat="server" Height="206px" style="margin-left: 138px; margin-top: 40px" Width="308px"></asp:GridView>
       

    </asp:Panel>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Management.Master" AutoEventWireup="true" CodeBehind="ViewSalesUI.aspx.cs" Inherits="stockmanagement.ViewSalesUI" %>
<asp:Content ID="Content3" ContentPlaceHolderID="title" runat="server">

   View Sales

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            $("#<%= fromDateTextBox.ClientID %>").datepicker({ dateFormat: "yy-mm-dd" }).val();
    });
    </script>
    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            $("#<%= toDateTextBox.ClientID %>").datepicker({ dateFormat: "yy-mm-dd" }).val();
    });
    </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

     <asp:Panel ID="Panel1" runat="server" style=" margin-bottom:50px; position: relative; left:-241px; margin-top:30px; top: 0px; width: 508px;"> 

         <asp:Label ID="heading" runat="server" Text="View Sales"  style="margin-left:0px; height: 40px; font-family:Algerian; font-size:25px; color:darkcyan; font-weight:700;"></asp:Label>

        <br /><br />

       <asp:Label ID="Label1" runat="server" Text="From : "  ></asp:Label>
        <asp:TextBox ID="fromDateTextBox" runat="server" Font-Size="14pt" Width="174px" style="margin-left: 58px; margin-top: 0px;" onblur="if(this.value == '') { this.value='dd/mm/yyyy'}" 
onfocus="if (this.value=='yy-mm-dd') {this.value=''}"></asp:TextBox>
         <br /><br />
        <asp:Label ID="Label2" runat="server" Text="To : "  ></asp:Label>
         <asp:TextBox ID="toDateTextBox" runat="server" Font-Size="14pt" Width="174px" style="margin-left: 74px; margin-top: 0px;" onblur="if(this.value == '') { this.value='dd/mm/yyyy'}" 
onfocus="if (this.value=='yy-mm-dd') {this.value=''}"></asp:TextBox>
         <br /><br />
         <asp:Button ID="searchViewSalesButton" runat="server" Text="Search" Height="34px" style="margin-left: 102px; margin-top: 0px" Width="112px" />
    
      <br /><br />
         <asp:GridView ID="searchViewItemGridView" runat="server" style="margin-left: 102px" Width="315px"></asp:GridView>
  </asp:Panel>

</asp:Content>

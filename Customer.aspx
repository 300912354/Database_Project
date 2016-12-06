<%@ Page Language="C#" MasterPageFile="~/Dorknozzle.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="_Default" Title="Welcome to Dorknozzle!" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">



</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    
<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
   <Columns>
         <asp:CommandField ShowEditButton="True"   />
                <asp:CommandField  ShowInsertButton="true" />
   </Columns>  
</asp:GridView>
   
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DorknozzleCS %>" ProviderName="<%$ ConnectionStrings:DorknozzleCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;CUSTOMER&quot;"></asp:SqlDataSource>
  
    <br />
   <%-- <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" Width="174px" />--%>
 
    <br />
  
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/Dorknozzle.master" AutoEventWireup="true" CodeFile="EmployeeDirectory.aspx.cs" Inherits="EmployeeDirectory" Title="Dorknozzle Employee Directory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Employee Directory</h1>
  <asp:DataList id="employeesList" runat="server" 
    onitemcommand="employeesList_ItemCommand" DataKeyField="EMPLOYEEID" DataSourceID="SqlDataSource1" >
      <ItemTemplate>
          EMPLOYEEID:
          <asp:Label ID="EMPLOYEEIDLabel" runat="server" Text='<%# Eval("EMPLOYEEID") %>' />
          <br />
          DEPARTMENTID:
          <asp:Label ID="DEPARTMENTIDLabel" runat="server" Text='<%# Eval("DEPARTMENTID") %>' />
          <br />
          NAME:
          <asp:Label ID="NAMELabel" runat="server" Text='<%# Eval("NAME") %>' />
          <br />
          USERNAME:
          <asp:Label ID="USERNAMELabel" runat="server" Text='<%# Eval("USERNAME") %>' />
          <br />
          PASSWORD:
          <asp:Label ID="PASSWORDLabel" runat="server" Text='<%# Eval("PASSWORD") %>' />
          <br />
          ADDRESS:
          <asp:Label ID="ADDRESSLabel" runat="server" Text='<%# Eval("ADDRESS") %>' />
          <br />
          CITY:
          <asp:Label ID="CITYLabel" runat="server" Text='<%# Eval("CITY") %>' />
          <br />
          STATE:
          <asp:Label ID="STATELabel" runat="server" Text='<%# Eval("STATE") %>' />
          <br />
          ZIP:
          <asp:Label ID="ZIPLabel" runat="server" Text='<%# Eval("ZIP") %>' />
          <br />
          HOMEPHONE:
          <asp:Label ID="HOMEPHONELabel" runat="server" Text='<%# Eval("HOMEPHONE") %>' />
          <br />
          EXTENSION:
          <asp:Label ID="EXTENSIONLabel" runat="server" Text='<%# Eval("EXTENSION") %>' />
          <br />
          MOBILEPHONE:
          <asp:Label ID="MOBILEPHONELabel" runat="server" Text='<%# Eval("MOBILEPHONE") %>' />
          <br />
          <br />
      </ItemTemplate>
    <SeparatorTemplate>
      <hr />
    </SeparatorTemplate>
  </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
   <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot;"></asp:SqlDataSource>--%>
</asp:Content>


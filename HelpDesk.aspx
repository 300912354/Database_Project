<%@ Page Language="C#" MasterPageFile="~/Dorknozzle.master" AutoEventWireup="true" CodeFile="HelpDesk.aspx.cs" Inherits="HelpDesk" Title="Dorknozzle Help Desk" %>

<%--<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="background-color: #C0C0C0">Employee Help Desk Request</h1>
    <div class="jumbotron" style="background-color: #C0C0C0">
  <asp:Label ID="dbErrorMessage" ForeColor="Red" runat="server" />
  <p>
    DeDepartmentID:<br />
    <asp:TextBox id="stationTextBox" runat="server"
        CssClass="textbox" />
    <asp:RequiredFieldValidator id="stationNumReq" runat="server"
        ControlToValidate="stationTextBox"
        ErrorMessage="<br />You must enter a station number!"
        Display="None" />
  </p>
  <p>
    Problem Category:<br />
    <asp:DropDownList id="categoryList" runat="server"
        CssClass="dropdownmenu" DataSourceID="SqlDataSource1" DataTextField="DESCRIPTION" DataValueField="DESCRIPTION" />
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DorknozzleCS %>" ProviderName="<%$ ConnectionStrings:DorknozzleCS.ProviderName %>" SelectCommand="SELECT &quot;DESCRIPTION&quot; FROM &quot;REQUESTS&quot;"></asp:SqlDataSource>
  </p>
  <%--<p>
    Problem Subject:<br />
    <asp:DropDownList id="subjectList" runat="server" DataSourceID="SqlDataSource1" DataTextField="SUBJECT" DataValueField="SUBJECT" CssClass="dropdownmenu" />
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DorknozzleCS %>" ProviderName="<%$ ConnectionStrings:DorknozzleCS.ProviderName %>" SelectCommand="SELECT &quot;SUBJECT&quot; FROM &quot;HELPDESKSUBJECTS&quot;"></asp:SqlDataSource>
  </p>--%>
  <p>
    Problem Description:r />
    <asp:TextBox id="descriptionTextBox" runat="server"
        CssClass="textbox" Columns="40" Rows="4"
        TextMode="MultiLine" />
    <asp:RequiredFieldValidator id="descriptionReq" runat="server"
       ControlToValidate="descriptionTextBox"
       ErrorMessage="<br />You must enter a description!"
       Display="None" />
  </p>
        </div>
  <p>
   <%-- <asp:Button id="submitButton" runat="server"
        CssClass="button" Text="Submit Request" onclick="submitButton_Click" /></p>--%>
</asp:Content>


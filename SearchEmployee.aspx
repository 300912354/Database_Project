<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchEmployee.aspx.cs" Inherits="SearchEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    
<body style="height: 1412px; background-color: #C0C0C0;" >
    <div class="jumbotron">
       
    <form id="form1" runat="server" >
           <a class="navbar-brand" runat="server" href="~/Customer.aspx">Customer_Page</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          <a runat="server" href="~/Home_Page.aspx">Home_Page</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          <a runat="server" href="~/Departments.aspx">Departments</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <a runat="server" href="~/HelpDesk.aspx">HelpDesk</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <a runat="server" href="~/Loan.aspx">Loan</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a runat="server" href="~/SearchEmployee.aspx">SearchEmployee</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <br />
         <h2>Only Registered Employees</h2>
        <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox>
        <asp:Button ID="btmSearch" runat="server" Text="Search Employee" OnClick="btmSearch_Click" />
        <br />
    <div style="height: 482px">
    
        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Only existing employees"></asp:RequiredFieldValidator>--%>
    <asp:RequiredFieldValidator ControlToValidate="txtEmpName" ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Only existing employees" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:DetailsView ID="dtlEmployee" runat="server" Height="338px" Width="239px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
    
    </div>
    </form>
       </div>   
</body>
      
</html>

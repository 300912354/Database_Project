<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employees.aspx.cs" Inherits="Employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 660px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #C0C0C0">
        <a runat="server" class="navbar-brand" href="~/Customer.aspx">Customer_Page</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a runat="server" href="~/Home_Page.aspx">Home_Page</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a runat="server" href="~/Departments.aspx">Departments</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a runat="server" href="~/HelpDesk.aspx">HelpDesk</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a runat="server" href="~/Loan.aspx">Loan</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a runat="server" href="~/SearchEmployee.aspx">SearchEmployee</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="EMPLOYEEID" HeaderText="EMPLOYEEID" SortExpression="EMPLOYEEID" />
                <asp:BoundField DataField="DEPARTMENTID" HeaderText="DEPARTMENTID" SortExpression="DEPARTMENTID" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                <asp:BoundField DataField="STATE" HeaderText="STATE" SortExpression="STATE" />
                <asp:BoundField DataField="ZIP" HeaderText="ZIP" SortExpression="ZIP" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DorknozzleCS %>" 
            ProviderName="<%$ ConnectionStrings:DorknozzleCS.ProviderName %>" SelectCommand="SELECT EmployeeID,DepartmentID,name,address,city,state,zip    FROM &quot;EMPLOYEES&quot;" 
            InsertCommand="insertemployeeprocedure" InsertCommandType="StoredProcedure">
     <InsertParameters>
        <asp:ControlParameter Name="EMPLOYEEID" ControlID="txtEMPLOYEEID" Type="Int32" />
        <asp:ControlParameter Name="DEPARTMENTID" ControlID="txtDEPARTMENTID" Type="Int32" />
         <asp:ControlParameter Name="NAME" ControlID="txtName" Type="String" />
        <asp:ControlParameter Name="USERNAME" ControlID="txtUSERNAME" Type="String" />
          <asp:ControlParameter Name="PASSWORD" ControlID="txtPASSWORD" Type="String" />
         <asp:ControlParameter Name="ADDRESS" ControlID="txtADDRESS" Type="String" />
        <asp:ControlParameter Name="CITY" ControlID="txtCITY" Type="String" />
           <asp:ControlParameter Name="STATE" ControlID="txtSTATE" Type="String" />
          <asp:ControlParameter Name="ZIP" ControlID="txtZIP" Type="String" />
         <asp:ControlParameter Name="HOMEPHONE" ControlID="txtHOMEPHONE" Type="String" />
        <asp:ControlParameter Name="EXTENSION" ControlID="txtEXTENSION" Type="String" />
        <asp:ControlParameter Name="MOBILEPGONE" ControlID="txtMOBILEPGONE" Type="String" />
       
    </InsertParameters>
            </asp:SqlDataSource>
    <div style="background-color: #C0C0C0">
        <br />
        <br />
        <%--<asp:Label ID="Label1" runat="server" Text="EMPLOYEEID"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />--%>
<asp:Label ID="Label3" runat="server" Text="DEPARTMENTID"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label4" runat="server" Text="NAME"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 72px"></asp:TextBox><br />
        <%--asp:Label ID="Label5" runat="server" Text="USERNAME"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label6" runat="server" Text="PASSWORD"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />--%>
        <asp:Label ID="Label7" runat="server" Text="ADDRESS"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Width="116px" style="margin-left: 50px"></asp:TextBox><br />
        <asp:Label ID="Label8" runat="server" Text="CITY"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" style="margin-left: 81px" Width="118px"></asp:TextBox><br />
        <asp:Label ID="Label9" runat="server" Text="STATE"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server" style="margin-left: 71px" Width="117px"></asp:TextBox><br />
        <asp:Label ID="Label10" runat="server" Text="ZIP"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server" Width="118px" style="margin-left: 93px"></asp:TextBox><br />
        <%--<asp:Label ID="Label11" runat="server" Text="HOMEPHONE"></asp:Label>
        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label12" runat="server" Text="EXTENSION"></asp:Label>
        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label13" runat="server" Text="MOBILEPGONE"></asp:Label>
        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>--%>

        <br />
        <br />
        <asp:Button ID="Submit" runat="server" OnClick="btnSubmit_Click" Text="ADD" />

    </div>
    </form>
</body>
</html>

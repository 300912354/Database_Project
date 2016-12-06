<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employees.aspx.cs" Inherits="Employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="EMPLOYEEID" HeaderText="EMPLOYEEID" SortExpression="EMPLOYEEID" />
                <asp:BoundField DataField="DEPARTMENTID" HeaderText="DEPARTMENTID" SortExpression="DEPARTMENTID" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
                <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" SortExpression="PASSWORD" />
                <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                <asp:BoundField DataField="STATE" HeaderText="STATE" SortExpression="STATE" />
                <asp:BoundField DataField="ZIP" HeaderText="ZIP" SortExpression="ZIP" />
                <asp:BoundField DataField="HOMEPHONE" HeaderText="HOMEPHONE" SortExpression="HOMEPHONE" />
                <asp:BoundField DataField="EXTENSION" HeaderText="EXTENSION" SortExpression="EXTENSION" />
                <asp:BoundField DataField="MOBILEPGONE" HeaderText="MOBILEPGONE" SortExpression="MOBILEPGONE" />
              <%--  <asp:CommandField ShowInsertButton="true" />--%>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DorknozzleCS %>" 
            ProviderName="<%$ ConnectionStrings:DorknozzleCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot;" 
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
    <div>
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

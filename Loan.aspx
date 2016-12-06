<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Loan.aspx.cs" Inherits="Loan" %>

<body >
    <form id="form" runat="server" style="background-color: #C0C0C0; height: 1772px;">
  
    <div>
    
        Calculate Loan<br />
        <br />
        <br />
    
    </div>
        Amount<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 14px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="Label1" runat="server" Text="Rate"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 6px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" 
    style="margin-left: 2px"></asp:TextBox>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 471px" Text="Loan" />
        </p>
        <p>
            &nbsp;</p>
  
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="LOANID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="LOANID" HeaderText="LOANID" ReadOnly="True" SortExpression="LOANID" />
                <asp:BoundField DataField="BRANCHID" HeaderText="BRANCHID" SortExpression="BRANCHID" />
                <asp:BoundField DataField="LOANNUMBER" HeaderText="LOANNUMBER" SortExpression="LOANNUMBER" />
                <asp:BoundField DataField="LOANTYPE" HeaderText="LOANTYPE" SortExpression="LOANTYPE" />
                <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" SortExpression="AMOUNT" />
                <asp:BoundField DataField="RATE" HeaderText="RATE" SortExpression="RATE" />
                <asp:BoundField DataField="CUSTOMERID" HeaderText="CUSTOMERID" SortExpression="CUSTOMERID" />
                <asp:BoundField DataField="PERIOD" HeaderText="PERIOD" SortExpression="PERIOD" />
            </Columns>
        </asp:GridView>
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DorknozzleCS %>" 
            ProviderName="<%$ ConnectionStrings:DorknozzleCS.ProviderName %>" SelectCommand="SELECT * FROM &quot;LOAN&quot;"></asp:SqlDataSource>

    
        <br />
        <br />

    
    BRANCHID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtBRANCHID" runat="server"></asp:TextBox>
    <br />
    LOANTYPE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtLOANTYPE" runat="server"></asp:TextBox>
    <br />
    AMOUNT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="txtAMOUNT" runat="server"></asp:TextBox>
    <br />
    RATE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtRATE" runat="server"></asp:TextBox>
     <br />
        CUSTOMERID&nbsp; <asp:TextBox ID="txtCUSTOMERID" runat="server"></asp:TextBox>
    <br />
    PERIOD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtPERIOD" runat="server"></asp:TextBox>
     <br />
      <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="ADD" Width="174px" />
 
   
    
    
  </form>
   
    
</body>


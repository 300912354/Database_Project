<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home_Page.aspx.cs" Inherits="HOME_PAGE" %>



  <body>
    <form id="form2" runat="server">
      <!-- Header -->
      <div class="Header">
        <asp:ScriptManager ID="DorknozzleScriptManager" runat="server">
        </asp:ScriptManager>
        <asp:Image id="Image1" runat="server"
            ImageUrl="~/Images/cc.jpg" Width="1261px" Height="256px"
            AlternateText="The Official Dorknozzle Company
            Intranet" />
      </div>
    <div class="Menu" style="background-color: #C0C0C0">
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem ImageUrl="~/Images/book_closed.gif" NavigateUrl="~/Customer.aspx" Text="Customer Directory" Value="Customer"></asp:MenuItem>
                <asp:MenuItem ImageUrl="~/Images/book_closed.gif" NavigateUrl="~/HelpDesk.aspx" Text="Help desk" Value="Help desk"></asp:MenuItem>
                <asp:MenuItem ImageUrl="~/Images/book_closed.gif" NavigateUrl="~/Employees.aspx" Text="Employee " Value="Employee Directory"></asp:MenuItem>
                <asp:MenuItem ImageUrl="~/Images/book_closed.gif" NavigateUrl="~/Departments.aspx" Text="Departments" Value="Department"></asp:MenuItem>
                 <asp:MenuItem ImageUrl="~/Images/book_closed.gif" NavigateUrl="~/Loan.aspx" Text="Calculate Loan" Value="Calculate Loan"></asp:MenuItem>
                 <asp:MenuItem ImageUrl="~/Images/book_closed.gif" NavigateUrl="~/SearchEmployee.aspx" Text="Search Employee" Value="Search Employee"></asp:MenuItem>
                 </Items>
          </asp:Menu>
    </div>
    </form>
      <div style="background-color: #C0C0C0" >
      <h1>Company News</h1>
  <p> web-based search engine that helps you uncover critical intel about your competitors that 
      you might otherwise miss. Save countless hours with intelligent search technology that instantly finds critical data points 
      buried in analyst research, premium news, company presentations, conference transcripts, filings, press releases — even your own, uploaded content</p>
  <h1>Company Events</h1>
  <p>Quickly search millions of indexed documents and use unique filters to find answers in seconds</p><br/>
<p>Search across one company, your watchlist, an industry or all public companies worldwide and know exactly who said what</p><br />
<p style="background-color: #C0C0C0">Use Smart Synonyms to automatically include various ways companies mention key financial terms</p><br />
<p>Get email alerts every time a company mentions "X" (any keyword or theme)</p>
          </div>
</body>
</html>

<%@ Page Language="C#" MasterPageFile="~/Dorknozzle.master" AutoEventWireup="true" CodeFile="Departments.aspx.cs" Inherits="Departments" title="Dorknozzle Departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #gridContainer {
            width: 1154px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <%-- <h1 style="background-color: #C0C0C0; height: 49px; margin-top: 0px;">Departments</h1>--%>
    <div class="jumbotron">
        <%--<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"/> 
  <asp:UpdatePanel runat="server" ID="DepartmentsUpdatePanel">--%>
   <%-- <ContentTemplate>--%>
      <div id="gridContainer" style="background-color: #C0C0C0; height: 2148px;">
      <asp:GridView id="departmentsGrid" runat="server" AllowPaging="True" 
          PageSize="4" AllowSorting="True" 
          onpageindexchanging="departmentsGrid_PageIndexChanging" 
          onsorting="departmentsGrid_Sorting" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="223px" Width="417px" >
          <AlternatingRowStyle BackColor="PaleGoldenrod" />
          <Columns>
              <asp:BoundField DataField="DEPARTMENTID" HeaderText="DEPARTMENTID" ReadOnly="True" SortExpression="DEPARTMENTID" />
              <asp:BoundField DataField="DEPARTMENTS" HeaderText="DEPARTMENTS" SortExpression="DEPARTMENTS" />
          </Columns>
          <FooterStyle BackColor="Tan" />
          <HeaderStyle BackColor="Tan" Font-Bold="True" />
          <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
          <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
          <SortedAscendingCellStyle BackColor="#FAFAE7" />
          <SortedAscendingHeaderStyle BackColor="#DAC09E" />
          <SortedDescendingCellStyle BackColor="#E1DB9C" />
          <SortedDescendingHeaderStyle BackColor="#C2A47B" />
      </asp:GridView>
          
      </div>
   <%-- </ContentTemplate>
  </asp:UpdatePanel>--%>
        </div>
  <%--<atk:UpdatePanelAnimationExtender ID="UpdatePanelAnimationExtender1" runat="server" TargetControlID="DepartmentsUpdatePanel" BehaviorID="Animation">--%>
  <%--  <Animations>
      <OnUpdating>
        <FadeOut AnimationTarget="gridContainer" minimumOpacity=".2" />
      </OnUpdating>
      <OnUpdated>
        <FadeIn AnimationTarget="gridContainer" minimumOpacity=".2" />
      </OnUpdated>
    </Animations>
  </atk:UpdatePanelAnimationExtender>--%>
</asp:Content>


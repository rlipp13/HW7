<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
    <div class="col-md-6 col-md-offset-4 form-inline" role="form" id="search">
        <div class="form-group">
            <asp:TextBox ID="tbSearch" runat="server" CssClass="form-control" Placeholder="Search by Movie Name"></asp:TextBox>
            
        </div>
        <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-default" />
    </div>
    </div>
    <div class="row">
    <asp:GridView ID="GridView1" GridLines="None" runat="server" CssClass="table table-hover" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MovieID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="MovieID" HeaderText="MovieID" InsertVisible="False" ReadOnly="True" SortExpression="MovieID" Visible="False" />
        <asp:BoundField DataField="MovieName" HeaderText="Movie Name" SortExpression="MovieName" />
        <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
        <asp:HyperLinkField DataNavigateUrlFields="MovieID" DataNavigateUrlFormatString="MovieDetails.aspx?MovieID={0}" Text="View Details" />
    </Columns>
</asp:GridView>
        </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MovieID], [MovieName], [Director] FROM [Movies]" FilterExpression="MovieName Like '%{0}%'">
    <FilterParameters>
        <asp:ControlParameter ControlID="tbSearch" Name="MovieName" PropertyName="Text" Type="String" />
    </FilterParameters>
    </asp:SqlDataSource>
</asp:Content>


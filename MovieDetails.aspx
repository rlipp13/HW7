<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MovieDetails.aspx.vb" Inherits="admin_MovieDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
      <div class="col-md-12">
    <asp:DetailsView GridLines="None" CssClass="table table-hover" ID="DetailsView1" runat="server"  AutoGenerateRows="False" DataKeyNames="MovieID" DataSourceID="SqlDataSource1">
    <Fields>
        <asp:BoundField DataField="MovieID" HeaderText="MovieID" InsertVisible="False" ReadOnly="True" SortExpression="MovieID" Visible="False" />
        <asp:BoundField DataField="MovieName" HeaderText="Movie Name" SortExpression="MovieName" />
        <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
        <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
        <asp:BoundField DataField="YearReleased" HeaderText="Year Released" SortExpression="YearReleased" />
        <asp:BoundField DataField="LeadActor" HeaderText="Lead Actor" SortExpression="LeadActor" />
    </Fields>
</asp:DetailsView>
          </div>
    </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MovieID], [MovieName], [Director], [Genre], [YearReleased], [LeadActor] FROM [Movies] WHERE ([MovieID] = @MovieID)">
    <SelectParameters>
        <asp:QueryStringParameter Name="MovieID" QueryStringField="MovieID" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>


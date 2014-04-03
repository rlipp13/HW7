<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddNewMovie.aspx.vb" Inherits="admin_AddNewMovie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12">
    <asp:DetailsView ID="DetailsView1" GridLines="None" CssClass="table" runat="server" AutoGenerateRows="False" DataKeyNames="MovieID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
    <Fields>
        <asp:BoundField DataField="MovieID" HeaderText="MovieID" InsertVisible="False" ReadOnly="True" SortExpression="MovieID" />
        <asp:BoundField DataField="MovieName" HeaderText="Movie Name" SortExpression="MovieName" />
        <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
        <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
        <asp:BoundField DataField="YearReleased" HeaderText="Year Released" SortExpression="YearReleased" />
        <asp:BoundField DataField="LeadActor" HeaderText="Lead Actor" SortExpression="LeadActor" />
        <asp:CommandField ShowInsertButton="True" ButtonType="Button" >
        <ControlStyle CssClass="btn btn-default" />
        </asp:CommandField>
    </Fields>
</asp:DetailsView>
            </div>
        </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Movies] WHERE [MovieID] = @MovieID" InsertCommand="INSERT INTO [Movies] ([MovieName], [Director], [Genre], [YearReleased], [LeadActor]) VALUES (@MovieName, @Director, @Genre, @YearReleased, @LeadActor)" SelectCommand="SELECT [MovieID], [MovieName], [Director], [Genre], [YearReleased], [LeadActor] FROM [Movies]" UpdateCommand="UPDATE [Movies] SET [MoiveName] = @MovieName, [Director] = @Director, [Genre] = @Genre, [YearReleased] = @YearReleased, [LeadActor] = @LeadActor WHERE [MovieID] = @MovieID">
    <DeleteParameters>
        <asp:Parameter Name="MovieID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="MovieName" Type="String" />
        <asp:Parameter Name="Director" Type="String" />
        <asp:Parameter Name="Genre" Type="String" />
        <asp:Parameter Name="YearReleased" Type="String" />
        <asp:Parameter Name="LeadActor" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="MovieName" Type="String" />
        <asp:Parameter Name="Director" Type="String" />
        <asp:Parameter Name="Genre" Type="String" />
        <asp:Parameter Name="YearReleased" Type="String" />
        <asp:Parameter Name="LeadActor" Type="Decimal" />
        <asp:Parameter Name="MovieID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>


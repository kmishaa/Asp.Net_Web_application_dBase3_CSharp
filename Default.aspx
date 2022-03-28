<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <h1 align="Center"> Таблица Supplier</h1>

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HorizontalAlign="Center" BackColor="Purple" ForeColor="DarkRed">
    <Columns>
        <asp:BoundField DataField="SUPPLIER_I" HeaderText="ID_Поставщика" SortExpression="SUPPLIER_I" >
        <HeaderStyle HorizontalAlign="Center" />
        <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="COMPANY_NA" HeaderText="Имя_Компании" SortExpression="COMPANY_NA" >
        <HeaderStyle HorizontalAlign="Center" />
        <ItemStyle HorizontalAlign="Left" />
        </asp:BoundField>
        <asp:BoundField DataField="CITY" HeaderText="Город" SortExpression="CITY" >
        <HeaderStyle HorizontalAlign="Center" />
        <ItemStyle HorizontalAlign="Left" />
        </asp:BoundField>
        <asp:BoundField DataField="POSTAL_COD" HeaderText="Код" SortExpression="POSTAL_COD" >
        <HeaderStyle HorizontalAlign="Center" />
        <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="PHONE" HeaderText="Телефон" SortExpression="PHONE" >
        <HeaderStyle HorizontalAlign="Center" />
        <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT SUPPLIER_I, COMPANY_NA, CITY, POSTAL_COD, PHONE FROM SUPPLIER ORDER BY SUPPLIER_I LIMIT 20"></asp:SqlDataSource>

</asp:Content>

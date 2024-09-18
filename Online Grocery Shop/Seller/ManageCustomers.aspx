<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/GSSeller.master" AutoEventWireup="true" CodeFile="ManageCustomers.aspx.cs" Inherits="Admin_ManageCustomers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <fieldset class="fieldsetmain">
        <legend style="font-size: 16px;">CUSTOMER MANAGEMENT
        </legend>

        <div align="center" style="height: 30px;">
            <asp:Label ID="lblMsg" runat="server" CssClass="lblresponse" />
        </div>
        <div>
        </div>

       <div align="center">
    <asp:GridView ID="gvCustomer" runat="server" Width="850px" CaptionAlign="Top"
        AutoGenerateColumns="False" BackColor="White"
        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3"
        CellSpacing="2" GridLines="Vertical"
        EmptyDataText="There Are no Customers"
        OnRowDeleting="gvCustomer_RowDeleting" OnRowEditing="gvCustomer_RowEditing"
        OnRowUpdating="gvCustomer_RowUpdating" OnRowCancelingEdit="gvCustomer_RowCancelingEdit">
       
       
        <Columns>
            <asp:TemplateField HeaderText="Id">
                <ItemTemplate>
                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("Id") %>' CssClass="gridview-label" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="lblname" runat="server" Text='<%# Eval("Name") %>' CssClass="gridview-label" />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:Label ID="lblemail" runat="server" Text='<%# Eval("Email") %>' CssClass="gridview-label" />
                </ItemTemplate>

            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Phone Number">
    <ItemTemplate>
        <asp:Label ID="lblphnno" runat="server" Text='<%# Eval("PhoneNo") %>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>
          
        </Columns>

        <EmptyDataRowStyle BackColor="#eeeeee" BorderColor="Black"
            BorderStyle="Solid" BorderWidth="1px" Font-Size="Large" ForeColor="#04435F"
            HorizontalAlign="Center" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#04435F" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#04435F" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle CssClass="gridview-row" BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</div>

<style>
    .gridview-label {
        white-space: nowrap;
    }
</style>



    </fieldset>


</asp:Content>


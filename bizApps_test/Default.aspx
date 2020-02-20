<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .validationError {
            border-left: 10px solid red;
            padding-left: 15px;
        }
    </style>
    <h1>bizApps test</h1>
    <hr />
    <div class="row">
        <div class="col-sm-3">
            <div class="form-group">
                <label for="edParam1">Кол-во элементов на странице</label>
                <asp:TextBox ID="edParam1" name="edParam1" runat="server" CssClass="form-control" />
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label for="exampleInputEmail1">№ страницы</label>
                <asp:TextBox ID="edParam2" runat="server" CssClass="form-control" />
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group" style="padding-top:25px">
                <asp:Button ID="load" runat="server" Text="Загрузить" CssClass="btn btn-primary" OnClick="load_Click" />
                <asp:Button ID="save" runat="server" Text="Сохранить" CssClass="btn btn-default" OnClick="save_Click" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="com-lg-12" style="padding-left: 15px;">
            <asp:CustomValidator runat="server" ID="MyValidator" Display="None" EnableClientScript="false" />
            <asp:ValidationSummary ID="ErrorSummary" runat="server" HeaderText="Ошибки валидации" CssClass="validationError" />
        </div>
    </div>

    <hr />
    <div class="row">
        <div class="com-lg-12">
            <asp:GridView ID="gv" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:CheckBox ID="selected" runat="server" CssClass="form-control" Checked='<%# Bind("selected") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User Id">
                        <ItemTemplate>
                            <asp:Label ID="labelID" runat="server" Text='<%# Bind("id") %>' CssClass="form-control"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="First Name">
                        <ItemTemplate>
                            <asp:Label ID="labelfirstname" runat="server" Text='<%# Bind("first_name") %>' CssClass="form-control"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <ItemTemplate>
                            <asp:Label ID="labellastname" runat="server" Text='<%# Bind("last_name") %>' CssClass="form-control"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User email">
                        <ItemTemplate>
                            <asp:Label ID="labelemail" runat="server" Text='<%# Bind("email") %>' CssClass="form-control"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Avatar">
                        <ItemTemplate>
                            <asp:Label ID="labelavatar" runat="server" Text='<%# Bind("avatar") %>' CssClass="form-control"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>
    </div>
</asp:Content>

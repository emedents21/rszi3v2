<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="rszi3v2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>User Table</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!-- Пошук -->
            <div class="row justify-content-center mt-3">
                <div class="col-md-6">
                    <asp:TextBox ID="SearchInput" runat="server" CssClass="form-control" placeholder="Enter filter by Name"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <asp:Button ID="SearchButton" runat="server" Text="Press me" CssClass="btn btn-outline-dark" OnClick="SearchButton_Click" />
                </div>
            </div>

            <!-- Заголовок -->
            <h2 class="mt-5">My User Table</h2>

            <!-- Таблиця користувачів -->
            <asp:GridView ID="UserGridView" runat="server" AutoGenerateColumns="False" CssClass="table mt-3">
                <Columns>
                    <asp:BoundField HeaderText="Name" DataField="Name" />
                    <asp:BoundField HeaderText="Surname" DataField="Surname" />
                </Columns>
            </asp:GridView>

            <!-- Додавання нового користувача -->
            <div class="mt-3">
                <h3>Add New User</h3>
                <div class="form-row">
                    <div class="col-md-4 mb-3">
                        <asp:TextBox ID="NameInput" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                    </div>
                    <div class="col-md-4 mb-3">
                        <asp:TextBox ID="SurnameInput" runat="server" CssClass="form-control" placeholder="Surname"></asp:TextBox>
                    </div>
                    <div class="col-md-4 mb-3">
                        <asp:Button ID="AddUserButton" runat="server" Text="Add User" CssClass="btn btn-primary" OnClick="AddUserButton_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

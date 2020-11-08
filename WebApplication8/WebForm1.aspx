<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication8.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        legend {
font-size: 1.3em;
border: medium dotted #60A4C1;
}
label {
font-weight: bold;
}
    </style>
    <link href="Style/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form2" runat="server">
        <div style="margin:0px auto; width:500px">
        <div style="width:500px">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">CREATE USER</h3>
            </div>

            <div class="panel-body">
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">USERNAME</label>
                        <div class="col-sm-10">
                            <asp:TextBox CssClass="form-control" ID="txtUsername" placeHolder="Enter Username" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">PASSWORD</label>
                        <div class="col-sm-10">

                            <asp:TextBox CssClass="form-control" ID="txtPassword" placeHolder="Enter Password" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">USERTYPE</label>
                        <div class="col-sm-10">
                            <asp:DropDownList CssClass="form-control" ID="ddlUsertype" runat="server">
                                <asp:ListItem>Choose Roles</asp:ListItem>
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>User</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Choose usertype" ControlToValidate="ddlUsertype" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">FULLNAME</label>
                        <div class="col-sm-10">
                            <asp:TextBox CssClass="form-control" ID="txtFullname" placeHolder="Enter Fullname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtFullname" ErrorMessage="Fullname Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                            <asp:HiddenField ID="HiddenField1" runat="server" />
                        </div>

                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Save" OnClick="btnSave_Click" ValidationGroup="a" />
                            <asp:Button ID="Button2" CssClass="btn btn-info" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                            <asp:Button ID="Button3" CssClass="btn btn-danger" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                            &nbsp;</div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        </div>
        <div style="margin:0px auto; width:500px">
        <div style="width:500px">
        <asp:GridView CssClass="table table-bordered" ID="GridView1" runat="server" Width="452px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
            <Columns>
                <asp:CommandField ShowSelectButton="True" ButtonType="Image" ControlStyle-Height="16px" ControlStyle-Width="16px" SelectImageUrl="~/Images/edit-29.png" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
            </div>
        </div>


    </form>
    
</body>
</html>

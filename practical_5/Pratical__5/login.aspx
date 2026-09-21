  <%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="Pratical__5.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login - Academic Portal</title>

    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial;
        }

        body {
            min-height: 100vh;
            background: linear-gradient(135deg, #2563eb, #60a5fa);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-box {
            width: 400px;
            background: white;
            padding: 40px;
            border-radius: 18px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.20);
        }

        .logo {
            text-align: center;
            font-size: 45px;
            margin-bottom: 10px;
        }

        h2 {
            text-align: center;
            color: #1e293b;
            margin-bottom: 8px;
        }

        .subtitle {
            text-align: center;
            color: #64748b;
            margin-bottom: 30px;
        }

        .label {
            display: block;
            color: #334155;
            font-weight: bold;
            margin-bottom: 7px;
        }

        .input {
            width: 100%;
            padding: 12px;
            border: 1px solid #cbd5e1;
            border-radius: 8px;
            margin-bottom: 18px;
            font-size: 15px;
        }

        .input:focus {
            outline: none;
            border-color: #2563eb;
        }

        .remember {
            margin-bottom: 20px;
            color: #475569;
        }

        .login-btn {
            width: 100%;
            padding: 13px;
            background: #2563eb;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .login-btn:hover {
            background: #1d4ed8;
        }

        .message {
            display: block;
            text-align: center;
            margin-top: 18px;
            color: #dc2626;
        }

        .footer {
            text-align: center;
            margin-top: 25px;
            color: #94a3b8;
            font-size: 13px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="login-box">

        <div class="logo">🎓</div>

        <h2>Academic Portal</h2>

        <p class="subtitle">
            Login to your account
        </p>


        <asp:Label ID="lblUsername"
            runat="server"
            Text="Username"
            CssClass="label">
        </asp:Label>

        <asp:TextBox ID="txtUser"
            runat="server"
            CssClass="input"
            placeholder="Enter username">
        </asp:TextBox>


        <asp:Label ID="lblPassword"
            runat="server"
            Text="Password"
            CssClass="label">
        </asp:Label>

        <asp:TextBox ID="txtPass"
            runat="server"
            TextMode="Password"
            CssClass="input"
            placeholder="Enter password">
        </asp:TextBox>


        <div class="remember">

            <asp:CheckBox ID="chkRemember"
                runat="server"
                Text=" Remember Me" />

        </div>


        <asp:Button ID="btnLogin"
            runat="server"
            Text="Login"
            CssClass="login-btn"
            OnClick="btnLogin_Click" />


        <asp:Label ID="lblMsg"
            runat="server"
            CssClass="message">
        </asp:Label>


        <div class="footer">
            Academic Calendar & Leave Management System
        </div>

    </div>

</form>

</body>
</html>
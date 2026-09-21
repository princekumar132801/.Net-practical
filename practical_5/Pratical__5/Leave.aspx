  <%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Leave.aspx.cs"
    Inherits="Pratical__5.Leave" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Leave Management</title>

    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial;
        }

        body {
            background: #f4f7fb;
        }

        .navbar {
            background: #2563eb;
            color: white;
            padding: 18px 50px;
            font-size: 24px;
            font-weight: bold;
        }

        .container {
            width: 90%;
            max-width: 750px;
            margin: 40px auto;
        }

        .title {
            color: #1e293b;
            font-size: 30px;
            margin-bottom: 8px;
        }

        .subtitle {
            color: #64748b;
            margin-bottom: 30px;
        }

        .form-box {
            background: white;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .form-group {
            margin-bottom: 22px;
        }

        .label {
            display: block;
            color: #334155;
            font-weight: bold;
            margin-bottom: 8px;
        }

        .input,
        .dropdown {
            width: 100%;
            padding: 12px;
            border: 1px solid #cbd5e1;
            border-radius: 8px;
            font-size: 15px;
        }

        .input:focus,
        .dropdown:focus {
            outline: none;
            border-color: #2563eb;
        }

        .reason {
            height: 110px;
            resize: none;
        }

        .apply-btn {
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

        .apply-btn:hover {
            background: #1d4ed8;
        }

        .message {
            display: block;
            text-align: center;
            margin-top: 20px;
            padding: 12px;
            border-radius: 8px;
            color: #166534;
            background: #dcfce7;
        }

        .back {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 18px;
            background: #64748b;
            color: white;
            text-decoration: none;
            border-radius: 8px;
        }

        .back:hover {
            background: #475569;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="navbar">
        🎓 Academic Portal
    </div>

    <div class="container">

        <h1 class="title">📝 Leave Management</h1>

        <p class="subtitle">
            Submit your leave application
        </p>

        <div class="form-box">

            <!-- Name -->
            <div class="form-group">

                <asp:Label ID="lblName"
                    runat="server"
                    Text="Student Name"
                    CssClass="label">
                </asp:Label>

                <asp:TextBox ID="txtName"
                    runat="server"
                    CssClass="input"
                    placeholder="Enter your name">
                </asp:TextBox>

            </div>


            <!-- Leave Type -->
            <div class="form-group">

                <asp:Label ID="lblLeave"
                    runat="server"
                    Text="Leave Type"
                    CssClass="label">
                </asp:Label>

                <asp:DropDownList ID="ddlLeave"
                    runat="server"
                    CssClass="dropdown">

                    <asp:ListItem>
                        -- Select Leave Type --
                    </asp:ListItem>

                    <asp:ListItem>
                        Medical
                    </asp:ListItem>

                    <asp:ListItem>
                        Personal
                    </asp:ListItem>

                    <asp:ListItem>
                        Emergency
                    </asp:ListItem>

                </asp:DropDownList>

            </div>


            <!-- Reason -->
            <div class="form-group">

                <asp:Label ID="lblReason"
                    runat="server"
                    Text="Reason"
                    CssClass="label">
                </asp:Label>

                <asp:TextBox ID="txtReason"
                    runat="server"
                    TextMode="MultiLine"
                    CssClass="input reason"
                    placeholder="Enter reason for leave">
                </asp:TextBox>

            </div>


            <!-- Button -->
            <asp:Button ID="btnApply"
                runat="server"
                Text="Apply Leave"
                CssClass="apply-btn"
                OnClick="btnApply_Click" />


            <!-- Message -->
            <asp:Label ID="lblMsg"
                runat="server"
                CssClass="message">
            </asp:Label>


            <!-- Back -->
            <a href="Home.aspx" class="back">
                ← Back to Dashboard
            </a>

        </div>

    </div>

</form>

</body>
</html>
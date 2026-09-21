 <%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs"
    Inherits="Pratical__5.Home" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Academic Portal</title>

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
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
        }

        .welcome {
            font-size: 15px;
        }

        .container {
            padding: 40px 60px;
        }

        .title {
            font-size: 30px;
            color: #1e293b;
            margin-bottom: 10px;
        }

        .subtitle {
            color: #64748b;
            margin-bottom: 30px;
        }

        .cards {
            display: flex;
            gap: 25px;
            flex-wrap: wrap;
        }

        .card {
            background: white;
            width: 280px;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .icon {
            font-size: 40px;
            margin-bottom: 15px;
        }

        .card h3 {
            color: #1e293b;
            margin-bottom: 10px;
        }

        .card p {
            color: #64748b;
            margin-bottom: 20px;
        }

        .btn {
            display: inline-block;
            background: #2563eb;
            color: white;
            padding: 11px 20px;
            border-radius: 8px;
            text-decoration: none;
            border: none;
            cursor: pointer;
        }

        .btn:hover {
            background: #1d4ed8;
        }

        .logout {
            background: #ef4444;
        }

        .logout:hover {
            background: #dc2626;
        }

        .cookie {
            margin-top: 25px;
            padding: 15px;
            background: #dbeafe;
            color: #1e40af;
            border-radius: 8px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="navbar">

        <div class="logo">
            🎓 Academic Portal
        </div>

        <div class="welcome">
            <asp:Label ID="lblWelcome" runat="server"></asp:Label>
        </div>

    </div>


    <div class="container">

        <h1 class="title">Dashboard</h1>

        <p class="subtitle">
            Manage your academic calendar and leave applications
        </p>


        <div class="cards">

            <!-- Calendar -->
            <div class="card">

                <div class="icon">📅</div>

                <h3>Academic Calendar</h3>

                <p>
                    View and select important academic dates.
                </p>

                <a href="Calendar.aspx" class="btn">
                    Open Calendar
                </a>

            </div>


            <!-- Leave -->
            <div class="card">

                <div class="icon">📝</div>

                <h3>Leave Management</h3>

                <p>
                    Apply for medical, personal or emergency leave.
                </p>

                <a href="Leave.aspx" class="btn">
                    Apply Leave
                </a>

            </div>


            <!-- Cookie -->
            <div class="card">

                <div class="icon">🍪</div>

                <h3>Cookie</h3>

                <p>
                    Current logged-in user stored in Cookie.
                </p>

                <div class="cookie">

                    <asp:Label ID="lblCookie"
                        runat="server">
                    </asp:Label>

                </div>

            </div>

        </div>

        <br /><br />

        <asp:Button ID="btnLogout"
            runat="server"
            Text="Logout"
            CssClass="btn logout"
            OnClick="btnLogout_Click" />

    </div>

</form>

</body>
</html>
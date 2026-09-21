  <%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Calendar.aspx.cs"
    Inherits="Pratical__5.Calendar" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Academic Calendar</title>

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
            max-width: 900px;
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

        .calendar-box {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
            text-align: center;
        }

        .calendar-box h3 {
            color: #1e293b;
            margin-bottom: 20px;
        }

        .calendar {
            margin: auto;
        }

        .date-box {
            margin-top: 25px;
            padding: 15px;
            background: #dbeafe;
            color: #1e40af;
            border-radius: 10px;
            font-size: 17px;
            font-weight: bold;
        }

        .back {
            display: inline-block;
            margin-top: 25px;
            padding: 11px 20px;
            background: #2563eb;
            color: white;
            text-decoration: none;
            border-radius: 8px;
        }

        .back:hover {
            background: #1d4ed8;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="navbar">
        🎓 Academic Portal
    </div>

    <div class="container">

        <h1 class="title">📅 Academic Calendar</h1>

        <p class="subtitle">
            Select a date from the academic calendar
        </p>

        <div class="calendar-box">

            <h3>Select Date</h3>

            <asp:Calendar
                ID="Calendar1"
                runat="server"
                CssClass="calendar"
                OnSelectionChanged="Calendar1_SelectionChanged">
            </asp:Calendar>

            <div class="date-box">

                <asp:Label
                    ID="lblDate"
                    runat="server"
                    Text="Please select a date">
                </asp:Label>

            </div>

            <a href="Home.aspx" class="back">
                ← Back to Dashboard
            </a>

        </div>

    </div>

</form>

</body>
</html>v
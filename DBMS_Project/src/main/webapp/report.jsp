<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>

<!DOCTYPE html>
<html>
<head>
    <title>Monthly Adoption Report</title>
</head>
<body>
    <h1>Monthly Adoption Report</h1>

    <h2>Adoptions</h2>
    <table border="1">
        <tr>
            <th>Date</th>
            <th>Number of Adoptions</th>
        </tr>
        <%
            ResultSet adoptionResults = (ResultSet) request.getAttribute("adoptionResults");
            if (adoptionResults != null) {
                try {
                    while (adoptionResults.next()) {
        %>
                        <tr>
                            <td><%= adoptionResults.getString("adoption_date") %></td>
                            <td><%= adoptionResults.getInt("total_adopted") %></td>
                        </tr>
        <%
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        %>
    </table>
</body>
</html>

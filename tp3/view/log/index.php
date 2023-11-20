{{ include('header.php', {title: 'Log'}) }}
<body>
    <h1>Journal de bord</h1>
    <table>
        <tr>
            <th>User : </th>
            <th>adresse ip : </th>
            <th>Date Courrante : </th>
            <th>Pages Visitees : </th>
        </tr>
        <tr>
            <td>{{ log.user }}</td>
            <td>{{ log.adresseIP }}</td>
            <td>{{ log.dateCourante }}</td>
            <td>{{ log.pageVisitees }}</td>
        </tr>
    </table>
</body>
</html>
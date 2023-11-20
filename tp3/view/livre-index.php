{{ include('header.php', {title: 'Livre List'}) }}
<body>
    <div class="container">
        <h1>Livres</h1><br>
        <table>
            <tr>
                <th>Titre</th>
                <th>Auteur</th>
                <th>Annee</th>
                <th>Categorie</th>
                {% if not guest %}
                <th>Delete</th>
                {% endif %}
            </tr>
            {% for livre in livres %}
                <tr>
                    <td><a href="{{path}}livre/show/{{ livre.id}}">{{ livre.titre }}</a></td>
                    <td>{{ livre.auteur }}</td>
                    <td>{{ livre.annee }}</td>
                    <td>{{ livre.name }}</td>
                    {% if not guest %}
                    <td>
                        <form action="{{path}}livre/destroy" method="post" class="delete-form">
                            <input type="hidden" name="id" value="{{livre.id}}">
                            <input type="submit" value="Delete" class="btn-danger">
                        </form>
                    </td>
                    {% endif %}
                </tr>
            {% endfor %}
        </table>
        <br>
        <!-- <a href="{{path}}livre/create" class="btn">Ajouter</a> -->
    </div>
    
</body>
</html>
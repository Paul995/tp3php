{{ include('header.php', {title: 'Client Show'}) }}
<body>
    <div class="container">
        <h1>Details du livre</h1><br>

        <p><strong>Titre:</strong> {{ livre.titre }}</p>
        <p><strong>Auteur:</strong> {{ livre.auteur }}</p>
        <p><strong>Categorie:</strong> {{ livre.categorie_id }}</p><br>
        {% if not guest %}
        <a href="{{path}}livre/edit/{{ livre.id }}" class="btn">Modifier</a>
        {% endif %}
    </div>
</body>
</html>
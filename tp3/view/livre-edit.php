{{ include('header.php', {title: ' Edit'}) }}
<body>
    <div class="container">
        <form action="{{path}}livre/update" method="post">
            <input type="hidden" name="id" value="{{ livre.id}}">
            <label>Titre
                <input type="text" name="titre" value="{{ livre.titre }}">
            </label>
            <label>Auteur
                <input type="text" name="auteur" value="{{ livre.auteur }}">
            </label>
            <label>Auteur
                <input type="text" name="annee" value="{{ livre.annee }}">
            </label>
            <label>Categorie
                <select name="categorie_id">
                    <option value="">Selectionner une categorie</option>
                    {%  for categorie in categories %}
                        <option value="{{ categorie.id}}">{{ categorie.id }} {{ categorie.name }}</option>
                    {% endfor %}
                </select>
            </label>
            <input type="submit" value="save" class="btn">
        </form>
    </div>
</body>
</html>
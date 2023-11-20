{{ include('header.php', {title: 'Livre Create'}) }}
<body>
    <div class="container">
        <form action="{{path}}livre/store" method="post">
            <label>Titre
                <input type="text" name="titre">
            </label>
            <label>Auteur
                <input type="text" name="auteur">
            </label>
            <label>Année
                <input type="number" name="annee">
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
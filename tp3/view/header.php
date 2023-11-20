<!DOCTYPE html>
            <html lang="en">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>{{ title }}</title>
                <link rel="stylesheet" href="{{ path }}css/styles.css">
            </head>
            <nav>
            <ul>
                <li><a href="{{path}}">Home</a></li>
                <li><a href="{{path}}livre">Livres</a></li>
                {% if guest %}
                <li><a href="{{path}}login">Login</a></li>
                {% else %}
                    <li><a href="{{path}}livre/create">Livre Create</a></li>
                    {% if session.privilege == 1 %}
                    <li><a href="{{path}}user">User</a></li>
                    {% endif %}
                <li><a href="{{path}}login/logout">Logout</a></li>
                {% endif %}
                {{ session.username }}
            
            </ul>
        </nav>
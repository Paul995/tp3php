<?php

class RequirePage {

    static public function model($model){
        return require_once('model/'.$model.'.php');
    }

    static public function header($title){
        return '
        <!DOCTYPE html>
            <html lang="en">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>'.$title.'</title>
                <link rel="stylesheet" href="'.PATH_DIR.'css/styles.css">
            </head>
            <nav>
            <ul>
                <li><a href="'.PATH_DIR.'">home</a></li>
                <li><a href="'.PATH_DIR.'livre">livres</a></li>
                <li><a href="'.PATH_DIR.'livre/create">livre create</a></li>

            </ul>
        </nav>
        ';
    }

    static public function url($url){
        header('location:'.PATH_DIR.$url);
    }
}


?>
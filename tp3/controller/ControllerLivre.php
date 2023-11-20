<?php

RequirePage::model('CRUD');
RequirePage::model('Livre');
RequirePage::model('Categorie');

class Controllerlivre extends controller {
    public function index(){

        $livre = new Livre;
        $select = $livre->selectCategorie();
        //var_dump($select);
        return Twig::render('livre-index.php', ['livres'=>$select]);
        print_r($select);
        die();

    }

    
/////////////////////////////////////
    public function create(){

        $categorie = new Categorie;
        $select = $categorie->select();
        return Twig::render('livre-create.php', ['categories'=>$select]);
    }

    public function store(){
       // $ville = new Ville;
       // $insertVille = $ville->insert($_POST);
       // $_POST['ville_id'] = $insertVille;
        $livre = new Livre;
        $insert = $livre->insert($_POST);
        RequirePage::url('livre/show/'.$insert);
    }


    public function show($id){
        
        $livre = new Livre;
        $selectId = $livre->selectId($id);
        $categorie = new Categorie;
        $selectCategorie = $categorie->selectId($selectId['categorie_id']);
        return Twig::render('livre-show.php', ['livre'=>$selectId, 'categories'=>$selectCategorie['name']]);
    }

    public function edit($id){
        $livre = new Livre;
        $selectId = $livre->selectId($id);
        $categorie = new Categorie;
        $selectCategories = $categorie->select();
        return Twig::render('livre-edit.php', ['livre'=>$selectId, 'categories'=>$selectCategories]);
    }
    public function update(){
      //  print_r($_POST);

        $livre = new Livre;
        $update = $livre->update($_POST);

        //header('Location: ' . $_SERVER['HTTP_REFERER']);
        RequirePage::url('livre/show/'.$_POST['id']);
    }

    public function destroy(){
        //print_r($_POST);
        $livre = new Livre;
        $update = $livre->delete($_POST['id']);
        RequirePage::url('livre/index');
    }
 }

?>
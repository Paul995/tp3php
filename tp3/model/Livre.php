<?php

class Livre extends CRUD {

    protected $table = 'livre';
    protected $primaryKey = 'id';

    protected $fillable = ['id', 'titre', 'auteur', 'annee', 'categorie_id'];

    public function selectCategorie(){
        $sql = "SELECT livre.*, categorie.name from livre 
        INNER JOIN categorie ON categorie_id = categorie.id";
        $stmt = $this->query($sql);
        return $stmt->fetchAll();
    }
}
?>
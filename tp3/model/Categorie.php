<?php

class Categorie extends CRUD {

    protected $table = 'categorie';
    protected $primaryKey = 'id';

    protected $fillable = ['id', 'name'];

    public function selectCategorie(){
        $sql = "SELECT categorie.name from categorie";
        $stmt = $this->query($sql);
        return $stmt->fetchAll();
    }
}

?>
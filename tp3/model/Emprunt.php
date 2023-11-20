<?php

class Emprunt extends CRUD {

    protected $table = 'emprunt';
    protected $primaryKey = 'id';

    protected $fillable = ['id', 'date', 'client_id'];

}

?>
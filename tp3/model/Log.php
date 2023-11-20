<?php
require_once('CRUD.php');
class Log extends CRUD {

    protected $table = 'log';
    protected $primaryKey = 'id';

    protected $fillable = ['adresseIP', 'dateCourante', 'pageVisitees', 'user'];

    public function selectLog(){
        $sql = "SELECT * from $this->table ";
        $stmt = $this->query($sql);
        return $stmt->fetchAll();
    }

}
?>
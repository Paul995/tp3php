<?php

RequirePage::model('Log');

class ControllerLog extends controller {

    public function index(){

        $log = new Log;
        $select = $log->selectLog();
        //var_dump($select);
        return Twig::render('log/index.php', ['log'=>$select]);
  
    }

}

?>
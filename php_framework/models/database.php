<?php

  /**
   * database
   * Created by: Mushaheed Kapadia
   */
  class database {
		$conn=null;
		$type;
		$host;
		$port;
		$user;
		$pass;
		//mark

		function __construct($dbname){
			$this->type = $_CONFIG[$dbname . '_TYPE'];
			$this->host = $_CONFIG[$dbname . '_HOST']; 
			$this->port = $_CONFIG[$dbname . '_PORT']; 
			$this->user = $_CONFIG[$dbname . '_USER'];
			$this->pass = $_CONFIG[$dbname . '_PASS']; 

			if($this->type == 'MySQL'){ 
				$this->conn = mysqli_connect();
			} 
		}




  }
?>

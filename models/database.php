<?php

  /**
   * database
   * Created by: Mushaheed Kapadia
   */
abstract class database {
	
	/* private fields for databases */
	private $conn=null;
	private $dbname;
	private $type;
	private $host;
	private $port;
	private $user;
	private $pass;
	private $stmt=null; //stores the prepared statment, and the value from it.
	//mark
	
	/**
	 * Constructor 
	 */
	function __construct(string $dbname){
		$this->dbname = $dbname;
		$this->type = $_CONFIG[$dbname . '_TYPE'];
		$this->host = $_CONFIG[$dbname . '_HOST']; 
		$this->port = $_CONFIG[$dbname . '_PORT']; 
		$this->user = $_CONFIG[$dbname . '_USER'];
		$this->pass = $_CONFIG[$dbname . '_PASS']; 

		if($this->type == 'MySQL'){ 
			$this->conn = mysqli_connect($this->host, $this->user, $this->pass, $this->dbname, $this->port);
			return; 
		}
		if($this->type == 'PostgreSQL'){ 
			$this->conn = pg_connect("host=$this->host port=$this->port dbname=$this->dbname user=$this->user password=$this->password"); 
			return;	
		} 
	}
	
	/** 
	 * Prepares an SQL statment for execution
	 */
	public function prepare(string $sqlquery){ 
		if($this->type == 'MySQL'){ 
			$this->stmt = mysqli_prepare($this->conn, $sqlquery);
		} 
		if($this->type == 'PostgreSQL'){ 
			$this->stmt = pg_prepare($this->connn,"", $sqlquery);
		} 
	}
	
	public function execute(){ 
		if($this->type == 'MySQL'){ 
			if(($this->result = mysqli_execute($this->stmt) === false) $this->result = null;
			return;
		} 
		if($this->type == 'PostgreSQL'){ 
			if(($this->result = pg_execute($this->conn, "", null)) === false) $this->result = null;
			return;
	} 

	public function getNextRow(){
		if($this->result == null) return null;
		if($this->type == 'MySQL'){
			if(($row = mysqli_fetch_row($this->result)) === false){ 
				return null;
			}	
		}
		if($this->type == 'PostgreSQL'){ 
			if(($row = pg_fetch_row($this->result)) === false){
				return null; 
			}
		}
		return $row;
	}

	public function close(){ 
		if($this->type == 'MySQL'){
			mysqli_close($this->conn);
		}
		if($this->type == 'PostgreSQL'){ 
			pg_close($this->conn;
		}	
		$this->conn = null;
	}
?>

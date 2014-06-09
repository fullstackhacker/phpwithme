<?php
require('scrypt.php');

class User {
	/** 
	 * userId for the user
	 */
	$userid;
	/** 
	 * username for the user 
	 */
	$username; 
	/**
	 * firstname for the user
	 */ 
	$firstname; 
	/**
	 * lastname for the user
	 */
	$lastname; 
	/**
	 * password for the user encrypted with scrypt 
	 */
	$password; 
	
	/** Constructor for the function 
	 *
	 * @params $username - username for the user 
	 * @params $firstname - firstname of the user 
	 * @params $lastname - lastname of the user 
	 * @params $password - password for the user
	 */
	function __construct($username, $password. $firstname, $lastname){ 
		 	$this->username = $username; 
			$this->password = Password::hash($password); 
			$this->firstname = $firstname; 
			$this->lastname = $lastname; 
	}

	/**
	 * checks to see if the password is correct 
	 *
	 * @params $password - password that the user submitted 
	 * @return true - iff the password matches the hash
	 */
	public function passwordCheck($password){ 
		if(Password::check($password, $this->password)){ 
			return true; 
		}
		else{ 
			return false; 
		}
	}	

	/**
	 * Gets the username 
	 *
	 * @return the user's username
	 */
	public function getUsername(){ 
		return $this->username; 
	}	

	/** 
	 * Gets the user firstname
	 *
	 * @return the user's firstname
	 */	
	public function getFirstname(){ 
		return $this->firstname; 
	}
	
	/**
	 * Get the user lastname
	 *
	 * @return the user's lastname
	 */
	public function getLastname(){
		return $this->lastname; 
	}
	
	/**
	 * Set the user username
	 *
	 * @param $username - the new username to set the user's username
	 */
	public function setUsername($username){ 
		$this->username = $username;	
	}

	/**
	 * Set the user's firstname
	 * 
	 * @param $firstname - the new firstname of the user 
	 */
	public  function setFirstname($firstname){ 
		$this->firstname = $firstname;
	}	

	/**
	 * Set the user's lastname
	 *
	 * @param $lastname - the new lastname of the user
	 */
	public function setLastname($lastname){
		$this->lastname = $lastname;
	}
	
	/**
	 * Saves the user to the table 
	 *
	 * @param $conn - connection to the mysql table
	 * @param $usertable - name of the user table
	 */
	public function saveUser($conn, $usertable){ 
		//query	string
		$query = "UPDATE $usertable SET username=?, firstname=?, lastname=?, password=? WHERE userid=?;"; 
		
		//prepare they query	
		$pquery = mysqli_prepare($conn, $query); 
		
		//bind the parameters	
		mysqli_bind($pquery, 'ssssi', $this->username, $this->firstname, $this->lastname, $this->password);
	
		//execute the query
		mysqli_stmt_execute($pquery);

		//close the statment
		mysqli_stmt_close($pquery);
	} 
}
?>

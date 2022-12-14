<?php 
    /* include('db.php'); */
    /* $userData = getUserFromDatabase($pdo,$discord_id) */


    define('DB_SERVER', 'localhost');
    define('DB_USER', 'root');
    define('DB_PASS', '');
    define('DB_NAME', 'new_application_2');
    
    class DB_con {

        function __construct() {
            $conn = mysqli_connect(DB_SERVER, DB_USER, DB_PASS, DB_NAME);
            $this->dbcon = $conn;

            if (mysqli_connect_errno()) {
                echo "Failed to connect to MySQL : " . mysqli_connect_error();
            }
        }

        public function insert($discord_id, $discord_username, $discord_avatar) {
            $result = mysqli_query($this->dbcon, "INSERT INTO users(discord_id,discord_username,discord_avatar) VALUES('$discord_id', '$discord_username', '$discord_avatar')");
            return $result;
        }

        public function fetchdata() {
            $result = mysqli_query($this->dbcon, "SELECT * FROM users");
            return $result;
        }

        public function fetchonerecord($userid) {
            $result = mysqli_query($this->dbcon, "SELECT * FROM users WHERE id = '$userid'");
            return $result;
        }

        

        public function update($discord_id, $discord_username, $discord_avatar, $userid) {
            $result = mysqli_query($this->dbcon, "UPDATE users SET 
                discord_id = '$discord_id',
                discord_username = '$discord_username',
                discord_avatar = '$discord_avatar',
                WHERE id = '$userid'
            ");
            return $result;
        }

        public function delete($userid) {
            $deleterecord = mysqli_query($this->dbcon, "DELETE FROM users WHERE id = '$userid'");
            return $deleterecord;
        }

    }
    

?>
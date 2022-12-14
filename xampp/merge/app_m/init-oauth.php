<?php

$discord_url = "https://discord.com/api/oauth2/authorize?client_id=1050718311203229716&redirect_uri=http%3A%2F%2Flocalhost%2Fxampp%2Fmerge%2Fapp_m%2Fprocess-oauth.php&response_type=code&scope=identify%20guilds";
header("Location: $discord_url");
exit();

?>
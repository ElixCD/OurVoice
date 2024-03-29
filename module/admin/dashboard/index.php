<?php
require '../../../vendor/autoload.php';
include_once "../../common/getPath.php";

use OurVoice\SessionStatus;

if(!OurVoice\SessionStatus::sessionStarted("user")){
    header("Location: ../../../");
    exit();
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - <?php echo $moduleName; ?></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <?php
    include_once "../../common/register-css.php";
    ?>
</head>

<body>
    <?php
    include_once "../admin-nav.php";
    include_once "../../common/header.php";
    ?>

    <main class="container">
        <pre>
            <?php
            print_r(SessionStatus::GetSessionData('user'));
            ?>
        </pre>
    </main>


    <?php
    include_once "../../common/register-js.php";
    ?>
</body>

</html>
<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
?>
<nav id="nav-menu" class="bg-dark ">
    <div id="menu" class="overflow-auto">
        <div class="bg-dark d-sm-none " style="color:#fff" >
            <p class="logo text-center"><?php echo $_SESSION['user']['name']; ?></p>
            <hr>
        </div>
        <ul class="menu mt-2">
            <li><a href="../poll/"><i class="material-icons">poll</i> Contestar</a></li>
            <li><a href="../dashboard/"><i class="material-icons">dashboard</i> Dashboard</a></li>
            <li><a href="../surveys/"><i class="material-icons">poll</i> Encuesta</a></li>
            <li><a href="../factors/"><i class="material-icons">fact_check</i> Factores</a></li>
            <li><a href="../users/"><i class="material-icons">supervised_user_circle</i> Usuarios</a></li>
            <li><a href="../account/detail.php"><i class="material-icons">account_circle</i> Cuenta</a></li>
            <!-- <li><a href="../settings/"><i class="material-icons">settings</i> Configuración</a></li> -->
            <!-- <li><a href="" onclick="logout();" ><i class="material-icons">logout</i> Salir</a></li> -->
            <li><span onclick="logout();" class="menu a"><i class="material-icons">logout</i> Salir</span></li>
        </ul>
    </div>

</nav>
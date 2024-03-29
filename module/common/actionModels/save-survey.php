<?php
require '../../../vendor/autoload.php';

$action = $_POST['action'];
$newSurvey = [
    "idsurvey" => isset($_POST['idSurvey']) ? (int) $_POST['idSurvey'] : "",
    "name" => isset($_POST['name']) ? $_POST['name'] : "",
    "active" => isset($_POST['active']) ? (bool) $_POST['active'] : false,
    "users_iduser" => 1
];

$arr = [];
$survey = new Domain\SurveyDomain();
$result = false;

switch ($action) {
    case 'new': {
            $result = $survey->saveSurvey($newSurvey);
            break;
        }
    case 'update': {
            $result = $survey->updateSurvey($newSurvey);
            break;
        }
    case 'delete': {
            $result = $survey->deleteSurvey($newSurvey);
            break;
        }
    default:
        $result = false;
        break;
}

if ($survey->IsSuccess()) {
    $arr = ["msj" => "Operacion realizada con exito", "error" => false, "opt" => $result];
} else {
    $arr = ["msj" => $survey->GetMessage(), "error" => true];
}

$json = json_encode($arr);

print_r($json);

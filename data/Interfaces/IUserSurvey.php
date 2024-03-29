<?php

namespace OurVoice\Data;

interface IUserSurvey
{
    function IsSuccess(): bool;

    function GetMessage();

    function GetUserSurveys(int $idUserSurvey);

    function SaveUserSurvey($userSurveys);

    function UpdateUserSurvey($userSurveys);

    function DeleteUserSurvey($userSurveys);
}

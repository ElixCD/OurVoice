<?php

namespace OurVoice\Data;

interface IFactor
{
    function IsSuccess(): bool;

    function GetMessage();

    function GetFactor(int $idFactor);

    function GetFactors(int $idUser, int $numberPage = 1);

    function SaveFactor($factor);

    function UpdateFactor($factor);

    function DeleteFactor($factor);

    function Validar($factor);
}

<?php

namespace Models;

use Sysurvey;
use Exception;


class Question
{
    public $questions = [];

    private $connection;

    function __construct(Sysurvey\IDb $connection)
    {
        $this->connection = $connection;
    }

    function getQuestion(int $idQuestion)
    {
        $this->questionss = $this->connection->querySelect("SELECT * FROM questions WHERE idquestions = '" . $idQuestion . "'");

        foreach ($this->questionss as $key => $value) {
            if ($value['idquestions'] == $idQuestion) {
                return $value;
            }
        }
        return false;
    }

    function getQuestions(int $numberPage)
    {
        $this->questionss = $this->connection->querySelect("SELECT * FROM questions");
        return $this->questionss;
    }

    function saveQuestion($questions)
    {
        try {
            $param = $questions['description'];
            return $this->connection->queryTransaction("INSERT INTO questions VALUES (NULL, '" . $questions['value'] . "', '" . $questions['idsurvey'] . "', '" . $questions['idfactor'] . "' )");
        } catch (\Throwable $th) {
            return $th;
        }
    }

    function updateQuestion($questions = [])
    {
        try {
            $query = "UPDATE questions SET value = '" . $questions['value'] . "', idsurvey = '" . $questions['idsurvey'] . "' idfactor = '" . $questions['idfactor'] . "' WHERE idquestions = " . (int) $questions['idquestions'];
            return $this->connection->queryTransaction($query);
        } catch (\Throwable $th) {
            return $th;
        }
    }

    function deleteQuestion($questions)
    {
        try {
            $param = $questions['idquestions'];
            return $this->connection->queryTransaction("DELETE FROM questions WHERE idquestions = '" . $param . "' )");
        } catch (\Throwable $th) {
            return $th;
        }
    }

    private function validar($questions)
    {
        if (!array_key_exists('idquestions', $questions) || !array_key_exists('description', $questions)) {
            throw new Exception();
        }
    }
}

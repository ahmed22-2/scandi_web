<?php

class AddProductRequest implements Validation
{
    private static $errors = []; 

    public static function TypeR($attr,$args){
        if(empty($_POST[$attr]) || $_POST[$attr] != 'Type'){
            self::$errors[] = $attr.' is required';
        }
    }

    public static function required($attr,$args){
        if(empty($_POST[$attr]) || $_POST[$attr] == 'undifiend'){
            self::$errors[] = $attr.' is required';
        }
    }
    public static function digits($attr,$args){
        if(!empty($_POST[$attr]) && filter_var($_POST[$attr], FILTER_VALIDATE_FLOAT) === false){
            self::$errors[] = $attr.' must be a valid number ';
        }
        elseif (!empty($_POST[$attr]) && $_POST[$attr] < 0) {
            self::$errors[] = $attr.' must be a valid number ';
        }
    }
    public static function unique($attr, $args){
        $result = DB::query("SELECT * FROM $args[0] WHERE $attr=:data", [':data' => $_POST[$attr]]);
        if(!empty($_POST[$attr]) && !empty($result)){
            self::$errors[] = $attr.' that you entered is already exist';
        }
    }

    // Custom validation rules

    public static function validate($rules)
    {
        foreach($rules as $attrName => $fArr)
        {
            foreach($fArr as $fName => $fValue)
            {
                self::$fName($attrName,$fValue);
            }
        }
    }

    public static function getErrors(): array
    {
        return self::$errors;
    }

}


?>
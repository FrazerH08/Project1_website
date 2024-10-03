<?php

function sayHello(): void{
    $welcome = array("Hello","World!","This","Is","A","Test","Programme");
    //echo "Hello World";

    foreach ($welcome as $word){
        echo "$word ";
    }
}

sayHello();
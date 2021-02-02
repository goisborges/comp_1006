<?php

    var_dump($_POST);

    $results = mysqli_query($mysqli, "
        INSERT INTO countries (
            name,
            description,
            population
        ) VALUES (
            '{$_POST['name']}',
            '{$_POST['description']}',
            {$_POST['population']}
        )
    ");

    if ($results) {
        echo "The new country was created successfully";
    }
    else {
        $error = mysqli_error($mysqli);
        echo "There was an error creating the country";
        echo "<br>{$error}";
    }

?>
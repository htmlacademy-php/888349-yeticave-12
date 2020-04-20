<?php
require('helpers.php');

$con = mysqli_connect("localhost", "root", "", "yeticave");
$sqlLot = "SELECT l.expiration_date, l.img_link, c.name categoryName, l.price, l.name FROM lot l JOIN category c ON l.categoryId = c.id";
$resultLot = mysqli_query($con, $sqlLot);
$lotRows = mysqli_fetch_all($resultLot, MYSQLI_ASSOC);
$sqlCategory = "SELECT name, symbol_code FROM category";
$resultCategory = mysqli_query($con, $sqlCategory);
$categoryRows = mysqli_fetch_all($resultCategory,MYSQLI_ASSOC);

$dataTemplate = [
    'categories' => $categoryRows,
    'rows' => $lotRows,
    'makePrice' =>  function ($number) {
        $price = ceil($number);
        if ($price >= 1000) {
            $price = number_format($price, 0, '.', ' ');
        }

        return $price . ' ₽';
    },
    'timeLeft'  => function ($expirationDate) {
        $time = time();
        $expirationDate = strtotime($expirationDate);
        $diffTime = ($expirationDate - $time);
        if ($diffTime > 0) {
            $hoursLeft = $diffTime / 3600;
            $minutesLeft = ($diffTime % 3600) / 60;

            return [floor($hoursLeft), ceil($minutesLeft)];
        } else {
            return [0, 0];
        }
    },
];


$template = include_template('main.php', $dataTemplate);

$dataRender = [
    'is_auth' => rand(0,1),
    'pageName' => 'Главная',
    'user_name' => 'Роман',
    'template' => $template,
    'categories' => $dataTemplate['categories'],
];

$render = include_template('layout.php', $dataRender);
print($render);
?>


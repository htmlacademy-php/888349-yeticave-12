<?php
require('helpers.php');

$dataTemplate = [
    'categories' =>  ['Доски и лыжи', 'Крепления', 'Ботинки', 'Одежда', 'Инструменты', 'Разное'],
    'adverts' => [
        [
            'name' => '2014 Rossignol District Snowboard',
            'category' => 'Доски и лыжи',
            'price'   => '10999',
            'image_url'   => 'img/lot-1.jpg',
            'expiration_date'   => '2020-04-12',
        ],
        [
            'name' => 'DC Ply Mens 2016/2017 Snowboard',
            'category' => 'Доски и лыжи',
            'price'   => '159999',
            'image_url'   => 'img/lot-2.jpg',
            'expiration_date'   => '2020-04-13',
        ],
        [
            'name' => 'Крепления Union Contact Pro 2015 года размер L/XL',
            'category' => 'Крепления',
            'price'   => '8000',
            'image_url'   => 'img/lot-3.jpg',
            'expiration_date'   => '2020-04-14',
        ],
        [
            'name' => 'Ботинки для сноуборда DC Mutiny Charocal',
            'category' => 'Ботинки',
            'price'   => '10999',
            'image_url'   => 'img/lot-4.jpg',
            'expiration_date'   => '2020-04-15',
        ],
        [
            'name' => 'Куртка для сноуборда DC Mutiny Charocal',
            'category' => 'Одежда',
            'price'   => '7500',
            'image_url'   => 'img/lot-5.jpg',
            'expiration_date'   => '2020-04-16',
        ],
        [
            'name' => 'Маска Oakley Canopy',
            'category' => 'Разное',
            'price'   => '5400',
            'image_url'   => 'img/lot-6.jpg',
            'expiration_date'   => '2020-04-17',
        ]
    ],
    'makePrice' =>  function ($number) {
        $price = ceil($number);
        if ($price >= 1000) {
            $price = number_format($price, 0, '.', ' ');
        }

        return $price . ' ₽';
    },
    'timeLeft'  => function ($expirationDate) {
        $currentTime = strtotime(date("Y-m-d h:i:sa"));
        $expirationDate = strtotime($expirationDate);
        $number = strval(($expirationDate - $currentTime) / 60);
        $hoursLeft = $number / 60;
        $minutesLeft = explode('.', $hoursLeft);
        $minutesArray = isset($minutesLeft[1]) ? str_split($minutesLeft[1]): 0;
        if (isset($minutesArray[0]) && isset($minutesArray[1])) {
            $minutesLeft = ($minutesArray[0] . $minutesArray[1]) / 100 * 60;
        } else if (isset($minutesArray[0])){
            $minutesLeft = $minutesArray[0] / 10 * 60;
        } else {
            $minutesLeft = 0;
        }
        return [floor($hoursLeft), floor($minutesLeft)];
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


<script src="flatpickr.js"></script>
<script src="script.js"></script>

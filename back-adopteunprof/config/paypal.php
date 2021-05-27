<?php
return [
    'studentID' => env('PAYPAL_CLIENT_ID', ''),
    'secret' => env('PAYPAL_SECRET', ''),
    'settings' => array(
        'mode'=> env('PAYPAL_MODE', ''),
        'http.ConnectionTimeOut' => 30,
        'log.Logenabled' => true,
        'log.FileName' => storage_path() . '/logs/paypal.log',
        'log.LogLevel' => 'ERROR'
    ),
];
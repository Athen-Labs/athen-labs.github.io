<?php
// Get the request URI path
$requestPath = $_SERVER['REQUEST_URI'];

// Extract the last part of the path
$parts = explode('/', trim($requestPath, '/'));
$lastPart = end($parts);

// If this is a direct access to an app, redirect accordingly
$appMapping = [
    'LinkedIn' => 'linkedin',
    'Indeed' => 'indeed',
    'Hirevue' => 'hirevue',
    'QuickNote' => 'quicknote',
    'PhotoMagic' => 'photomagic',
    'TryOn' => 'tryon',
    'AceSAT' => 'acesat',
    'AceACT' => 'aceact'
];

// Check if we should redirect
if (isset($appMapping[$lastPart])) {
    header("Location: index.html?app=" . $appMapping[$lastPart]);
    exit;
} 

// If no redirect needed, just include the original index.html
// This allows index.php to work as a drop-in replacement for index.html
include('index.html');
?> 
<?php
function getBase(string $text): array
{
    // Converte para base64
    $base64 = base64_encode($text);

    // Reverte o base64 para string original
    $original = base64_decode($base64);

    $variavel = [
        'base64' => $base64,
        'original' => $original
    ];
    // echo "<pre>";
    // print_r($variavel);
    // echo "</pre>";
    return $variavel;
}

function getMd5(): string
{
    for ($i=0; $i < 10; $i++) { 
        $text1 = $i.getTimestamp().getData();
        $text2 = hash('md5', $text1);
        $variavel = strtoupper(md5($text2));
        echo "<pre>";
        print_r($variavel);
        echo "</pre>";
    }
    return $variavel;
}
function getTimestamp(): int 
{
    $variavel = time();
    // echo "<pre>";
    // print_r($variavel);
    // echo "</pre>";
    return $variavel;
}
function getData(): string 
{
    $variavel = date('Y-m-d H:i:s');
    // echo "<pre>";
    // print_r($variavel);
    // echo "</pre>";
    return $variavel;
}
getMd5();
?>
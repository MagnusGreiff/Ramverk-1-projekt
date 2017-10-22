<?php

$app->router->add("test/test", function () use ($app) {

    $app->view->add("test/test");

    $app->renderPage([
        "title" => "test"
    ]);
});

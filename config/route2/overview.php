<?php
/**
 * Routes for user controller.
 */
return [
    "routes" => [
        [
            "info" => "Overview",
            "requestMethod" => "get",
            "path" => "",
            "callable" => ["overviewController", "overview"]
        ]
    ]
];

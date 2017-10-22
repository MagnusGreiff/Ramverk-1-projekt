<?php
/**
 * Configuration file for routes.
 */
return [
    // Load these routefiles in order specified and optionally mount them
    // onto a base route.
    "routeFiles" => [
        [
            "mount" => null,
            "file" => __DIR__ . "/route2/always.php",
        ],
        [
            // These are for internal error handling and exceptions
            "mount" => null,
            "file" => __DIR__ . "/route2/internal.php",
        ],
        [
            // To read flat file content in Markdown from content/
            "mount" => null,
            "file" => __DIR__ . "/route2/flat-file-content.php",
        ],
        [
            "mount" => null,
            "file" => __DIR__ . "/route2/overview.php",
        ],
        [
            "mount" => null,
            "file" => __DIR__ . "/route2/tag.php",
        ],
        [
            "mount" => "comment",
            "file" => __DIR__ . "/route2/comment.php"
        ],
        [
            "mount" => null,
            "file" => __DIR__ . "/route2/remserver.php"
        ],
        [
            // For debugging and development details on Anax
            "mount" => "debug",
            "file" => __DIR__ . "/route2/debug.php",
        ],
        [
            // For creating users....
            "mount" => null,
            "file" => __DIR__ . "/route2/userController.php",
        ],
        [
            // For creating users....
            "mount" => null,
            "file" => __DIR__ . "/route2/admin.php",
        ],
        [
            // Add routes from bookController and mount on book/
            "mount" => "book",
            "file" => __DIR__ . "/route2/bookController.php",
        ],
        [
            // Keep this last since its a catch all
            "mount" => null,
            "file" => __DIR__ . "/route2/404.php",
        ],
    ],
];

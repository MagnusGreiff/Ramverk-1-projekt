<?php

return [
    "config" => [
        "navbar-class" => "navbar",
    ],
    "items" => [
        "user" => [
            "start" => [
                "text" => "Overview",
                "route" => ""
            ],
            "about" => [
                "text" => "About",
                "route" => "about"
            ],
            "users" => [
                "text" => "All Users",
                "route" => "user/showAll",
            ],
            "comment" => [
                "text"  => "Posts",
                "route" => "comment/viewAllPosts"
            ],
            "tags" => [
                "text" => "Tags",
                "route" => "tag/tags"
            ],
            "user" => [
                "text" => "Profile",
                "route" => "user/profile"
            ],
        ],
    ],
];

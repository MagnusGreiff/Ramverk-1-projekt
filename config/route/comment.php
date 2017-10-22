<?php

/** Connect to database */
$app->router->add("comment/**", [$app->commentController, "commentConnect"]);

/** Route to form */
$app->router->get("comment/newPost", [$app->commentController, "newPost"]);

/** Retrieve posts */
$app->router->get("comment/retrieve", [$app->commentController, "postRetrieve"]);

/** Retrieve one post with comments */
$app->router->get("comment/retrieve/{id:digit}", [$app->commentController, "postRetrieveOneAndComments"]);

/** Create new post */
$app->router->post("comment/submit/", [$app->commentController, "postCreate"]);

/** Route to commentform */
$app->router->add("comment/newComment/{id:digit}", [$app->commentController, "newComment"]);

/** Create new comment */
$app->router->post("comment/submitComment/{id:digit}", [$app->commentController, "commentCreate"]);

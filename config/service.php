<?php
/**
 * Add and configure services and return the $app object.
 */
/**/
// Add all resources to $app

//$app = new \Anax\App\App();
//$app->request = new \Anax\Request\Request();
//$app->response = new \Anax\Response\Response();
//$app->url = new \Anax\Url\Url();
//$app->router = new \Anax\Route\RouterInjectable();
//$app->view = new \Anax\View\ViewContainer();
///$app->textfilter = new \Anax\TextFilter\TextFilter();
//$app->session = new \Anax\Session\SessionConfigurable();
//$app->navbar = new \Radchasay\Navbar\Navbar();
//$app->rem        = new \Anax\RemServer\RemServer();
//$app->remController = new \Anax\RemServer\RemServerController();
/*$app->database = new \Anax\Database\Database();*/
//$app->database = new \Anax\Database\DatabaseConfigure();
//$app->commentController = new \Radchasay\Comment\CommentController();
//$app->commentModel = new \Radchasay\Comment\CommentModel();


// Configure request
//$app->request->init();

// Configure navbar
//$app->navbar->configure("navbar.php");
//$app->navbar->setApp($app);


// Configure router
//$app->router->setApp($app);

// Configure session
//$app->session->configure("session.php");

// Configure url
//$app->url->setSiteUrl($app->request->getSiteUrl());
//$app->url->setBaseUrl($app->request->getBaseUrl());
//$app->url->setStaticSiteUrl($app->request->getSiteUrl());
//$app->url->setStaticBaseUrl($app->request->getBaseUrl());
//$app->url->setScriptName($app->request->getScriptName());
//$app->url->configure("url.php");
//$app->url->setDefaultsFromConfiguration();

// Configure view
//$app->view->setApp($app);
//$app->view->configure("view.php");

// Init REM Server
//$app->rem->configure("remserver.php");
//$app->rem->inject(["session" => $app->session]);

// Init controller for the REM Server
//$app->remController->setApp($app);

//$app->database->setApp($app);
//$app->database->configure("database.php");
//$app->database->connect();

// Commentcontroller
//$app->commentController->setApp($app);
//$app->commentModel->setApp($app);

// Return the populated $app
//return $app;

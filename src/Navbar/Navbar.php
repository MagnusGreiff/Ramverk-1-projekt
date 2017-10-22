<?php

namespace Radchasay\Navbar;

use \Anax\DI\InjectionAwareInterface;
use \Anax\DI\InjectionAwareTrait;

class Navbar implements InjectionAwareInterface
{
    use \Anax\Common\ConfigureTrait;
    use InjectionAwareTrait;

    public function getHTML()
    {
        $nav = "<navbar class='" . $this->config["config"]["navbar-class"] . "'>";
        $nav .= "<ul>";
        //$this->app->session->start();
        //$res = $this->app->db->executeFetch("SELECT * FROM setup_user WHERE email = ?", [$this->app->session->get("name")]);
        //$admin = $res[5];
        foreach ($this->config["items"]["user"] as $item) {
            $createUrl = $this->di->url->create($item["route"]);
            $selected = $this->di->request->getRoute() == $item["route"] ? "selected" : "";
            $nav .= "<li class='$selected' ><a href='$createUrl'>$item[text]</a></li>";
        }
        /*if ($admin === "yes") {
            foreach ($this->config["items"]["admin"] as $item) {
                $createUrl = $this->di->url->create($item["route"]);
                $selected = $this->di->request->getRoute() == $item["route"] ? "selected" : "";
                $nav .= "<li class='$selected' ><a href='$createUrl'>$item[text]</a></li>";
            }
        }*/
        $nav .= "</ul>";
        $nav .= "</navbar>";

        return $nav;
    }
}

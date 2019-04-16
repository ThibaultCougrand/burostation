<?php
// src/Controller/LuckyController.php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;

class Index
{
    public function __invoke()
    {
        return new Response(
            '<html><body> nico est un GROS connard</body></html>'
        );
    }
}

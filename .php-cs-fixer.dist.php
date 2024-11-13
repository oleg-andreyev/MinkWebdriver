<?php

declare(strict_types=1);

$finder = (new PhpCsFixer\Finder())
    ->in(__DIR__ . '/src')
    ->in(__DIR__ . '/tests')
;

return (new PhpCsFixer\Config())
    ->setRiskyAllowed(true)
    ->setRules([
        '@PHP80Migration' => true,
        '@PHPUnit91Migration:risky' => true,
        '@Symfony' => true,
    ])
    ->setFinder($finder);

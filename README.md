MinkPhpWebDriver
=================================

[![Latest Stable Version](https://poser.pugx.org/oleg-andreyev/mink-phpwebdriver/v)](https://packagist.org/packages/oleg-andreyev/mink-phpwebdriver)
[![Latest Unstable Version](https://poser.pugx.org/oleg-andreyev/mink-phpwebdriver/v/unstable)](https://packagist.org/packages/oleg-andreyev/mink-phpwebdriver)
[![Total Downloads](https://poser.pugx.org/oleg-andreyev/mink-phpwebdriver/downloads)](https://packagist.org/packages/oleg-andreyev/mink-phpwebdriver)
[![CI](https://github.com/oleg-andreyev/MinkPhpWebDriver/actions/workflows/ci.yml/badge.svg)](https://github.com/oleg-andreyev/MinkPhpWebDriver/actions/workflows/ci.yml)
[![License](https://poser.pugx.org/oleg-andreyev/mink-phpwebdriver/license)](https://github.com/oleg-andreyev/MinkPhpWebDriver/blob/main/LICENSE)
[![codecov](https://codecov.io/gh/oleg-andreyev/mink-phpwebdriver/branch/main/graph/badge.svg?token=11hgqXqod9)](https://codecov.io/gh/oleg-andreyev/mink-phpwebdriver)


Initially it's started as [PR](https://github.com/minkphp/MinkSelenium2Driver/pull/304) to MinkSelenium2Driver

Major updates include:
 - Switch to using `facebook/webdriver`
 - Update minimum php version to 8.0
 - Tested against the latest Google Chrome and Mozilla Firefox both in GUI and Headless modes

## Setup

Install `oleg-andreyev/mink-phpwebdriver`
```bash
composer require oleg-andreyev/mink-phpwebdriver
```

## Behat Extension 
https://github.com/oleg-andreyev/MinkPhpWebdriverExtension

## Testing

```bash
./bin/start_webdriver.sh &
# ./bin/start_driver.sh <browser> <version>
./bin/start_driver.sh chrome latest &
BROWSER_NAME=chrome ./bin/phpunit
```

This will download the latest driver for specified browser and will execute phpunit

## Running GitHub Action locally
Follow https://github.com/shivammathur/setup-php#local-testing-setup

## Copyright

Copyright (c) 2023 Oleg Andreyev <oleg@andreyev.lv>


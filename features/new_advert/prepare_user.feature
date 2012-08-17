# language:ru
# encoding: utf-8
Функционал: Подготовка пользователя к подаче объявлений

  Сценарий: Удаление всех объявлений
    Когда открыта страница для региона "Россия"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП я удаляю все объявления

  Сценарий: Добавление пакета для недвижимости
    Когда я перехожу на БО
        * на БО я перехожу в категорию "Интернет-партнеры -> Пользователи ИП"
        * на БО я удаляю все пакеты "NEW [TEST] Недвижимость" у пользователя роли "Доверенный интернет-партнер"
        * на БО я добавляю интернет-партнеру пакет "NEW [TEST] Недвижимость" для региона "Вся Россия"

  Сценарий: Добавление пакета для авто
    Когда я перехожу на БО
        * на БО я перехожу в категорию "Интернет-партнеры -> Пользователи ИП"
        * на БО я удаляю все пакеты "NEW Авто | ВСЕ РЕГИОНЫ" у пользователя роли "Доверенный интернет-партнер"
        * на БО я добавляю интернет-партнеру пакет "NEW Авто | ВСЕ РЕГИОНЫ" для региона "Вся Россия"

  Сценарий: Добавление премиумов
    Когда я перехожу на БО
        * на БО я перехожу в категорию "Интернет-партнеры -> Пользователи ИП"
        * на БО я ищу пользователя с ролью "Доверенный интернет-партнер"
        * на БО я делаю интернет-партнеру 10 премиумов на 14 дней
        * на БО я делаю интернет-партнеру 0 премиумов на 7 дней

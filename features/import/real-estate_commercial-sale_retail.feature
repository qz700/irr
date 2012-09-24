# language:ru
# encoding: utf-8
Функционал: Импорт в категорию Недвижимость -> Коммерческая. Продажа -> Торговля

  Сценарий: Импорт объявления ОП
    Когда я обновляю и импортирую файл "real-estate_commercial-sale_retail/scenario1.xml" для роли "Пользователь для импорта"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Пользователь для импорта"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Продается магазин, общая площадь: 200 кв. м." присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "300000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" "Общая площадь" равно "200 кв.м"

  Сценарий: Импорт объявления ИП
    Когда я обновляю и импортирую файл "real-estate_commercial-sale_retail/scenario2.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Продается магазин, общая площадь: 200 кв. м." присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "300000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" "Общая площадь" равно "200 кв.м"

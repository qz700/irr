# language:ru
# encoding: utf-8
Функционал: Импорт в категорию Недвижимость -> Квартиры. Аренда

  Сценарий: Импорт объявления ОП
    Когда я обновляю и импортирую файл "real-estate_rent/scenario1.xml" для роли "Пользователь для импорта"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Пользователь для импорта"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Сдается 2х-комнатная квартира, этаж 3" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "30000" в рублях

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле              | значение |
        | Комнат в квартире | 3        |
        | Этаж              | 3        |

  Сценарий: Импорт объявления ИП
    Когда я обновляю и импортирую файл "real-estate_rent/scenario1.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Сдается 2х-комнатная квартира, этаж 3" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "30000" в рублях

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле              | значение |
        | Комнат в квартире | 3        |
        | Этаж              | 3        |

  Сценарий: Импорт объявления с фото
    Когда я обновляю и импортирую файл "real-estate_rent/scenario2.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Сдается 2х-комнатная квартира, этаж 3 (фото)" присутствует в списке
        * у объявления отображается загруженная фотография

  Сценарий: Импорт объявления в Бийске
    Когда я обновляю и импортирую файл "real-estate_rent/scenario4.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Бийск"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Сдается 2х-комнатная квартира в Бийске, этаж 3" присутствует в списке
        * у объявления указан город "Бийск"
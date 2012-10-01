# language:ru
# encoding: utf-8
Функционал: Импорт в категорию Недвижимость > Дома, дачи, участки. Продажа > Дома, дачи

  Сценарий: Импорт объявления ОП
    Когда я обновляю и импортирую файл "real-estate_out-of-town_houses/scenario1.xml" для роли "Пользователь для импорта"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Пользователь для импорта"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Продается дом, общая площадь: 200 кв. м." присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "3000000" в евро

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле             | значение |
        | Площадь строения | 200 кв.м |

  Сценарий: Импорт объявления ИП
    Когда я обновляю и импортирую файл "real-estate_out-of-town-rent/scenario1.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Сдам дом, общая площадь: 200 кв. м." присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "30000" в евро

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле             | значение |
        | Площадь строения | 200 кв.м |

  Сценарий: Импорт объявления с фото
    Когда я обновляю и импортирую файл "real-estate_out-of-town-rent/scenario2.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Сдам дом, общая площадь: 200 кв. м. с фото" присутствует в списке
        * у объявления отображается загруженная фотография

  Сценарий: Импорт объявления в Бийске
    Когда я обновляю и импортирую файл "real-estate_out-of-town-rent/scenario4.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Бийск"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Сдам дом в Бийске, общая площадь: 200 кв.м." присутствует в списке
        * у объявления указан город "Бийск"

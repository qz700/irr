# language:ru
# encoding: utf-8
Функционал: Импорт в категорию Авто и мото -> Мототехника и автодома -> Мотоциклы и мопеды

  Сценарий: Импорт объявления ОП
    Когда я обновляю и импортирую файл "cars_misc_moto/scenario1.xml" для роли "Пользователь для импорта"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Пользователь для импорта"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Продам Хонду" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "5000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле                  | значение |
        | Марка                 | Honda    |
        | Модель                | Lead     |
        | Новый или подержанный | новый    |
        | Тип предложения       | продаю   |
        | Год выпуска           | 2008 г.  |

  Сценарий: Импорт объявления ИП
    Когда я обновляю и импортирую файл "cars_misc_moto/scenario2.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Продам Хонду" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "5000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле                  | значение |
        | Марка                 | Honda    |
        | Модель                | Lead     |
        | Новый или подержанный | новый    |
        | Тип предложения       | продаю   |
        | Год выпуска           | 2008 г.  |

  Сценарий: Импорт объявления с фото
    Когда я обновляю и импортирую файл "cars_misc_moto/scenario3.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Продам Хонду" присутствует в списке
        * у объявления отображается загруженная фотография

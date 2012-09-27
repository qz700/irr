# language:ru
# encoding: utf-8
Функционал: Импорт в категорию Недвижимость -> Коммерческая. Продажа -> Офисы

  Сценарий: Импорт объявления ОП
    Когда я обновляю и импортирую файл "real-estate_commercial-sale_offices/scenario1.xml" для роли "Пользователь для импорта"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Пользователь для импорта"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Продается офис, общая площадь: 200 кв. м." присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "300000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле          | значение |
        | Общая площадь | 200 кв.м |

  Сценарий: Импорт объявления ИП
    Когда я обновляю и импортирую файл "real-estate_commercial-sale_offices/scenario1.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Продается офис, общая площадь: 200 кв. м." присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "300000" в долларах

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле          | значение |
        | Общая площадь | 200 кв.м |

  Сценарий: Импорт объявления с фото
    Когда я обновляю и импортирую файл "real-estate_commercial-sale_offices/scenario2.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Продается офис, общая площадь: 200 кв. м. (фото)" присутствует в списке
        * у объявления отображается загруженная фотография

  Сценарий: Импорт объявления со всеми кастомфилдами
    Когда я обновляю и импортирую файл "real-estate_commercial-sale_offices/scenario3.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Продается офис в центре, общая площадь: 200 кв. м." присутствует в списке

    Когда я открываю детали этого объявления
        * адрес в объявлении равен "Внуково, Интернациональная, 10"
        * шоссе в объявлении равно "Киевское, 5 км (от МКАД)"
        * на вкладке "Все" указаны следующие параметры:
          | поле                          | значение              |
          | АО                            | Поселок Внуково       |
          | Высота потолков               | 3                     |
          | Год постройки/сдачи           | 2010 г.               |
          | Городской телефон             | x                     |
          | Класс                         | A+                    |
          | Лифты в здании                | x                     |
          | Материал стен                 | Панельный             |
          | Микрорайон                    | Внуково               |
          | Направление                   | Киевское ш.           |
          | Общее количество машиномест   | 50                    |
          | Общая площадь                 | 100 кв.м              |
          | Охрана здания                 | x                     |
          | Охрана парковки               | x                     |
          | Парковка                      | Охраняемая и гостевая |
          | Район города                  | Внуково               |
          | Ремонт                        | Евро ремонт           |
          | Серия здания                  | КОПЭ-М/Парус          |
          | Система отопления             | Центральная           |
          | Этаж                          | 4                     |
          | Этажей в здании               | 4                     |
          | Центральное кондиционирование | x                     |
          | Отдельный вход                | x                     |
          | 1-я линия                     | x                     |

  Сценарий: Импорт объявления в Бийск
    Когда я обновляю и импортирую файл "real-estate_commercial-sale_offices/scenario2.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Бийск"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Продается офис в Бийске, общая площадь: 200 кв.м." присутствует в списке
        * у объявления указан город "Бийск"

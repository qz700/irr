# language:ru
# encoding: utf-8
Функционал: Подача объявлений неавторизированным пользователем - Недвижимость -> Вторичный рынок (Москва)

  Контекст:
    Когда открыта страница для города "Москва"

@advert_submit
  Сценарий: Подача объявления неавторизированным пользователем
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
       * в ЛК ИП я запоминаю значение счетчика для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
       * я запоминаю количество объявлений пользователя
       * я запоминаю количество активных объявлений ИП

    Когда я выхожу из текущего пользователя
        * я перехожу к подаче объявления
        * я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
        * я ввожу следующие данные на шаге 2:
          | parameter                  | value                |
          | Улица                      | Интернациональная    |
          | Дом                        | 10                   |
          | Ближайшее метро            | Белорусская м.       |
          | До метро                   | 5                    |
          | Приватизированная квартира | x                    |
          | Комнат в квартире:         | 1                    |
          | Общая площадь:             | 80                   |
          | Этаж:                      | 4                    |
          | Этажей в здании:           | 8                    |
          | Цена                       | 100000               |
          | Валюта                     | $                    |
          | Текст                      | Продаю неавторизированным пользователем |

        * я ввожу следующие данные на шаге 2 в секции "Подробнее о здании":
          | parameter             | value       |
          | Год постройки:        | 2003        |
          | Серия здания          | КОПЭ        |
          | Материал стен         | кирпичный   |
          | Высота потолков:      | 3           |
          | Система водоснабжения | центральная |
          | Система отопления     | центральная |
          | Газ в доме            | x           |
          | Лифты в здании        | x           |
          | Мусоропровод          | x           |
          | Охрана здания         | x           |

        * я ввожу следующие данные на шаге 2 в секции "Подробнее о квартире":
          | parameter             | value       |
          | Жилая площадь:        | 50          |
          | Площадь кухни:        | 20          |
          | Ремонт                | типовой     |
          | Санузел               | раздельный  |
          | Телефон               | x           |
          | Интернет              | x           |
          | Балкон/Лоджия         | x           |
        * я перехожу на шаг 3
        
        * на шаге 2 я ввожу логин и пароль роли "Доверенный интернет-партнер"
       То в ЛК ИП открыт список объявлений пользователя
        * в ЛК ИП объявление с названием "1-комн.  квартира,  Интернациональная ул,  10, 4/8, площадь:  общая 80 кв. м., жилая 50 кв. м., кухня 20 кв. м., с/у раздельный, типовой, балкон/лоджия, городской телефон, приватизированная" присутствует в списке
        * в ЛК ИП счетчик для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок" увеличился на 1
        * счетчик объявлений пользователя увеличился на 1
        * счетчик объявлений ИП во всех разделах увеличился на 1
        * счетчик количества размещенных объявлений в ЛК ИП увеличился на 1
        * в ЛК ИП объявление с названием "1-комн.  квартира,  Интернациональная ул,  10, 4/8, площадь:  общая 80 кв. м., жилая 50 кв. м., кухня 20 кв. м., с/у раздельный, типовой, балкон/лоджия, городской телефон, приватизированная" присутствует в списке
    Когда я открываю детали этого объявления
        * счетчик количества активных объявлений продавца увеличился на 1

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "1-комн.  квартира,  Интернациональная ул,  10, 4/8, площадь:  общая 80 кв. м., жилая 50 кв. м., кухня 20 кв. м., с/у раздельный, типовой, балкон/лоджия, городской телефон, приватизированная" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "100000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" "Год постройки" равно "2003 г."
        * на вкладке "Все" "Серия здания" равно "КОПЭ"
        * на вкладке "Все" "Материал стен" равно "кирпичный"
        * на вкладке "Все" "Высота потолков" равно "3 м"
        * на вкладке "Все" "Система водоснабжения" равно "центральная"
        * на вкладке "Все" "Система отопления" равно "центральная"
        * на вкладке "Все" присутствует "Газ в доме"
        * на вкладке "Все" присутствует "Лифты в здании"
        * на вкладке "Все" присутствует "Мусоропровод"
        * на вкладке "Все" присутствует "Охрана здания"
        * на вкладке "Все" "Жилая площадь" равно "50 кв. м"
        * на вкладке "Все" "Площадь кухни" равно "20 кв. м"
        * на вкладке "Все" "Ремонт" равно "типовой"
        * на вкладке "Все" "Санузел" равно "раздельный"
        * на вкладке "Все" присутствует "Телефон"
        * на вкладке "Все" присутствует "Интернет"
        * на вкладке "Все" присутствует "Балкон/Лоджия"
        * на вкладке "Все" присутствует "Приватизированная квартира"
        * на вкладке "Все" "Комнат в квартире" равно "1"
        * на вкладке "Все" "Общая площадь" равно "80 кв. м"
        * на вкладке "Все" "Этаж" равно "4"
        * на вкладке "Все" "Этажей в здании" равно "8"
    Когда на странице объявления я открываю вкладку "На карте"
       То на странице объявления открыта карта

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
       * я делаю поиск по следующим параметрам:
          | parameter | value           |
          | Район     | Поселок Внуково |
          | Поданные  | вчера и сегодня         |
       * на странице поиска загружен список результатов для недвижимости
       * в списке обычных объявлений присутствует объявление "1 комн, 80/50/20 м2, этаж 4/8"

@after_index
  Сценарий: Проверка индексации - поиск по метро
   Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
       * я делаю поиск по следующим параметрам:
          | parameter     | value          |
          | Станция метро | Белорусская м. |
          | Поданные      | вчера и сегодня        |
       * на странице поиска загружен список результатов для недвижимости
       * в списке обычных объявлений присутствует объявление "1 комн, 80/50/20 м2, этаж 4/8"

@after_index
  Сценарий: Проверка индексации - поиск по метро и времени до метро
   Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
       * я делаю поиск по следующим параметрам:
          | parameter     | value          |
          | Станция метро | Белорусская м. |
          | До метро      | 5              |
          | Поданные      | вчера и сегодня        |
       * на странице поиска загружен список результатов для недвижимости
       * в списке обычных объявлений присутствует объявление "1 комн, 80/50/20 м2, этаж 4/8"

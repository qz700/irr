# language:ru
# encoding: utf-8
Функционал: Деактивация объявления - Недвижимость -> Вторичный рынок (Москва)

  Контекст:
    Когда открыта страница для города "Москва"

@advert_submit
  Сценарий: Деактивация объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок" с параметрами:
          | parameter                  | value                |
          | Улица                      | Интернациональная    |
          | Дом                        | 10                   |
          | Ближайшее метро            | Белорусская м.       |
          | До метро                   | 5                    |
          | Приватизированная квартира | x                    |
          | Комнат в квартире:         | 8                    |
          | Общая площадь:             | 800                  |
          | Этаж:                      | 8                    |
          | Этажей в здании:           | 8                    |
          | Цена:                      | 800000               |
          | Валюта                     | $                    |
          | Текст                      | Тест деактивации объявления |
     * я перехожу на шаг 3
    То открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW [TEST] Недвижимость"
       То объявление с названием "8-комн.  квартира,   Интернациональная ул,   10,  8/8,  площадь:  общая 800 кв. м.,  приватизированная" присутствует в списке

    Когда я деактивирую данное объявление
       То статус созданного объявления равен "неактивно"

@after_index
  Сценарий: Проверка индексации
    Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
        * я делаю поиск по следующим параметрам:
            | parameter | value           |
            | Район     | Поселок Внуково |
            | Поданные  | сегодня         |
        * на странице поиска загружен список результатов для недвижимости
        * в списке объявлений отсутствует объявление "8 комн, 800 м2, этаж 8/8"
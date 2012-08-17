# language:ru
# encoding: utf-8
Функционал: Смена статуса объявления на премиум - Недвижимость -> Вторичный рынок (Москва)

  Контекст:
    Когда открыта страница для города "Москва"

@advert_submit
  Сценарий: Подача объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок" с параметрами:
          | parameter                  | value                |
          | Улица                      | Интернациональная    |
          | Дом                        | 10                   |
          | Ближайшее метро            | Белорусская м.       |
          | До метро                   | 5                    |
          | Приватизированная квартира | x                    |
          | Комнат в квартире:         | 4                    |
          | Общая площадь:             | 400                  |
          | Этаж:                      | 4                    |
          | Этажей в здании:           | 8                    |
          | Цена                      | 400000               |
          | Валюта                     | $                    |
          | Текст                      | Тест смена статуса на премиум|
     * я перехожу на шаг 3
    То в ЛК ИП открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW [TEST] Недвижимость"
        * в ЛК ИП объявление с названием "4-комн.  квартира,   Интернациональная ул,   10,  4/8,  площадь:  общая 400 кв. м.,  приватизированная" присутствует в списке
        * в ЛК ИП я запоминаю значение поля "Премиум"
        * я делаю данное объявление премиумом
       То в ЛК ИП значение поля "Премиум" уменьшилось на единицу
    Когда я открываю детали этого объявления
        * на странице объявления я открываю вкладку "На карте"
       То на странице объявления открыта карта

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
       * я делаю поиск по следующим параметрам:
          | parameter | value           |
          | Район     | Поселок Внуково |
          | Поданные  | вчера и сегодня         |
       * на странице поиска загружен список результатов для недвижимости
       * в списке премиумов присутствует объявление "4 комн, 400 м2, этаж 4/8"

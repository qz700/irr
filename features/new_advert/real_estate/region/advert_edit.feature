# language:ru
# encoding: utf-8
Функционал: Редактирование объявлений - Недвижимость -> Новостройки (Регион)

  Контекст:
    Когда открыта страница для города "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"

@advert_submit
  Сценарий: Редактирование объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки" с параметрами:
          | parameter          | value                                        |
          | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
          | Населённый пункт   | Усть-Алтан                                   |
          | Комнат в квартире: | 1                                            |
          | Общая площадь:     | 100                                          |
          | Этаж:              | 1                                            |
          | Цена              | 100000                                       |
          | Валюта             | $                                            |
          | Текст              | Тест редактирования объявления               |
        * я перехожу на шаг 3
        * в ЛК ИП открыт список объявлений пользователя
        * в ЛК ИП объявление с названием "1-комн. кв.,  1,  площадь:  общая 100 кв. м." присутствует в списке
        * я редактирую данное объявление
        * я ввожу следующие данные на шаге 2:
          | parameter          | value                                        |
          | Комнат в квартире: | 2                                            |
          | Общая площадь:     | 200                                          |
          | Этаж:              | 2                                            |
          | Цена              | 200000                                       |
          | Валюта             | €                                            |
          | Текст              | Тест редактирования объявления - новый текст |
        * я сохраняю редактируемое объявление
       То в ЛК ИП открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW [TEST] Недвижимость"
       То в ЛК ИП объявление с названием "2-комн. кв.,  2,  площадь:  общая 200 кв. м." присутствует в списке
        * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
        * у объявления указан город "Усть-Алтан"
        * у объявления указана цена "200000" в евро

    Когда я открываю детали этого объявления
       То на вкладке "Все" "Комнат в квартире" равно "2"
        * на вкладке "Все" "Общая площадь" равно "200 кв. м"
        * на вкладке "Все" "Этаж" равно "2"

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки"
       * я делаю поиск по следующим параметрам:
          | parameter     | value          |
          | Поданные      | вчера и сегодня        |
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "2 комн, 200 м2, этаж 2"

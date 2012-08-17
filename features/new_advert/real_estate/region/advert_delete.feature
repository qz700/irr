# language:ru
# encoding: utf-8
Функционал: Удаление объявления - Недвижимость -> Новостройки (Регион)

  Контекст:
    Когда открыта страница для города "Усть-Алтан"

@advert_submit
  Сценарий: Удаление объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки" с параметрами:
          | parameter          | value                                        |
          | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
          | Населённый пункт   | Усть-Алтан                                   |
          | Комнат в квартире: | 9                                            |
          | Общая площадь:     | 900                                          |
          | Этаж:              | 9                                            |
          | Цена              | 900000                                       |
          | Валюта             | $                                            |
          | Текст              | Тест удаления объявления                     |
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW [TEST] Недвижимость"
       То в ЛК ИП объявление с названием "9-комн. кв.,  9,  площадь:  общая 900 кв. м." присутствует в списке

    Когда я удаляю данное объявление
       То в ЛК ИП объявление с названием "9-комн. кв.,  9,  площадь:  общая 900 кв. м." отсутствует в списке

@after_index
  Сценарий: Проверка индексации
    Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки"
       * я делаю поиск по следующим параметрам:
          | parameter     | value          |
          | Поданные      | вчера и сегодня        |
       * на странице поиска загружен список результатов
       * в списке объявлений отсутствует объявление "9 комн, 900 м2, этаж 9"

# language:ru
# encoding: utf-8
Функционал: Подача объявления с фото - Недвижимость -> Аренда (Область)

  Контекст:
    Когда открыта страница для города "Пушкино"

@advert_submit
  Сценарий: Подача объявления с фотографией
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
      То в ЛК ИП я запоминаю значение счетчика для категории "Недвижимость -> Квартиры. Аренда"
       * я запоминаю количество объявлений пользователя
       * я запоминаю количество активных объявлений ИП

    Когда я подаю объявление в категорию "Недвижимость -> Квартиры. Аренда" с параметрами:
          | parameter          | value          |
          | Регион             | Московская обл |
          | Населённый пункт   | Пушкино        |
          | Улица              | Строительная   |
          | Шоссе:             | Ярославское    |
          | Комнат в квартире: | 5              |
          | Общая площадь     | 500            |
          | Этаж:              | 5              |
          | Цена               | 500            |
          | Валюта             | $              |
          | Текст              | Продаю с фото  |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
        
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "5-комн.  квартира,  Строительная ул, 5, площадь:  общая 500 кв. м." присутствует в списке
       * в ЛК ИП счетчик для категории "Недвижимость -> Квартиры. Аренда" увеличился на 1
       * счетчик объявлений пользователя увеличился на 1
       * счетчик объявлений ИП во всех разделах увеличился на 1
       * счетчик количества размещенных объявлений в ЛК ИП увеличился на 1
       * в ЛК ИП объявление с названием "5-комн.  квартира,  Строительная ул, 5, площадь:  общая 500 кв. м." присутствует в списке
   Когда я открываю детали этого объявления
       * счетчик количества активных объявлений продавца увеличился на 1

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Недвижимость | ВСЕ РЕГИОНЫ"
       То в ЛК ИП объявление с названием "5-комн.  квартира,  Строительная ул, 5, площадь:  общая 500 кв. м." присутствует в списке
        * у объявления указан регион "Московская"
        * у объявления указан город "Пушкино"
        * у объявления указана цена "500" в долларах
        * у объявления отображается загруженная фотография

@after_index
  Сценарий: Проверка индексации
   Когда открыта страница для региона "Пушкино"
       * на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Аренда"
       * я делаю поиск по следующим параметрам:
          | parameter     | value           |
          | Поданные      | вчера и сегодня |
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "5 комн, 500 м2, этаж 5"

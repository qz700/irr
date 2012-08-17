# language:ru
# encoding: utf-8
Функционал: Редактирование объявлений - Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"

@advert_submit
  Сценарий: Подача объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики" с параметрами:
          | parameter                | value                          |
          | Марка                    | DAF                            |
          | Модель                   | FA1900                         |
          | Заголовок:               | Тест редактирования объявления |
          | Цена                    | 10000                          |
          | Валюта                   | $                              |
          | Пробег:                  | 10000                          |
          | Мощность двигателя, л.с.:| 100                            |
          | Новый или подержанный    | новый                          |
          | Год выпуска              | 2001                           |
          | Тип топлива              | дизель                         |
          | Грузоподъемность:        | 10                             |
          | Текст                    | Тест редактирования объявления |
       * я перехожу на шаг 3
       * в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Тест редактирования объявления" присутствует в списке
       * я редактирую данное объявление
       * я ввожу следующие данные на шаге 2:
          | parameter                | value    |
          | Марка                    | МАЗ      |
          | Модель                   | 236      |
          | Заголовок:               | Тест редактирования объявления - новый текст |
          | Год выпуска              | 2002     |
          | Цена                    | 20000    |
          | Валюта                   | €        |
          | Пробег:                  | 20000    |
          | Мощность двигателя, л.с.:| 200      |
          | Новый или подержанный    | б/у      |
          | Тип топлива              | бензин   |
          | Грузоподъемность:        | 20       |
          | Текст                    | Тест редактирования объявления - новый текст |
       * я сохраняю редактируемое объявление
      То в ЛК ИП открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Авто | ВСЕ РЕГИОНЫ"
       То в ЛК ИП объявление с названием "Тест редактирования объявления - новый текст" присутствует в списке
        * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
        * у объявления указан город "Усть-Алтан"
        * у объявления указана цена "20000" в евро

    Когда я открываю детали этого объявления
       То на вкладке "Все" "Марка" равно "МАЗ"
        * на вкладке "Все" "Модель" равно "236"
        * на вкладке "Все" "Год выпуска" равно "2002"
        * на вкладке "Все" "Пробег" равно "20000"
        * на вкладке "Все" "Мощность двигателя, л.с." равно "200"
        * на вкладке "Все" "Новый или подержанный" равно "б/у"
        * на вкладке "Все" "Тип топлива" равно "бензин"
        * на вкладке "Все" "Грузоподъемность" равно "20"

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики"
       * я делаю поиск по следующим параметрам:
          | parameter | value   |
          | Марка     | МАЗ     |
          | Модель    | 236     |
          | Поданные  | вчера и сегодня |
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "Тест редактирования объявления - новый текст"

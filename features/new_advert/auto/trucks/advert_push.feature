# language:ru
# encoding: utf-8
Функционал: Поднятие объявления - Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики


  Контекст:
    Когда открыта страница для региона "Усть-Алтан"

@advert_submit
  Сценарий: Поднятие объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики" с параметрами:
          | parameter                | value                    |
          | Марка                    | DAF                      |
          | Модель                   | FA3305                   |
          | Заголовок:               | Тест поднятия объявления |
          | Цена                    | 70000                    |
          | Валюта                   | $                        |
          | Пробег:                  | 70000                    |
          | Мощность двигателя, л.с.:| 700                      |
          | Новый или подержанный    | новый                    |
          | Год выпуска              | 2007                     |
          | Тип топлива              | дизель                   |
          | Грузоподъемность:        | 70                       |
          | Текст                    | Тест поднятия объявления |
     * я перехожу на шаг 3
    То в ЛК ИП открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Авто > Коммерческий транспорт | ВСЕ РЕГИОНЫ"
       То в ЛК ИП объявление с названием "Тест поднятия объявления" присутствует в списке

    Когда в ЛК ИП я запоминаю значение поля "Поднятие"
        * я поднимаю данное объявление
       То в ЛК ИП значение поля "Поднятие" уменьшилось на единицу

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики"
       * я делаю поиск по следующим параметрам:
          | parameter | value   |
          | Марка     | DAF     |
          | Модель    | FA3305  |
          | Поданные  | вчера и сегодня |
       * на странице поиска загружен список результатов
       * первым в списке обычных объявлений первым идёт объявление "Тест поднятия объявления"

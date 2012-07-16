# language:ru
# encoding: utf-8
Функционал: Поднятие объявления - Авто и Мото -> Легковые автомобили -> Автомобили с пробегом


  Контекст:
    Когда открыта страница для региона "Усть-Алтан"

@advert_submit
  Сценарий: Поднятие объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом" с параметрами:
          | parameter        | value          |
          | Марка            | Audi           |
          | Модель           | A7             |
          | Цена:            | 70000          |
          | Валюта           | $              |
          | Год выпуска      | 2007           |
          | Тип кузова       | кабриолет      |
          | Тип трансмиссии  | автоматическая |
          | Текст            | Тест поднятия объявления |
     * я перехожу на шаг 3
    То открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Авто | ВСЕ РЕГИОНЫ"
       То объявление с названием "Audi A7,  кабриолет,  2007 г. в.,  автоматическая" присутствует в списке

    Когда в ЛК ИП я запоминаю значение поля "Поднятие"
        * я поднимаю данное объявление
       То в ЛК ИП значение поля "Поднятие" уменьшилось на единицу

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"
       * я делаю поиск по следующим параметрам:
          | parameter | value   |
          | Марка     | Audi    |
          | Модель    | A7      |
          | Поданные  | сегодня |
       * на странице поиска загружен список результатов
       * первым в списке обычных объявлений первым идёт объявление "Audi A7,  кабриолет,  2007 г. в.,  автоматическая"
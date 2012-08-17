# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Коммерческий транспорт -> Автобусы

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        * я подаю объявление в категорию "Авто и мото -> Коммерческий транспорт -> Автобусы"

  Сценарий: Объявление 1
   Когда я ввожу следующие данные на шаге 2:
          | parameter             | value        |
          | Марка                 | Ford         |
          | Модель                | E450         |
          | Заголовок             | Продаю форд  |
          | Цена                 | 15000        |
          | Валюта                | руб.         |
          | Год выпуска           | 2000         |
          | Пробег                | 2000         |
          | Число мест            | 46           |
          | Объем двигателя       | 6            |
          | Новый или подержанный | новый        |
          | Тип автобуса          | городской    |
          | Тип трансмиссии       | механическая |
          | Текст                 | Продаю форд  |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП я выбираю пакет "NEW Авто | ВСЕ РЕГИОНЫ"
       * в ЛК ИП объявление с названием "Продаю форд" присутствует в списке
       * я делаю данное объявление премиумом

  Сценарий: Объявление 2
   Когда я ввожу следующие данные на шаге 2:
          | parameter             | value          |
          | Марка                 | Mercedes       |
          | Модель                | Integro        |
          | Заголовок             | Продаю автобус |
          | Цена                 | 200            |
          | Валюта                | $              |
          | Год выпуска           | 2005           |
          | Пробег                | 2005           |
          | Число мест            | 2              |
          | Объем двигателя       | 6              |
          | Новый или подержанный | б/у            |
          | Тип трансмиссии       | вариатор       |
          | Текст                 | Продаю         |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

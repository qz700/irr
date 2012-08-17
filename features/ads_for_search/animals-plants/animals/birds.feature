# language:ru
# encoding: utf-8
Функционал: Животные и растения -> Животные -> Птицы

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        * я подаю объявление в категорию "Животные и растения -> Животные -> Птицы"

  Сценарий: Объявление 1
   Когда я ввожу следующие данные на шаге 2:
          | parameter          | value           |
          | Тип предложения    | продам          |
          | Заголовок          | Продаю попугаев |
          | Цена              | 15000           |
          | Валюта             | руб.            |
          | Предмет продажи    | ара             |
          | Возраст            | 2 ~ мес.        |
          | Текст              | Продаю попугаев |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

  Сценарий: Объявление 2
   Когда я ввожу следующие данные на шаге 2:
          | parameter          | value           |
          | Тип предложения    | продам          |
          | Заголовок          | Продаю канареек |
          | Цена              | 100             |
          | Валюта             | $               |
          | Предмет продажи    | канарейки       |
          | Возраст            | 2 ~ года/лет    |
          | Текст              | Продаю          |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя


# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Мототехника и Автодома -> Снегоходы и квадроциклы

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        

  Сценарий: Объявление 1
   Когда я подаю объявление в категорию "Авто и мото -> Мототехника и Автодома -> Снегоходы и квадроциклы -> Снегоходы и квадроциклы - снегоходы"
       * я ввожу следующие данные на шаге 2:
          | parameter             | value             |
          | Заголовок             | Продаю велогибрид |
          | Цена                 | 15000             |
          | Валюта                | руб.              |
          | Новый или подержанный | новый             |
          | Год выпуска           | 2000              |
          | Текст                 | Продаю велогибрид |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

  Сценарий: Объявление 2
   Когда я подаю объявление в категорию "Авто и мото -> Мототехника и Автодома -> Снегоходы и квадроциклы -> Снегоходы и квадроциклы - квадроциклы"
       * я ввожу следующие данные на шаге 2:
          | parameter       | value             |
          | Заголовок       | Продаю квадроцикл |
          | Цена           | 200               |
          | Валюта          | $                 |
          | Тип предложения | продам            |
          | Текст           | Продаю            |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

# language:ru
# encoding: utf-8
Функционал: Животные и растения -> Аксессуары -> Средства для ухода за животными

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        * я подаю объявление в категорию "Животные и растения -> Аксессуары -> Средства для ухода за животными"

  Сценарий: Объявление 1
   Когда я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Тип предложения    | продам                    |
          | Состояние          | новый                     |
          | Заголовок          | Тест подачи объявления 1  |
          | Цена:              | 15000                     |
          | Валюта             | руб.                      |
          | Текст              | Продаю шампунь для собак  |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя

  Сценарий: Объявление 2
   Когда я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Тип предложения    | продам                    |
          | Состояние          | б\у                       |
          | Заголовок          | Тест подачи объявления 2 (ошейник) |
          | Цена:              | 100                       |
          | Валюта             | $                         |
          | Текст              | Продаю                    |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя
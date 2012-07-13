# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Автозапчасти и принадлежности -> Шины

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        

  Сценарий: Объявление 1
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Шины"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Заголовок          | Тест подачи объявления 1  |
          | Цена:              | 15000                     |
          | Валюта             | руб.                      |
          | Тип предложения    | продам                    |
          | Сезонность         | летние                    |
          | Производитель      | Bridgestone               |
          | Диаметр            | 17                        |
          | Ширина профиля     | 135                       |
          | Высота профиля     | 50                        |
          | Текст              | Продаю диски              |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя

  Сценарий: Объявление 2
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Шины"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Заголовок          | Тест подачи объявления 2 (Япония) |
          | Цена:              | 200                       |
          | Валюта             | $                         |
          | Тип предложения    | продам                    |
          | Сезонность         | летние                    |
          | Производитель      | Bridgestone               |
          | Диаметр            | 17                        |
          | Ширина профиля     | 135                       |
          | Высота профиля     | 50                        |
          | Текст              | Продаю                    |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя

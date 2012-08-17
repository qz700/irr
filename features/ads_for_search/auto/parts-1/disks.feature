# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Автозапчасти и принадлежности -> Диски

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        

  Сценарий: Объявление 1
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value             |
          | Заголовок          | Продаю диски      |
          | Цена              | 15000             |
          | Валюта             | руб.              |
          | Тип предложения    | куплю             |
          | Тип дисков         | литые             |
          | Состояние          | новые             |
          | Произодитель       | Mak               |
          | Диаметр обода      | 17                |
          | Ширина обода       | 5                 |
          | Число болтов       | 4                 |
          | Расстояние между болтами \(PCD\) | 100 |
          | Вылет \(ET\)       | 5                 |
          | Текст              | Продаю диски      |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

  Сценарий: Объявление 2
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value         |
          | Заголовок          | Продаю графит |
          | Цена              | 200           |
          | Валюта             | $             |
          | Тип предложения    | продам        |
          | Состояние          | новые         |
          | Произодитель       | Mak           |
          | Диаметр обода      | 17            |
          | Ширина обода       | 5             |
          | Число болтов       | 4             |
          | Текст              | Продаю        |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

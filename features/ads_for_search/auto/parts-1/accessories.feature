# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Автозапчасти и принадлежности -> Аксессуары

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        

  Сценарий: Объявление 1
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Аксессуары -> Аксессуары для автотехники"
       * я ввожу следующие данные на шаге 2:
          | parameter       | value            |
          | Заголовок       | Продаю навигатор |
          | Цена           | 200              |
          | Валюта          | $                |
          | Тип предложения | продам           |
          | Состояние       | новый            |
          | Текст           | Продаю навигатор |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП я выбираю пакет "NEW Авто | ВСЕ РЕГИОНЫ"
       * в ЛК ИП объявление с названием "Продаю навигатор" присутствует в списке
       * я делаю данное объявление премиумом

  Сценарий: Объявление 2
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Аксессуары -> Автокресла"
       * я ввожу следующие данные на шаге 2:
          | parameter       | value            |
          | Заголовок       | Продаю антирадар |
          | Цена           | 15000            |
          | Валюта          | руб.             |
          | Тип предложения | продам           |
          | Состояние       | новый            |
          | Текст           | Продаю           |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

  Сценарий: Объявление 3
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Аксессуары -> Наборы инструментов"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Заголовок          | Продаю набор инструментов |
          | Цена              | 200                       |
          | Валюта             | $                         |
          | Тип предложения    | продам                    |
          | Состояние          | новый                     |
          | Текст              | Продаю                    |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

  Сценарий: Объявление 4
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Аксессуары -> Домкраты"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value          |
          | Заголовок          | Продаю домкрат |
          | Цена              | 15000          |
          | Валюта             | руб.           |
          | Тип предложения    | продам         |
          | Состояние          | новый          |
          | Текст              | Продаю         |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

  Сценарий: Объявление 5
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Аксессуары -> Механические блокираторы"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value             |
          | Заголовок          | Продаю блокиратор |
          | Цена              | 200               |
          | Валюта             | $                 |
          | Тип предложения    | продам            |
          | Состояние          | новый             |
          | Текст              | Продаю            |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

  Сценарий: Объявление 6
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Аксессуары -> Щетки и скребки"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value        |
          | Заголовок          | Продаю щетки |
          | Цена              | 15000        |
          | Валюта             | руб.         |
          | Тип предложения    | продам       |
          | Состояние          | новый        |
          | Текст              | Продаю       |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

  Сценарий: Объявление 7
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Аксессуары -> Буксировочные тросы"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value       |
          | Заголовок          | Продаю трос |
          | Цена              | 200         |
          | Валюта             | $           |
          | Тип предложения    | продам      |
          | Состояние          | новый       |
          | Текст              | Продаю      |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

  Сценарий: Объявление 8
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Аксессуары -> Багажники, боксы, крепления"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value           |
          | Заголовок          | Продаю багажник |
          | Цена              | 15000           |
          | Валюта             | руб.            |
          | Тип предложения    | продам          |
          | Состояние          | новый           |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

  Сценарий: Объявление 9
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Аксессуары -> Инверторы"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value  |
          | Цена              | 200    |
          | Валюта             | $      |
          | Тип предложения    | продам |
          | Состояние          | новый  |
          | Текст              | Продаю |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

  Сценарий: Объявление 10
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Аксессуары -> Насосы (компрессоры)"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value        |
          | Заголовок          | Продаю насос |
          | Цена              | 15000        |
          | Валюта             | руб.         |
          | Тип предложения    | продам       |
          | Состояние          | новый        |
          | Текст              | Продаю       |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

  Сценарий: Объявление 11
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Аксессуары -> Автомобильные холодильники"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value                  |
          | Заголовок          | Продаю автохолодильник |
          | Цена              | 200                    |
          | Валюта             | $                      |
          | Тип предложения    | продам                 |
          | Состояние          | новый                  |
          | Текст              | Продаю                 |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

  Сценарий: Объявление 12
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Аксессуары -> Автопылесосы"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value               |
          | Заголовок          | Продаю автопылесосы |
          | Цена              | 15000               |
          | Валюта             | руб.                |
          | Тип предложения    | продам              |
          | Состояние          | новый               |
          | Текст              | Продаю              |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

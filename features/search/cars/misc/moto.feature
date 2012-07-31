# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Мототехника и Автодома -> Мотоциклы и мопеды

  Контекст:
    Когда открыта страница для региона "Россия"
        И на главной странице я перехожу в категорию "Авто и мото -> Мототехника и Автодома -> Мотоциклы и мопеды"

@all_results
  Сценарий: Все результаты
   Когда на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений

  Сценарий: Фильтр по цене
   Когда я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
        | Цена           | 100  | 100000 |       |
        | Валюта         |      |        | руб.  |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении валюта равна "руб."

  Сценарий: Фильтр по валюте
   Когда я делаю поиск по следующим параметрам:
      | parameter      | min  | max    | value |
      | Цена           | 100  | 100000 |       |
      | Валюта         |      |        | $     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении валюта равна "$"
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000

  Сценарий: Фильтр по "Новый или подержанный"
   Когда я делаю поиск по следующим параметрам:
      | parameter             | value |
      | Новый или подержанный | новый |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Новый или подержанный" равно "новый"

@customfield
  Сценарий: Фильтр по году выпуска
   Когда я делаю поиск по следующим параметрам:
      | parameter      | min  | max  |
      | Год выпуска    | 1933 | 2012 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Год выпуска" в границах "1933 - 2012"

@bugs @bug36683
  Сценарий: Фильтр по году выпуска
    Когда я делаю поиск по следующим параметрам:
      | parameter      | max     |
      | Год выпуска    | 1000000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений

  Сценарий: Фильтр по году выпуска
    Когда я делаю поиск по следующим параметрам:
      | parameter      | min |
      | Год выпуска    | 0   |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений

@customfield
  Сценарий: Фильтр по марке и модели
   Когда я делаю поиск по следующим параметрам:
      | parameter | value                 |
      | Марка     | Honda                 |
      | Модель    | CBR 1000 RR Fireblade |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Марка" равно "Honda"
       И в деталях первого объявления "Модель" равно "CBR 1000 RR Fireblade"

@customfield
  Сценарий: Фильтр по марке и модели
   Когда я делаю поиск по следующим параметрам:
      | parameter | value                 |
      | Марка     | Honda, Suzuki         |
      | Модель    | CBR 1000 RR Fireblade |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений

   Когда на странице поиска я запоминаю следующие поля из деталей объявления:
       | поле   |
       | Марка  |
       | Модель |
      То в результатах поиска присутствует объявление, у которого "Марка" равно "Honda"
       И в результатах поиска присутствует объявление, у которого "Модель" равно "CBR 1000 RR Fireblade"
       И в результатах поиска присутствует объявление, у которого "Марка" равно "Suzuki"

@bugs @bug_missing_photo
  Сценарий: Фильтр по наличию фото
   Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С фото    | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении отображается загруженная фотография

@empty_results
  Сценарий: Фильтр по наличию видео
   Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С видео   | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления отображается видео

  Сценарий: Фильтр по источнику
   Когда я делаю поиск по следующим параметрам:
      | parameter | value             |
      | Источник  | Интернет-партнёры |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении источник равен "Интернет-партнёры"

@empty_results
  Сценарий: Фильтр по времени подачи
    Когда я делаю поиск по следующим параметрам:
      | parameter | value    |
      | Поданные  | за месяц |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И каждое объявление подано не более 31 дней назад

@bugs @bug34183
  Сценарий: Фильтр по ключевому слову в заголовке объявления
    Когда я указываю искать только в заголовках объявления
        И я ищу "скутер"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "скутер"

  Сценарий: Фильтр по ключевому слову
    Когда я ищу "скутер"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в первом объявлении содержится "скутер"

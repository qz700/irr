# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Мототехника и автодома -> Автодома и легковые прицепы

  Контекст:
    Когда открыта страница для региона "Россия"
        И на главной странице я перехожу в категорию "Авто и мото -> Мототехника и автодома -> Автодома и легковые прицепы"

@all_results
  Сценарий: Все результаты
   Когда на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений

  Сценарий: Фильтр по типу предложения
   Когда я делаю поиск по следующим параметрам:
      | parameter       | value  |
      | Тип предложения | продам |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип предложения" равно "продам"

  Сценарий: Фильтр по "Новый или подержанный"
   Когда я делаю поиск по следующим параметрам:
      | parameter             | value |
      | Новый или подержанный | новый |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Новый или подержанный" равно одному из "новый"

@customfield
  Сценарий: Фильтр по году выпуска
   Когда я делаю поиск по следующим параметрам:
      | parameter      | min  | max  |
      | Год выпуска    | 1933 | 2012 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Год выпуска" >= "1933"
       И в деталях первого объявления "Год выпуска" <= "2012"

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

@customfield
@empty_results
  Сценарий: Фильтр по объему внешнего багажника
   Когда я делаю поиск по следующим параметрам:
        | parameter                | min | max |
        | Объем внешнего багажника | 1   | 100 |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Объем внешнего багажника" в границах "1 - 100"

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
  Сценарий: Фильтр по ключевым словам
   Когда я делаю поиск по следующим параметрам:
      | parameter      | value |
      | Ключевые слова | дача  |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении содержится "дача"

@bugs @bug34183
  Сценарий: Фильтр по ключевому слову в заголовке объявления
    Когда я указываю искать только в заголовках объявления
        И я ищу "дача"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "дач"

  Сценарий: Фильтр по ключевому слову
    Когда я ищу "дача"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в первом объявлении содержится "дач"

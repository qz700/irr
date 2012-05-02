# language:ru
Функционал: Авто и мото -> Коммерческий транспорт -> Автобусы

  Сценарий: Все результаты
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Автобусы" 
       И я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении указан город "Москва"
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений
       И в каждом объявлении отображается рисунок
       И в каждом объявлении не более 120 знаков

  Сценарий: Фильтр по цене
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Автобусы" 
       И я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
        | Цена           | 100  | 100000 |       |
        | Валюта         |      |        | руб.  |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении валюта равна "руб."

  Сценарий: Фильтр по валюте
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Автобусы" 
       И я делаю поиск по следующим параметрам:
      | parameter      | min  | max    | value |
      | Цена           | 100  | 100000 |       |
      | Валюта         |      |        | $     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении валюта равна "$"
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000

@empty_results
  Сценарий: Фильтр по "Новый или подержанный"
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Автобусы" 
       И я делаю поиск по следующим параметрам:
      | parameter             | value |
      | Новый или подержанный | новый |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Новый или подержанный" равно "новый"

@bug
  Сценарий: Фильтр по году выпуска
   # BUG http://tp.prontosoft.by/Project/QA/Bug/View.aspx?BugID=33722&ProjectID=30031
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Автобусы" 
       И я делаю поиск по следующим параметрам:
      | parameter      | min  | max  |
      | Год выпуска    | 1933 | 2012 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Год выпуска" в границах "1933 - 2012"

@bug
  Сценарий: Фильтр по типу автобуса
   #BUG http://tp.prontosoft.by/Project/QA/Bug/View.aspx?BugID=33722&ProjectID=30031
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Автобусы" 
       И я делаю поиск по следующим параметрам:
      | parameter    | value     |
      | Тип автобуса | городской |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Тип автобуса" равно "Городской"

  Сценарий: Фильтр по типу трансмиссии
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Автобусы" 
       И я делаю поиск по следующим параметрам:
      | parameter       | value        |
      | Тип трансмиссии | механическая |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Тип трансмиссии" равно "механическая"

  Сценарий: Фильтр по марке и модели
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Автобусы" 
       И я делаю поиск по следующим параметрам:
      | parameter | value |
      | Марка     | Ford  |
      | Модель    | E450  |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Марка" равно "Ford"
       И в деталях каждого объявления "Модель" равно "E450"

  Сценарий: Фильтр по числу мест
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Автобусы" 
       И я делаю поиск по следующим параметрам:
      | parameter  | value |
      | Число мест | 46    |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Число мест" равно "46"

  Сценарий: Фильтр по наличию фото
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Автобусы" 
       И я делаю поиск по следующим параметрам:
      | parameter | value |
      | С фото    | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении отображается загруженная фотография

@empty_results
  Сценарий: Фильтр по наличию видео
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Автобусы" 
       И я делаю поиск по следующим параметрам:
      | parameter | value |
      | С видео   | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления отображается видео

  Сценарий: Фильтр по источнику
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Автобусы" 
       И я делаю поиск по следующим параметрам:
      | parameter | value       |
      | Источник  | Cайт IRR.RU |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении источник равен "Сайт IRR.RU"

  Сценарий: Фильтр по времени подачи
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Автобусы" 
       И я делаю поиск по следующим параметрам:
      | parameter | value           |
      | Поданные  | вчера и сегодня |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И каждое объявление подано не более 2 дней назад

# language:ru
# encoding: utf-8
Функционал: Авто и мото - проверка основных фильтров (Irr.ru-1236)

  Контекст:
    Когда открыта страница для региона "Россия"
        И на главной странице я перехожу в категорию "Авто и мото"

  Сценарий: Фильтр по цене
   Когда на главной странице я перехожу в категорию "Авто и мото"
       * я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
        | Цена           | 100  | 100000 |       |
        | Валюта         |      |        | руб.  |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении валюта равна "руб."

  Сценарий: Фильтр по валюте
    Когда на главной странице я перехожу в категорию "Авто и мото"
        * я делаю поиск по следующим параметрам:
      | parameter      | min  | max    | value |
      | Цена           | 100  | 100000 |       |
      | Валюта         |      |        | $     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении валюта равна "$"
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000

  Сценарий: Фильтр по году выпуска
    Когда на главной странице я перехожу в категорию "Авто и мото"
        * я делаю поиск по следующим параметрам:
      | parameter      | min  | max  |
      | Год выпуска    | 1933 | 2012 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Год выпуска" в границах "1933 - 2012"

  Сценарий: Фильтр по году выпуска - от
    Когда на главной странице я перехожу в категорию "Авто и мото"
        * я делаю поиск по следующим параметрам:
      | parameter      | min  |
      | Год выпуска    | 1933 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Год выпуска" >= "1933"

  Сценарий: Фильтр по году выпуска - до
    Когда на главной странице я перехожу в категорию "Авто и мото"
        * я делаю поиск по следующим параметрам:
      | parameter      | min  |
      | Год выпуска    | 2012 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Год выпуска" <= "2012"

  Сценарий: Фильтр по марке и модели
    Когда на главной странице я перехожу в категорию "Авто и мото"
        * я делаю поиск по следующим параметрам:
      | parameter | value |
      | Марка     | Audi  |
      | Модель    | A4    |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Марка" равно "Audi"
       И в деталях первого объявления "Модель" равно "A4"

  Сценарий: Фильтр по типу кузова
    Когда на главной странице я перехожу в категорию "Авто и мото"
        * я делаю поиск по следующим параметрам:
      | parameter  | value |
      | Тип кузова | седан |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип кузова" равно "седан"

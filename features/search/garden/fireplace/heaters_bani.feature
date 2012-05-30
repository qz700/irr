# language:ru
# encoding: utf-8
Функционал: Все для дачи -> Камины, печи -> Печи для бани, сауны

  Контекст:
    Когда открыта страница для региона "Россия"
        И на главной странице я перехожу в категорию "Все для дачи -> Камины, печи -> Печи для бани, сауны"

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

  Сценарий: Фильтр по состоянию
   Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Состояние | новый |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Состояние" равно "новый"

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
  Сценарий: Фильтр по виду
   Когда я делаю поиск по следующим параметрам:
      | parameter | value   |
      | Вид       | газовые |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Вид" равно "газовые"

@customfield
  Сценарий: Фильтр по весу камней
   Когда я делаю поиск по следующим параметрам:
      | parameter      | min | max   |
      | Вес камней, кг | 1   | 10000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Вес камней, кг" >= "1"
       И в деталях первого объявления "Вес камней, кг" <= "10000"

@customfield
  Сценарий: Фильтр по диаметру дымохода
   Когда я делаю поиск по следующим параметрам:
      | parameter            | min | max   |
      | Диаметр дымохода, см | 1   | 10000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Диаметр дымохода, см" >= "1"
       И в деталях первого объявления "Диаметр дымохода, см" <= "10000"

@customfield
  Сценарий: Фильтр по высоте
   Когда я делаю поиск по следующим параметрам:
      | parameter  | min | max   |
      | Высота, мм | 1   | 10000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Высота, мм" >= "1"
       И в деталях первого объявления "Высота, мм" <= "10000"

@customfield
  Сценарий: Фильтр по глубине
   Когда я делаю поиск по следующим параметрам:
      | parameter   | min | max   |
      | Глубина, мм | 1   | 10000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Глубина, мм" >= "1"
       И в деталях первого объявления "Глубина, мм" <= "10000"

@customfield
  Сценарий: Фильтр по ширине
   Когда я делаю поиск по следующим параметрам:
      | parameter  | min | max   |
      | Ширина, мм | 1   | 10000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Ширина, мм" >= "1"
       И в деталях первого объявления "Ширина, мм" <= "10000"

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

@empty_results
  Сценарий: Фильтр по источнику
    Когда я делаю поиск по следующим параметрам:
      | parameter | value       |
      | Источник  | Cайт IRR.RU |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении источник равен "Сайт IRR.RU"

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
        И я ищу "память"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "память"

@bugs @bug34183
  Сценарий: Фильтр по ключевому слову
    Когда я ищу "память"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в первом объявлении содержится "память"

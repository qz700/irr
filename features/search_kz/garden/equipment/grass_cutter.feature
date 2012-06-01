# language:ru
# encoding: utf-8
Функционал: Все для дачи -> Садовая техника -> Газонокосилки, триммеры

  Контекст:
    Когда открыта страница для региона "Казахстан"
        И на главной странице я перехожу в категорию "Все для дачи -> Садовая техника -> Газонокосилки, триммеры"

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
        | Валюта         |      |        | тенге  |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении валюта равна "тенге"

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
  Сценарий: Фильтр по марке и модели
   Когда я делаю поиск по следующим параметрам:
      | parameter | value     |
      | Марка     | Husqvarna |
      | Модель    | 143R-II   |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Марка" равно "Husqvarna"
       И в деталях первого объявления "Модель" равно "143R-II"

@customfield
  Сценарий: Фильтр по типу
   Когда я делаю поиск по следующим параметрам:
      | parameter | value         |
      | Тип       | газонокосилка |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип" равно "газонокосилка"

@customfield
  Сценарий: Фильтр по типу двигателя
   Когда я делаю поиск по следующим параметрам:
      | parameter     | value      |
      | Тип двигателя | бензиновый |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип двигателя" равно "бензиновый"

@customfield
  Сценарий: Фильтр по ширине скашивания
    Когда я делаю поиск по следующим параметрам:
      | parameter             | min  | max |
      | Ширина скашивания, см | 10   | 100 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Ширина скашивания, см" >= "10"
       И в деталях первого объявления "Ширина скашивания, см" <= "100"

@customfield
  Сценарий: Фильтр по травосборнику
    Когда я делаю поиск по следующим параметрам:
      | parameter    | value |
      | Травосборник | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Травосборник"

@customfield
  Сценарий: Фильтр по мощности
    Когда я делаю поиск по следующим параметрам:
      | parameter    | min  | max |
      | Мощность, Вт | 10   | 100 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Мощность, Вт" >= "10"
       И в деталях первого объявления "Мощность, Вт" <= "100"

@customfield
  Сценарий: Фильтр по весу
    Когда я делаю поиск по следующим параметрам:
      | parameter | min | max |
      | Вес, кг   | 1   | 10  |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Вес, кг" >= "1"
       И в деталях первого объявления "Вес, кг" <= "10"

@customfield
  Сценарий: Фильтр по самоходным
    Когда я делаю поиск по следующим параметрам:
      | parameter  | value |
      | Самоходная | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Самоходная"

@customfield
  Сценарий: Фильтр по приводу
   Когда я делаю поиск по следующим параметрам:
      | parameter | value  |
      | Привод    | задний |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Привод" равно "задний"

@customfield
  Сценарий: Фильтр по мульчированию
    Когда я делаю поиск по следующим параметрам:
      | parameter     | value |
      | Мульчирование | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Мульчирование"

@customfield
  Сценарий: Фильтр по выбросу травы
   Когда я делаю поиск по следующим параметрам:
      | parameter    | value |
      | Выброс травы | вбок  |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Выброс травы" равно "вбок"

@customfield
  Сценарий: Фильтр по уровню шума
    Когда я делаю поиск по следующим параметрам:
      | parameter        | min | max |
      | Уровень шума, дБ | 1   | 100 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Уровень шума, дБ" >= "1"
       И в деталях первого объявления "Уровень шума, дБ" <= "100"

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
      | Источник  | Cайт IRR.KZ |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении источник равен "Cайт IRR.KZ"

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

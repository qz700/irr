# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Техника для авто -> Камеры заднего вида

  Контекст:
    Когда открыта страница для региона "Россия"
        И на главной странице я перехожу в категорию "Электроника и техника -> Техника для авто -> Камеры заднего вида"

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
@empty_results
  Сценарий: Фильтр по разрешению экрана
    Когда я делаю поиск по следующим параметрам:
      | parameter         | value     |
      | Разрешение экрана | 1280x1024 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Разрешение экрана" равно "1280x1024"

@customfield
@empty_results
  Сценарий: Фильтр по углу обзора по вертикали
    Когда я делаю поиск по следующим параметрам:
      | parameter                | min | max |
      | Угол обзора по вертикали | 1   | 180 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Угол обзора по вертикали" >= "1"
       И в деталях первого объявления "Угол обзора по вертикали" <= "180"

@customfield
  Сценарий: Фильтр по углу обзора по вертикали
    Когда я делаю поиск по следующим параметрам:
      | parameter                | max      |
      | Угол обзора по вертикали | 10000000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений

@customfield
  Сценарий: Фильтр по углу обзора по горизонтали
    Когда я делаю поиск по следующим параметрам:
      | parameter                  | min | max |
      | Угол обзора по горизонтали | 1   | 180 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Угол обзора по горизонтали" >= "1"
       И в деталях первого объявления "Угол обзора по горизонтали" <= "180"

@customfield
  Сценарий: Фильтр по углу обзора по горизонтали
    Когда я делаю поиск по следующим параметрам:
      | parameter                  | max      |
      | Угол обзора по горизонтали | 10000000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений

@customfield
  Сценарий: Фильтр по минимальному освещению
    Когда я делаю поиск по следующим параметрам:
      | parameter             | min | max  |
      | Минимальное освещение | 1   | 1000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Минимальное освещение" >= "1"
       И в деталях первого объявления "Минимальное освещение" <= "1000"

@customfield
  Сценарий: Фильтр по минимальному освещению
    Когда я делаю поиск по следующим параметрам:
      | parameter             | max      |
      | Минимальное освещение | 10000000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений

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
        И я ищу "сабвуфер"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "сабвуфер"

@bugs @bug34183
  Сценарий: Фильтр по ключевому слову
    Когда я ищу "сабвуфер"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в первом объявлении содержится "сабвуфер"

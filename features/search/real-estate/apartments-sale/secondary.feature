# language:ru
# encoding: utf-8
Функционал: Недвижимость -> Квартиры. Продажа -> Вторичный рынок

  Контекст:
    Когда открыта страница для города "Москва"
        И на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"

@all_results
  Сценарий: Все результаты
   Когда на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений
       

  Сценарий: Фильтр по округам
    Когда я делаю поиск по следующим параметрам:
      | parameter | value    |
      | Округ     | Западный |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "АО" равно "Западный"

  Сценарий: Фильтр по районам
    Когда я делаю поиск по следующим параметрам:
      | parameter | value   |
      | Район     | Кунцево |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Район города" равно "Кунцево"

  Сценарий: Фильтр по линии метро
    Когда я делаю поиск по следующим параметрам:
      | parameter   | value       |
      | Линия метро | Калининская |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Линия метро" равно "Калининская"

  Сценарий: Фильтр по станции метро
    Когда я делаю поиск по следующим параметрам:
      | parameter     | value          |
      | Станция метро | Новогиреево м. |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Станция метро" равно "Новогиреево"

  Сценарий: Фильтр по времени до метро
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | До метро  | 5     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "До метро" <= "5"

@customfield
  Сценарий: Фильтр по комнатам в квартире
    Когда я делаю поиск по следующим параметрам:
      | parameter          | value |
      | Комнат в квартире  | три   |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Комнат в квартире" равно "3"

@customfield
  Сценарий: Фильтр по общей площади
    Когда я делаю поиск по следующим параметрам:
        | parameter     | min | max |
        | Общая площадь | 10  | 300 |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Общая площадь" >= "10"
       И в деталях первого объявления "Общая площадь" <= "300"

@customfield
  Сценарий: Фильтр по жилой площади 
    Когда я делаю поиск по следующим параметрам:
        | parameter     | min | max |
        | Жилая площадь | 10  | 300 |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Жилая площадь" >= "10"
       И в деталях первого объявления "Жилая площадь" <= "300"

@customfield
@bug33726
  Сценарий: Фильтр по этажу
    Когда я делаю поиск по следующим параметрам:
      | parameter | value     |
      | Этаж      | не первый |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления этаж не первый

@bugs @bug34489
  Сценарий: Фильтр по цене
    Когда я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
        | Цена           | 100  | 100000 |       |
        | Валюта         |      |        | руб.  |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении валюта равна "руб."

  Сценарий: Фильтр по валюте
    Когда я делаю поиск по следующим параметрам:
      | parameter      | min  | max    | value |
      | Цена           | 100  | 100000 |       |
      | Валюта         |      |        | $     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении валюта равна "$"
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000

@customfield
@empty_results
  Сценарий: Фильтр по приватизированной квартире
    Когда я делаю поиск по следующим параметрам:
      | parameter                  | value |
      | Приватизированная квартира | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Приватизированная квартира"

@customfield
  Сценарий: Фильтр по отделке
    Когда я делаю поиск по следующим параметрам:
      | parameter | value      |
      | Отделка   | евроремонт |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Ремонт" равно "евроремонт"

@customfield
  Сценарий: Фильтр по балкону\лоджии
    Когда я делаю поиск по следующим параметрам:
      | parameter     | value |
      | Балкон/Лоджия | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Балкон/Лоджия"

@customfield
  Сценарий: Фильтр по этажам в здании
    Когда я делаю поиск по следующим параметрам:
      | parameter     | min | max |
      | Этаж в здании | 1   | 10  |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Этаж" >= "1"
       И в деталях первого объявления "Этаж" <= "10"

@customfield
  Сценарий: Фильтр по лифтам в здании
    Когда я делаю поиск по следующим параметрам:
      | parameter      | value |
      | Лифты в здании | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Лифты в здании"

@customfield
  Сценарий: Фильтр по газу в доме
    Когда я делаю поиск по следующим параметрам:
      | parameter  | value |
      | Газ в доме | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Газ в доме"

  Сценарий: Фильтр по наличию фото
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С фото    | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении отображается загруженная фотография

@bugs
@bug34609
@empty_results
  Сценарий: Фильтр по наличию видео
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С видео   | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления отображается видео

  Сценарий: Фильтр по источнику
    Когда я делаю поиск по следующим параметрам:
      | parameter | value       |
      | Источник  | Cайт IRR.RU |
      И на странице поиска загружен список результатов для недвижимости

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

@bugs
@bug34183
  Сценарий: Фильтр по ключевому слову в заголовке объявления
    Когда я указываю искать только в заголовках объявления
        И я ищу "этаж"
        И на странице поиска загружен список результатов для недвижимости

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "этаж"

  Сценарий: Фильтр по ключевому слову
    Когда я ищу "этаж"
        И на странице поиска загружен список результатов для недвижимости

       То на странице показано >= 1 объявлений
        И в первом объявлении содержится "этаж"

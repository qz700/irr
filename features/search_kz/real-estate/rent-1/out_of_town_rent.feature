# language:ru
# encoding: utf-8
Функционал: Недвижимость -> Дома, дачи. Аренда

  Контекст:
    Когда открыта страница для региона "Казахстан"
        И на главной странице я перехожу в категорию "Недвижимость -> Дома, дачи. Аренда"

@all_results
  Сценарий: Все результаты
   Когда на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений

  Сценарий: Фильтр по цене
    Когда я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
        | Цена           | 100  | 100000 |       |
        | Валюта         |      |        | тенге  |
        | Срок сдачи     |      |        | сутки |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении валюта равна "тенге"
       И в каждом объявлении срок сдачи равен "сутки"

  Сценарий: Фильтр по валюте
    Когда я делаю поиск по следующим параметрам:
      | parameter      | min  | max    | value |
      | Цена           | 100  | 100000 |       |
      | Валюта         |      |        | $     |
      | Срок сдачи     |      |        | сутки |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении валюта равна "$"
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении срок сдачи равен "сутки"

# Не показывается на странице результатов
# @customfield
#  Сценарий: Фильтр по году постройки/сдачи
#    Когда я делаю поиск по следующим параметрам:
#      | parameter           | min  | max  |
#      | Год постройки/сдачи | 1933 | 2012 |
#      И на странице поиска загружен список результатов для недвижимости

#      То на странице показано >= 1 объявлений
#       И в деталях первого объявления "Год постройки/сдачи" >= "1933"
#       И в деталях первого объявления "Год постройки/сдачи" <= "2012"

@customfield
  Сценарий: Фильтр по площади участка
    Когда я делаю поиск по следующим параметрам:
      | parameter       | min | max |
      | Площадь участка | 10  | 200 |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Площадь участка" >= "10"
       И в деталях первого объявления "Площадь участка" <= "200"

@customfield
  Сценарий: Фильтр по площади строения
    Когда я делаю поиск по следующим параметрам:
      | parameter        | min | max |
      | Площадь строения | 10  | 200 |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Площадь строения" >= "10"
       И в деталях первого объявления "Площадь строения" <= "200"

@customfield
  Сценарий: Фильтр по количеству комнат
    Когда я делаю поиск по следующим параметрам:
      | parameter         | min | max |
      | Количество комнат | 1   | 10  |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Количество комнат" >= "1"
       И в деталях первого объявления "Количество комнат" <= "10"

@customfield
  Сценарий: Фильтр по количеству спален
    Когда я делаю поиск по следующим параметрам:
      | parameter         | min | max |
      | Количество спален | 1   | 10  |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Количество спален" >= "1"
       И в деталях первого объявления "Количество спален" <= "10"

@customfield
  Сценарий: Фильтр по материалу стен
    Когда я делаю поиск по следующим параметрам:
      | parameter     | value      |
      | Материал стен | деревянный |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Материал стен" равно "деревянный"

@customfield
  Сценарий: Фильтр по отапливаемости
    Когда я делаю поиск по следующим параметрам:
      | parameter    | value |
      | Отапливаемый | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Отапливаемый"

@customfield
  Сценарий: Фильтр по наличию гаража
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Гараж     | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Гараж"

@customfield
  Сценарий: Фильтр по телефону
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Телефон   | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Телефон"

  Сценарий: Фильтр по наличию интернета
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Интернет  | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Интернет"

@customfield
  Сценарий: Фильтр по наличию мебели
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Мебель    | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Мебель"

@customfield
  Сценарий: Фильтр по наличию бытовой техники
    Когда я делаю поиск по следующим параметрам:
      | parameter       | value |
      | Бытовая техника | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Бытовая техника"

@customfield
  Сценарий: Фильтр по строению
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Строение  | дача  |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Строение" равно "дача"

  Сценарий: Фильтр по наличию фото
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С фото    | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении отображается загруженная фотография

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
      | Источник  | Cайт IRR.KZ |
      И на странице поиска загружен список результатов для недвижимости

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

@bugs
@bug34183
  Сценарий: Фильтр по ключевому слову в заголовке объявления
    Когда я указываю искать только в заголовках объявления
        И я ищу "этаж"
        И на странице поиска загружен список результатов для недвижимости

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "этаж"

@empty_results
  Сценарий: Фильтр по ключевому слову
    Когда я ищу "этаж"
        И на странице поиска загружен список результатов для недвижимости

       То на странице показано >= 1 объявлений
        И в первом объявлении содержится "этаж"

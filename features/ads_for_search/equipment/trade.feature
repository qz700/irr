# language:ru
# encoding: utf-8
Функционал: Оборудование -> Торговое и холодильное оборудование

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        

  Сценарий: Объявление 1
   Когда я подаю объявление в категорию "Оборудование -> Торговое и холодильное оборудование -> Другое торговое и холодильное оборудование"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value              |
          | Цена             | 15000              |
          | Валюта            | руб.               |
          | Текст             | Продаю другое торговое и холодильное оборудование |
          | Тип предложения   | продам             |
          | Заголовок         | Продаю холодильник |
          | Тип оборудования  | весы               |
          | Состояние         | новый              |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю холодильник" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "15000" в рублях

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле             | значение |
          | Тип предложения  | продам   |
          | Тип оборудования | весы     |
          | Состояние        | новый    |

  Сценарий: Объявление 2
   Когда я подаю объявление в категорию "Оборудование -> Торговое и холодильное оборудование -> Торговые сооружения"
       * я ввожу следующие данные на шаге 2:
          | parameter       | value             |
          | Цена           | 1000              |
          | Валюта          | $                 |
          | Текст           | Продаю торговые сооружения |
          | Тип предложения | продам            |
          | Заголовок       | Продаю сооружение |
          | Состояние       | новый             |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю сооружение" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле            | значение |
          | Тип предложения | продам   |
          | Состояние       | новый    |

  Сценарий: Объявление 3
   Когда я подаю объявление в категорию "Оборудование -> Торговое и холодильное оборудование -> Детекторы валют"
       * я ввожу следующие данные на шаге 2:
          | parameter       | value                   |
          | Марка           | Dors                    |
          | Модель          | A01                     |
          | Цена           | 1000                    |
          | Валюта          | $                       |
          | Подсветка       | x                       |
          | Потребляемая мощность | 1000              |
          | Длина           | 1000                    |
          | Ширина          | 1000                    |
          | Высота          | 1000                    |
          | Вес             | 3                       |
          | Текст           | Продаю детектор валют   |
          | Тип предложения | продам                  |
          | Заголовок       | Продаю дорогой детектор |
          | Вид             | детекторы валют         |
          | Тип детекции    | ИК                      |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю дорогой детектор" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле                      | значение        |
          | Марка                     | Dors            |
          | Модель                    | A01             |
          | Потребляемая мощность, Вт | 1000            |
          | Длина, мм                 | 1000            |
          | Ширина, мм                | 1000            |
          | Высота, мм                | 1000            |
          | Вес, кг                   | 3               |
          | Тип предложения           | продам          |
          | Вид                       | детекторы валют |
          | Тип детекции              | ИК              |
        * на вкладке "Все" присутствует "Подсветка"

  Сценарий: Объявление 4
   Когда я подаю объявление в категорию "Оборудование -> Торговое и холодильное оборудование -> Торговые весы"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value                |
          | Марка              | DIGI                 |
          | Модель             | A01                  |
          | Дискретность       | 12                   |
          | Назначение         | автомобильные        |
          | Точность           | 12                   |
          | Ширина             | 12                   |
          | Ширина платформы   | 12                   |
          | Автоматическая коррекция нуля | x         |
          | Глубина, мм:       | 12                   |
          | Высота платформы, мм: | 12                |
          | Диапазон рабочих температур | 100         |
          | Высота, мм:        | 12                   |
          | Питание            | 12                   |
          | Вес                | 12                   |
          | Цена              | 1000                 |
          | Валюта             | $                    |
          | Текст              | Продаю торговые весы |
          | Тип предложения    | продам               |
          | Заголовок          | Продаю дорогие весы  |
          | Предел взвешивания | 5                    |
          | Вид                | электронные          |
          | Состояние          | новый                |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю дорогие весы" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле                        | значение      |
          | Марка                       | DIGI          |
          | Модель                      | A01           |
          | Дискретность                | 12            |
          | Назначение                  | автомобильные |
          | Точность                    | 12            |
          | Ширина                      | 12            |
          | Ширина платформы            | 12            |
          | Глубина, мм:                | 12            |
          | Высота платформы, мм        | 12            |
          | Диапазон рабочих температур | 100           |
          | Высота, мм:                 | 12            |
          | Питание                     | 12            |
          | Вес                         | 12            |
          | Тип предложения             | продам        |
          | Предел взвешивания          | 5             |
          | Вид                         | электронные   |
          | Состояние                   | новый         |
        * на вкладке "Все" присутствует "Автоматическая коррекция нуля"

  Сценарий: Объявление 5
   Когда я подаю объявление в категорию "Оборудование -> Торговое и холодильное оборудование -> Штрих-код сканнеры"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value                |
          | Марка              | Datalogic            |
          | Модель             | A01                  |
          | Скорость сканирования, скан/сек | 3       |
          | Цена              | 1000                 |
          | Валюта             | $                    |
          | Максимальная ширина штрих-кода, мм: | 50  |
          | Дальность сканирования, см: | 50          |
          | Возможность сканирования по кнопке | да   |
          | Подставка          | x   |
          | Минимальная ширина линии, мм:       | 3   |
          | Текст              | Продаю сканер штрихкодов |
          | Тип предложения    | продам               |
          | Заголовок          | Продаю сканер штрихкодов |
          | Вид                | беспроводные         |
          | Состояние          | новый                |
          | Тип сканера        | лазерный             |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю сканер штрихкодов" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле                               | значение     |
          | Марка                              | Datalogic    |
          | Модель                             | A01          |
          | Скорость сканирования, скан/сек    | 3            |
          | Цена                              | 1000         |
          | Валюта                             | $            |
          | Максимальная ширина штрих-кода, мм | 50           |
          | Дальность сканирования, см         | 50           |
          | Возможность сканирования по кнопке | да           |
          | Минимальная ширина линии, мм       | 3            |
          | Тип предложения                    | продам       |
          | Вид                                | беспроводные |
          | Состояние                          | новый        |
          | Тип сканера                        | лазерный     |
        * на вкладке "Все" присутствует "Подставка"

  Сценарий: Объявление 6
   Когда я подаю объявление в категорию "Оборудование -> Торговое и холодильное оборудование -> Оборудование для упаковки пищевых продуктов"
       * я ввожу следующие данные на шаге 2:
          | parameter       | value                    |
          | Вес, кг         | 12                       |
          | Цена           | 1000                     |
          | Валюта          | $                        |
          | Текст           | Продаю упаковочное оборудование |
          | Тип предложения | продам                   |
          | Заголовок       | Продаю оборудование      |
          | Состояние       | новый                    |
          | Вид             | упаковочное оборудование |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю оборудование" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле            | значение                 |
          | Вес, кг         | 12                       |
          | Тип предложения | продам                   |
          | Состояние       | новый                    |
          | Вид             | упаковочное оборудование |

  Сценарий: Объявление 7
   Когда я подаю объявление в категорию "Оборудование -> Торговое и холодильное оборудование -> Cчетчики купюр"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value                |
          | Марка              | DORS                 |
          | Модель             | A01                  |
          | Максимальная скорость счета, банкнот/минута | 5 |
          | Вместимость загрузчика, банкнот: | 100    |
          | Размер фасовки, банкнот: | 100            |
          | Вместимость накопителя, банкнот: | 100    |
          | Напряжение питания, Вт/Гц: | 220          |
          | Длина, мм:         | 100                  |
          | Ширина,мм:         | 100                  |
          | Высота, мм:        | 100                  |
          | Глубина, мм:       | 100                  |
          | Вес, кг:           | 5                    |
          | Цена              | 1000                 |
          | Валюта             | $                    |
          | Текст              | Продаю счетчик купюр |
          | Тип предложения    | продам               |
          | Заголовок          | Продаю счетчик купюр |
          | Вид                | счетчики купюр       |
          | Состояние          | новый                |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю счетчик купюр" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле                             | значение       |
          | Марка                            | DORS           |
          | Модель                           | A01            |
          | Длина, мм                        | 100            |
          | Ширина,мм                        | 100            |
          | Высота, мм                       | 100            |
          | Глубина, мм                      | 100            |
          | Вес, кг                          | 5              |
          | Тип предложения                  | продам         |
          | Вид                              | счетчики купюр |
          | Состояние                        | новый          |
          | Вместимость загрузчика, банкнот  | 100            |
          | Размер фасовки, банкнот          | 100            |
          | Вместимость накопителя, банкнот  | 100            |
          | Напряжение питания, Вт/Гц        | 220            |
          | Максимальная скорость счета, банкнот/минута | 5   |

  Сценарий: Объявление 8
   Когда я подаю объявление в категорию "Оборудование -> Торговое и холодильное оборудование -> Платёжные терминалы"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value                |
          | Марка              | Viplat               |
          | Модель             | A01                  |
          | Длина, мм:         | 500                  |
          | Ширина,мм:         | 500                  |
          | Высота, мм:        | 500                  |
          | Вес, кг:           | 50                   |
          | Цена              | 1000                 |
          | Валюта             | $                    |
          | Текст              | Продаю платёжный терминал |
          | Тип предложения    | продам               |
          | Заголовок          | Продаю платёжный терминал |
          | Вид                | информационные       |
          | Размещение         | уличные              |
          | Встраиваемый       | да                   |
          | Навесной           | да                   |
          | Состояние          | новый                |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю платёжный терминал" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле            | значение       |
          | Марка           | Viplat         |
          | Модель          | A01            |
          | Длина, мм       | 500            |
          | Ширина,мм       | 500            |
          | Высота, мм      | 500            |
          | Вес, кг         | 50             |
          | Тип предложения | продам         |
          | Вид             | информационные |
          | Размещение      | уличные        |
          | Встраиваемый    | да             |
          | Навесной        | да             |
          | Состояние       | новый          |

  Сценарий: Объявление 9
   Когда я подаю объявление в категорию "Оборудование -> Торговое и холодильное оборудование -> Торговые автоматы"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Марка              | Saeco                     |
          | Модель             | A01                       |
          | Ширина,мм:         | 1000                      |
          | Высота, мм:        | 1000                      |
          | Глубина, мм:       | 1000                      |
          | Вес, кг:           | 10                        |
          | Цена              | 1000                      |
          | Валюта             | $                         |
          | Текст              | Продаю автомат для продажи горячих напитков |
          | Тип предложения    | продам                    |
          | Заголовок          | Продаю торговый автомат   |
          | Состояние          | новый                     |
          | Вид                | для продажи горячих напитков |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю торговый автомат" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле            | значение                     |
          | Марка           | Saeco                        |
          | Модель          | A01                          |
          | Ширина,мм       | 1000                         |
          | Высота, мм      | 1000                         |
          | Глубина, мм     | 1000                         |
          | Вес, кг         | 10                           |
          | Тип предложения | продам                       |
          | Состояние       | новый                        |
          | Вид             | для продажи горячих напитков |

  Сценарий: Объявление 10
   Когда я подаю объявление в категорию "Оборудование -> Торговое и холодильное оборудование -> Холодильное оборудование"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Марка              | Bolarus                   |
          | Модель             | A01                       |
          | Потребление электроэнергии, кВтч/ сут: | 1000  |
          | Внутренний объем, л: | 1000                    |
          | Минимальная температура, °С: | 2               |
          | Максимальная температура, °С: | 2              |
          | Мощность замораживания, кг/сут: | 7            |
          | Хладопроизводительность, Вт: | 700             |
          | Минимальная температура окружающей среды, °С: | 7 |
          | Максимальная температура окружающей среды, °С: | 70 |
          | Количество компрессоров: | 3                   |
          | Емкость винного шкафа, бутылок: | 30           |
          | Высота, см:        | 30                        |
          | Ширина,см:         | 300                       |
          | Глубина, см:       | 100                       |
          | Вес, кг:           | 100                       |
          | Цена              | 1000                      |
          | Валюта             | $                         |
          | Тип предложения    | продам                    |
          | Заголовок          | Продаю холодильную камеру |
          | Состояние          | новый                     |
          | Вид                | холодильные камеры        |
          | Текст              | Продаю холодильную камеру |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю холодильную камеру" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле                           | значение            |
          | Марка                          | Bolarus             |
          | Модель                         | A01                 |
          | Внутренний объем, л            | 1000                |
          | Минимальная температура, °С    | 2                   |
          | Максимальная температура, °С   | 2                   |
          | Мощность замораживания, кг/сут | 7                   |
          | Хладопроизводительность, Вт    | 700                 |
          | Количество компрессоров        | 3                   |
          | Емкость винного шкафа, бутылок | 30                  |
          | Высота, см                     | 30                  |
          | Ширина,см                      | 300                 |
          | Глубина, см                    | 100                 |
          | Вес, кг                        | 100                 |
          | Тип предложения                | продам              |
          | Состояние                      | новый               |
          | Вид                            | холодильные камеры  |
          | Потребление электроэнергии, кВтч/ сут         | 1000 |
          | Минимальная температура окружающей среды, °С  | 7    |
          | Максимальная температура окружающей среды, °С | 70   |

  Сценарий: Объявление 11
   Когда я подаю объявление в категорию "Оборудование -> Торговое и холодильное оборудование -> Кассовые аппараты"
       * я ввожу следующие данные на шаге 2:
          | parameter       | value                    |
          | Марка           | Promag                   |
          | Модель          | XYZ                      |
          | Количество кассиров: | 3                   |
          | Количество отделов:  | 3                   |
          | Потребляемая мощность, Вт: | 300           |
          | Длина без денежного ящика, мм: | 300       |
          | Количество сменных записей: | 20           |
          | Высота без денежного ящика, мм: | 20       |
          | Максимальная разрядность вводимой суммы | 20 |
          | Скорость печати, строк/сек: | 20           |
          | Ширина с денежным ящиком, мм: | 300        |
          | Длина с денежным ящиком, мм:  | 300        |
          | Ширина бумажной ленты, мм:  | 50           |
          | Ширина без денежного ящика, мм:  | 500     |
          | Высота с денежным ящиком, мм:  | 500       |
          | Диапазон рабочих температур, °С: | 100     |
          | Цена           | 1000                     |
          | Валюта          | $                        |
          | Текст           | Продаю кассовые аппараты |
          | Тип предложения | продам                   |
          | Заголовок       | Продаю кассовые аппараты |
          | Состояние       | новый                    |
          | Вид             | кассовые аппараты        |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю кассовые аппараты" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле            | значение     |
          | Марка           | Promag                   |
          | Модель          | XYZ                      |
          | Количество кассиров  | 3                   |
          | Количество отделов   | 3                   |
          | Потребляемая мощность, Вт  | 300           |
          | Длина без денежного ящика, мм  | 300       |
          | Количество сменных записей  | 20           |
          | Высота без денежного ящика, мм  | 20       |
          | Скорость печати, строк/сек  | 20           |
          | Ширина с денежным ящиком, мм  | 300        |
          | Длина с денежным ящиком, мм   | 300        |
          | Ширина бумажной ленты, мм     | 50         |
          | Ширина без денежного ящика, мм   | 500     |
          | Высота с денежным ящиком, мм   | 500       |
          | Диапазон рабочих температур, °С  | 100     |
          | Тип предложения | продам                   |
          | Состояние       | новый                    |
          | Вид             | кассовые аппараты        |
          | Максимальная разрядность вводимой суммы | 20 |

  Сценарий: Объявление 12
   Когда я подаю объявление в категорию "Оборудование -> Торговое и холодильное оборудование -> Принтеры чеков"
       * я ввожу следующие данные на шаге 2:
          | parameter                | value                  |
          | Марка                    | Epson                  |
          | Модель                   | XYZ                    |
          | Разрешение, dpi          | 100                    |
          | Скорость печати, мм/сек: | 100                    |
          | Тип печати               | термопечать            |
          | Буфер данных, кБ:        | 20                     |
          | Длина, мм:               | 20                     |
          | Ширина бумаги, мм:       | 20                     |
          | Ширина,мм:               | 20                     |
          | Длина печати, мм:        | 20                     |
          | Высота, мм:              | 20                     |
          | Ширина печати, мм:       | 20                     |
          | Вес, кг:                 | 2                      |
          | Автоотрезчик             | x                      |
          | Толщина этикетки, мм:    | 10                     |
          | Цена                    | 1000                   |
          | Валюта                   | $                      |
          | Текст                    | Продаю принтер чеков   |
          | Тип предложения          | продам                 |
          | Заголовок                | Продаю чековый принтер |
          | Состояние                | новый                  |
          | Назначение               | для печати чеков       |
          | Диапазон рабочих температур, °С: | 100            |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю чековый принтер" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле                            | значение         |
          | Марка                           | Epson            |
          | Модель                          | XYZ              |
          | Разрешение, dpi                 | 100              |
          | Скорость печати, мм/сек         | 100              |
          | Тип печати                      | термопечать      |
          | Буфер данных, кБ                | 20               |
          | Длина, мм                       | 20               |
          | Ширина бумаги, мм               | 20               |
          | Ширина,мм                       | 20               |
          | Длина печати, мм                | 20               |
          | Высота, мм                      | 20               |
          | Ширина печати, мм               | 20               |
          | Вес, кг                         | 2                |
          | Толщина этикетки, мм            | 10               |
          | Тип предложения                 | продам           |
          | Состояние                       | новый            |
          | Назначение                      | для печати чеков |
          | Диапазон рабочих температур, °С | 100              |
        * на вкладке "Все" присутствует "Автоотрезчик"

  Сценарий: Объявление 13
   Когда я подаю объявление в категорию "Оборудование -> Торговое и холодильное оборудование -> Витрины, стеллажи"
       * я ввожу следующие данные на шаге 2:
          | parameter       | value          |
          | Цена           | 1000           |
          | Валюта          | $              |
          | Текст           | Продаю витрину |
          | Тип предложения | продам         |
          | Заголовок       | Продаю витрину |
          | Состояние       | новый          |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю витрину" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле            | значение |
          | Тип предложения | продам   |
          | Состояние       | новый    |

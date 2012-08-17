# language:ru
# encoding: utf-8
Функционал: Оборудование -> Станки, производственное и обрабатывающее оборудование

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        

  Сценарий: Объявление 1
   Когда я подаю объявление в категорию "Оборудование -> Станки, производственное и обрабатывающее оборудование -> Станки и машины"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value                         |
          | Цена             | 15000                         |
          | Валюта            | руб.                          |
          | Текст             | Продаю деревообрабатывающий станок |
          | Тип предложения   | продам                        |
          | Заголовок         | Продаю станок                 |
          | Состояние         | новый                         |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю станок" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "15000" в рублях

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле            | значение |
          | Тип предложения | продам   |
          | Состояние       | новый    |

  Сценарий: Объявление 2
   Когда я подаю объявление в категорию "Оборудование -> Станки, производственное и обрабатывающее оборудование -> Оборудование по утилизации и переработке"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value                           |
          | Цена             | 15000                           |
          | Валюта            | руб.                            |
          | Текст             | Продаю перерабатывающий заводик |
          | Тип предложения   | продам                          |
          | Заголовок         | Продаю перерабатывающий заводик |
          | Вид отходов       | биологические                   |
          | Состояние         | новый                           |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю перерабатывающий заводик" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "15000" в рублях

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле            | значение      |
          | Тип предложения | продам        |
          | Состояние       | новый         |
          | Вид отходов     | биологические |

  Сценарий: Объявление 3
   Когда я подаю объявление в категорию "Оборудование -> Станки, производственное и обрабатывающее оборудование -> Оборудование для полиграфии"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value                         |
          | Цена             | 15000                         |
          | Валюта            | руб.                          |
          | Текст             | Продаю полиграфическую машину |
          | Тип предложения   | продам                        |
          | Заголовок         | Продаю полиграфическую машину |
          | Вид оборудования  | печатное                      |
          | Состояние         | новый                         |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю полиграфическую машину" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "15000" в рублях

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле             | значение |
          | Тип предложения  | продам   |
          | Состояние        | новый    |
          | Вид оборудования | печатное |

  Сценарий: Объявление 4
   Когда я подаю объявление в категорию "Оборудование -> Станки, производственное и обрабатывающее оборудование -> Оборудование для промышленной упаковки"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value                             |
          | Цена             | 1000                              |
          | Валюта            | $                                 |
          | Текст             | Продаю машину для печати упаковок |
          | Тип предложения   | продам                            |
          | Заголовок         | Продаю машину для печати упаковок |
          | Вид               | для пиломатериалов                |
          | Состояние         | новый                             |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю машину для печати упаковок" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле            | значение           |
          | Тип предложения | продам             |
          | Состояние       | новый              |
          | Вид             | для пиломатериалов |

  Сценарий: Объявление 5
   Когда я подаю объявление в категорию "Оборудование -> Станки, производственное и обрабатывающее оборудование -> Металлообрабатывающие станки"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value                               |
          | Цена             | 1000                                |
          | Валюта            | $                                   |
          | Текст             | Продаю металлообрабатывающий станок |
          | Тип предложения   | продам                              |
          | Заголовок         | Продаю металлообрабатывающий станок |
          | Вид               | кромкорезы                          |
          | Состояние         | новый                               |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю металлообрабатывающ ий станок" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле            | значение   |
          | Тип предложения | продам     |
          | Состояние       | новый      |
          | Вид             | кромкорезы |


  Сценарий: Объявление 6
   Когда я подаю объявление в категорию "Оборудование -> Станки, производственное и обрабатывающее оборудование -> Оборудование для промышленной пищевой обработки"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value                              |
          | Цена             | 1000                               |
          | Валюта            | $                                  |
          | Текст             | Продаю аппарат для мясопереработки |
          | Тип предложения   | продам                             |
          | Заголовок         | Продаю аппарат для мясопереработки |
          | Вид               | мясопереработка                    |
          | Состояние         | новый                              |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю аппарат для мясопереработки" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле            | значение        |
          | Тип предложения | продам          |
          | Состояние       | новый           |
          | Вид             | мясопереработка |

  Сценарий: Объявление 7
   Когда я подаю объявление в категорию "Оборудование -> Станки, производственное и обрабатывающее оборудование -> Деревообрабатывающие станки"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value                   |
          | Цена             | 1000                    |
          | Валюта            | $                       |
          | Текст             | Продаю мебельный станок |
          | Тип предложения   | продам                  |
          | Заголовок         | Продаю мебельный станок |
          | Вид               | мебельное               |
          | Состояние         | новый                   |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю мебельный станок" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле            | значение  |
          | Тип предложения | продам    |
          | Состояние       | новый     |
          | Вид             | мебельное |

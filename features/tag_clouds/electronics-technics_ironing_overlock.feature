# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Гладильное и швейное оборудование -> Оверлоки - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Электроника и техника -> Гладильное и швейное оборудование -> Оверлоки
      Когда на главной странице я перехожу в категорию "Электроника и техника -> Гладильное и швейное оборудование -> Оверлоки"
        * на странице категории присутствует секция "Оверлоки"
        * я заполняю ссылки в секции "Оверлоки" с параметрами:
        | название | значение                                                  |
        | feature  | Электроника и техника -> Гладильное и швейное оборудование -> Оверлоки |
        | category | Электроника и техника -> Гладильное и швейное оборудование -> Оверлоки |
        | section  | Оверлоки                                             |
        | field    | Марка                |

# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Техника для авто -> Автомагнитолы (Тип магнитолы) - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Электроника и техника -> Техника для авто -> Автомагнитолы
      Когда на главной странице я перехожу в категорию "Электроника и техника -> Техника для авто -> Автомагнитолы"
        * на странице категории присутствует секция "Тип магнитолы"
        * я заполняю ссылки в секции "Тип магнитолы" с параметрами:
        | название | значение                                                  |
        | feature  | Электроника и техника -> Техника для авто -> Автомагнитолы (Тип магнитолы) |
        | category | Электроника и техника -> Техника для авто -> Автомагнитолы |
        | section  | Тип магнитолы                                             |
        | field    | Тип магнитолы                |
# language:ru
# encoding: utf-8
Функционал: Компьютерная техника -> Принтеры -> Многофункциональные устройства - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Компьютерная техника -> Принтеры -> Многофункциональные устройства
      Когда на главной странице я перехожу в категорию "Компьютерная техника -> Принтеры -> Многофункциональные устройства"
        * на странице категории присутствует секция "МФУ"
        * я заполняю ссылки в секции "МФУ" с параметрами:
        | название | значение                                |
        | feature  | Компьютерная техника -> Принтеры -> Многофункциональные устройства |
        | category | Компьютерная техника -> Принтеры -> Многофункциональные устройства |
        | section  | МФУ                                     |
        | field    | Марка                                   |

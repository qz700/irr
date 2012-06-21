# language: ru
# encoding: utf-8

Функционал: Логин на странице портала

  Контекст:
    * открыта страница для региона "Россия"

  Сценарий: Логин обычного пользователя
    Когда я вхожу под пользователем с ролью "Обычный пользователь"
        * открыта страница автомобильного портала для региона "Москва"
       То на главной странице отображены ссылки для пользователя

    Когда открыта страница портала недвижимости для региона "Москва"
       То на главной странице отображены ссылки для пользователя

  Сценарий: Логин интернет-партнера
     Когда я вхожу под пользователем с ролью "Интернет-партнер"
         * открыта страница автомобильного портала для региона "Москва"
        То на главной странице отображены ссылки для пользователя

    Когда открыта страница портала недвижимости для региона "Москва"
       То на главной странице отображены ссылки для пользователя
# language:ru
# encoding: utf-8

Функционал: Индексация

Сценарий: Ожидание индексации
    Когда открыта страница для региона "Россия"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я запоминаю ID последнего объявления
        * я жду пока объявление с таким ID проиндексируется за 30 минут

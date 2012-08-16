# language:ru
# encoding: utf-8
Функционал: Спорт, туризм, отдых -> Снаряжение для рыбалки, охоты, активного отдыха -> Рыбалка - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Спорт, туризм, отдых -> Снаряжение для рыбалки, охоты, активного отдыха -> Рыбалка"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по лодки ПВХ
    Когда я выбираю ссылку "Лодки ПВХ" в секции "Быстрый поиск"
       То ссылка содержит "boats"
        * в поле "Тип снаряжения" выбрано значение "лодки ПВХ"

  Сценарий: Фильтр по рыболовным снастям
    Когда я выбираю ссылку "Рыболовные снасти" в секции "Быстрый поиск"
       То ссылка содержит "tackle"
        * в поле "Тип снаряжения" выбрано значение "рыболовные снасти"

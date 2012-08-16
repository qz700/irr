# language:ru
# encoding: utf-8
Функционал: Спорт, туризм, отдых -> Снаряжение для рыбалки, охоты, активного отдыха -> Рыбалка - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Спорт, туризм, отдых -> Снаряжение для рыбалки, охоты, активного отдыха -> Рыбалка"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по лодки ПВХ
    Когда я выбираю ссылку "Лодки ПВХ" в секции "Быстрый поиск"
       То ссылка содержит "boards"
        * значение в поле "Тип снаряжения" равно "лодки ПВХ"

  Сценарий: Фильтр по рыболовным снастям
    Когда я выбираю ссылку "Рыболовные снасти" в секции "Быстрый поиск"
       То ссылка содержит "tackle"
        * значение в поле "Тип снаряжения" равно "рыболовные снасти"

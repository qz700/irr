# language:ru
# encoding: utf-8
Функционал: Музыка, искусство -> Музыкальные инструменты - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Музыка, искусство -> Музыкальные инструменты"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по гитарам
    Когда я выбираю ссылку "Гитары" в секции "Быстрый поиск"
       То ссылка содержит "guitar"
        * значение в поле "Ключевые слова" равно "гитара"

  Сценарий: Фильтр по пианино
    Когда я выбираю ссылку "Пианино" в секции "Быстрый поиск"
       То ссылка содержит "piano"
        * значение в поле "Ключевые слова" равно "пианино"

  Сценарий: Фильтр по синтезаторам
    Когда я выбираю ссылку "Синтезаторы" в секции "Быстрый поиск"
       То ссылка содержит "synthesizer"
        * значение в поле "Ключевые слова" равно "синтезатор"

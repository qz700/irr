# language:ru
# encoding: utf-8
Функционал: Одежда, обувь, аксессуары -> Женская обувь - seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Одежда, обувь, аксессуары -> Женская обувь"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по босоножкам
    Когда я выбираю ссылку "Босоножки" в секции "Быстрый поиск"
       То ссылка содержит "toeless-shoes"
        * значение в поле "Ключевые слова" равно "босоножки"

  Сценарий: Фильтр по ботильоны
    Когда я выбираю ссылку "Ботильоны" в секции "Быстрый поиск"
       То ссылка содержит "botilions"
        * значение в поле "Ключевые слова" равно "ботильоны"

  Сценарий: Фильтр по ботинкам
    Когда я выбираю ссылку "Ботинки" в секции "Быстрый поиск"
       То ссылка содержит "boots"
        * значение в поле "Ключевые слова" равно "ботинки"

  Сценарий: Фильтр по кроссовкам
    Когда я выбираю ссылку "Кроссовки" в секции "Быстрый поиск"
       То ссылка содержит "jogging-shoes"
        * значение в поле "Ключевые слова" равно "кроссовки"

  Сценарий: Фильтр по сапогам
    Когда я выбираю ссылку "Сапоги" в секции "Быстрый поиск"
       То ссылка содержит "high-boots"
        * значение в поле "Ключевые слова" равно "сапоги"

  Сценарий: Фильтр по туфлям
    Когда я выбираю ссылку "Туфли" в секции "Быстрый поиск"
       То ссылка содержит "shoe"
        * значение в поле "Ключевые слова" равно "туфли"

  Сценарий: Фильтр по уггам
    Когда я выбираю ссылку "Угги" в секции "Быстрый поиск"
       То ссылка содержит "uggi"
        * в поле "Вид обуви" выбрано значение "угги"

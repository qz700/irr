# language:ru
# encoding: utf-8
@bugs @bug35582
Функционал: Авто и мото -> Легковые автомобили -> Новые автомобили - seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Авто и мото -> Легковые автомобили -> Новые автомобили"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по новым автомобилям до 300 тыс. руб
    Когда я выбираю ссылку "Новые автомобили до 300000 рублей" в секции "Быстрый поиск"
       То ссылка содержит "300000"
        * значение в поле "Цена" равно в границах "0 - 300000"

  Сценарий: Фильтр по новым автомобилям до 350 тыс. руб
    Когда я выбираю ссылку "Новые автомобили до 350000 рублей" в секции "Быстрый поиск"
       То ссылка содержит "350000"
        * значение в поле "Цена" равно в границах "0 - 350000"

  Сценарий: Фильтр по новым автомобилям до 400 тыс. руб
    Когда я выбираю ссылку "До 400000" в секции "Быстрый поиск"
       То ссылка содержит "400000"
        * значение в поле "Цена" равно в границах "0 - 400000"

  Сценарий: Фильтр по новым автомобилям до 450 тыс. руб
    Когда я выбираю ссылку "До 450000" в секции "Быстрый поиск"
       То ссылка содержит "450000"
        * значение в поле "Цена" равно в границах "0 - 450000"

  Сценарий: Фильтр по новым автомобилям до 500 тыс. руб
    Когда я выбираю ссылку "До 500000" в секции "Быстрый поиск"
       То ссылка содержит "500000"
        * значение в поле "Цена" равно в границах "0 - 500000"

  Сценарий: Фильтр по новым автомобилям до 600 тыс. руб
    Когда я выбираю ссылку "До 600000" в секции "Быстрый поиск"
       То ссылка содержит "600000"
        * значение в поле "Цена" равно в границах "0 - 600000"

  Сценарий: Фильтр по новым автомобилям до 700 тыс. руб
    Когда я выбираю ссылку "До 700000" в секции "Быстрый поиск"
       То ссылка содержит "700000"
        * значение в поле "Цена" равно в границах "0 - 700000"

# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Легковые автомобили -> Автомобили с пробегом - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        И на главной странице я перехожу в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"

  Сценарий: Фильтр по седанам до 3-х лет
    Когда я выбираю ссылку "Седаны до 3-х лет" в секции "Быстрый поиск"
       То ссылка содержит "sedan-do-3-let"
        * в поле "Тип кузова" выбраны следующие значения:
        | value |
        | седан |
        * значение в поле "Год выпуска" равно "2008 - "

  Сценарий: Фильтр по седанам от 4 до 6 лет
    Когда я выбираю ссылку "Седаны от 4 до 6 лет" в секции "Быстрый поиск"
       То ссылка содержит "sedan-4-6-let"
        * в поле "Тип кузова" выбраны следующие значения:
        | value |
        | седан |
        * значение в поле "Год выпуска" равно "2005 - 2007"

  Сценарий: Фильтр по хэтчбекам до 3-х лет
    Когда я выбираю ссылку "Хэтчбеки до 3-х лет" в секции "Быстрый поиск"
       То ссылка содержит "hatchback-do-3-let"
        * в поле "Тип кузова" выбраны следующие значения:
        | value   |
        | хэтчбек |
        * значение в поле "Год выпуска" равно "2008"

  Сценарий: Фильтр по хэтчбекам от 4 до 6 лет
    Когда я выбираю ссылку "Хэтчбеки от 4 до 6 лет" в секции "Быстрый поиск"
       То ссылка содержит "hatchback-4-6-let"
        * в поле "Тип кузова" выбраны следующие значения:
        | value   |
        | хэтчбек |
        * значение в поле "Год выпуска" равно "2005 - 2007"

  Сценарий: Фильтр по авто с дизельным двигателем
    Когда я выбираю ссылку "Автомобили с дизельным двигателем" в секции "Быстрый поиск"
       То ссылка содержит "disel"
        * в поле "Тип двигателя" выбраны следующие значения:
        | value       |
        | дизель      |
        | турбодизель |

  Сценарий: Фильтр по праворульным авто
    Когда я выбираю ссылку "Праворульные автомобили" в секции "Быстрый поиск"
       То ссылка содержит "right-hand"

  Сценарий: Фильтр по пикапам и минивэнам
    Когда я выбираю ссылку "Пикапы и минивэны" в секции "Быстрый поиск"
       То ссылка содержит "wagon-minivan"
        * в поле "Тип кузова" выбраны следующие значения:
        | value     |
        | минивэн   |
        | универсал |
        | пикап     |

  Сценарий: Фильтр по полноприводным авто
    Когда я выбираю ссылку "Полноприводные автомобили" в секции "Быстрый поиск"
       То ссылка содержит "all-wheel-drive"
        * в поле "Тип привода" выбраны следующие значения:
        | value               |
        | постоянный полный   |
        | подключаемый полный |

  Сценарий: Фильтр по легковым авто с АКПП до 3-х лет
    Когда я выбираю ссылку "Легковые автомобили с АКПП до 3-х лет" в секции "Быстрый поиск"
       То ссылка содержит "akpp-do-3-let"
        * в поле "Тип кузова" выбраны следующие значения:
        | value      |
        | седан      |
        | хэтчбек    |
        * значение в поле "Год выпуска" равно "2008 - "
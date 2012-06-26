# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Автозапчасти и принадлежности -> Шины- seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        И на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Шины"

  Сценарий: Фильтр по зимним шинам
    Когда я выбираю ссылку "Зимние шины" в секции "Быстрый поиск"
       То ссылка содержит "winter"
        * в поле "Сезонность" выбраны следующие значения:
        | value  |
        | зимние |

  Сценарий: Фильтр по летним шинам
    Когда я выбираю ссылку "Летние шины" в секции "Быстрый поиск"
       То ссылка содержит "summer"
        * в поле "Сезонность" выбраны следующие значения:
        | value  |
        | летние |

  Сценарий: Фильтр по всесезонным шинам
    Когда я выбираю ссылку "Всесезонные шины" в секции "Быстрый поиск"
       То ссылка содержит "vsesozonnye"
        * в поле "Сезонность" выбраны следующие значения:
        | value         |
        | всесезонность |

  Сценарий: Фильтр по шинам для внедорожников
    Когда я выбираю ссылку "Шины для внедорожников" в секции "Быстрый поиск"
       То ссылка содержит "vnedorozhnik"
        * в поле "Тип автомобиля" выбраны следующие значения:
        | value       |
        | внедорожник |

  Сценарий: Фильтр по шинам для грузовых автомобилей
    Когда я выбираю ссылку "Шины для грузовых автомобилей" в секции "Быстрый поиск"
       То ссылка содержит "gruzoviki"
        * в поле "Тип автомобиля" выбраны следующие значения:
        | value    |
        | грузовой |
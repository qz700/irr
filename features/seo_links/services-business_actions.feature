# language:ru
# encoding: utf-8
Функционал: Услуги и деятельность -> Организация праздников, фото-, видеосъёмка - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Услуги и деятельность -> Организация праздников, фото-, видеосъёмка"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по агенствам
    Когда я выбираю ссылку "Агентства по организации праздников" в секции "Быстрый поиск"
       То ссылка содержит "agency"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                               |
          | агентства по организации праздников |

  Сценарий: Фильтр по ведущим
    Когда я выбираю ссылку "Ведущие" в секции "Быстрый поиск"
       То ссылка содержит "tamada"
        * в поле "Вид услуги" выбраны следующие значения:
          | value   |
          | ведущий |

  Сценарий: Фильтр по фотосъемке
    Когда я выбираю ссылку "Фотосъемка" в секции "Быстрый поиск"
       То ссылка содержит "photo"
        * в поле "Вид услуги" выбраны следующие значения:
          | value      |
          | фотосъемка |

  Сценарий: Фильтр по видеосъемке
    Когда я выбираю ссылку "Видеосъемка" в секции "Быстрый поиск"
       То ссылка содержит "video"
        * в поле "Вид услуги" выбраны следующие значения:
          | value       |
          | видеосъемка |

  Сценарий: Фильтр по музыкальному оформлению
    Когда я выбираю ссылку "Музыкальное оформление" в секции "Быстрый поиск"
       То ссылка содержит "music"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                  |
          | музыкальное оформление |

  Сценарий: Фильтр по оформлению праздника
    Когда я выбираю ссылку "Оформление праздников" в секции "Быстрый поиск"
       То ссылка содержит "oformlenie"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                |
          | оформление праздника |

  Сценарий: Фильтр по феерверкам
    Когда я выбираю ссылку "Фейерверки, файр-шоу" в секции "Быстрый поиск"
       То ссылка содержит "fire-show"
        * в поле "Вид услуги" выбраны следующие значения:
          | value               |
          | фейерверк, фаер-шоу |

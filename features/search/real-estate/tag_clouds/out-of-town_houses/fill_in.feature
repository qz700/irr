# language:ru
# encoding: utf-8
Функционал: Заполнение списка типов

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Недвижимость -> Дома, дачи и участки. Продажа -> Дома, дачи
      Когда на главной странице я перехожу в категорию "Недвижимость -> Дома, дачи и участки. Продажа -> Дома, дачи"
        * на странице категории присутствует секция "Тип строения"
        * я заполняю ссылки в секции "Тип строения" в сценарий "search/real-estate/tag_clouds/out-of-town_houses/out_of_town_houses.feature"
# language:ru
# encoding: utf-8
Функционал: Заполнение списка типов

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Авто и мото -> Автозапчасти и принадлежности -> Диски (диаметр обода)
      Когда на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
        * на странице категории присутствует секция "Диаметр обода"
        * я заполняю ссылки в секции "Диаметр обода" в сценарий "search/cars/tag_clouds/parts_disks_obod/parts_disks_obod.feature"
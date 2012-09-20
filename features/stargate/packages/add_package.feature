# language:ru
# encoding: utf-8
Функционал: Добавление/удаление/редактирование пакета интернет-партнеру через БО

  Контекст:
      Когда я перехожу на БО
          * на БО я перехожу в категорию "Интернет-партнеры -> Пользователи ИП"

  Сценарий: Добавление пакета
     Когда на БО я удаляю все пакеты "NEW Здоровье и красота | ВСЕ РЕГИОНЫ" у пользователя роли "Доверенный интернет-партнер 2"
         * на БО я добавляю интернет-партнеру пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ" для региона "Вся Россия" со следующими параметрами:
           | поле                       | значение |
           | Поднятий (на весь период)  | 100      |
           | Выделений (на весь период) | 100      |
           | Просмотры (на весь период) | 100      |

      Если открыта страница для региона "Россия"
         * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        То в ЛК ИП присутствует пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ "

      Если в ЛК ИП я выбираю пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ"
        То в ЛК ИП значение поля "Поднятие" равно "100"
         * в ЛК ИП значение поля "Выделение" равно "100"
         * в ЛК ИП значение поля "Просмотров" равно "100"

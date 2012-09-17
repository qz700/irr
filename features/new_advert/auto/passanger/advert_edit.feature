# language:ru
# encoding: utf-8
Функционал: Редактирование объявлений - Авто и мото -> Легковые автомобили -> Автомобили с пробегом

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"

@advert_submit
  Сценарий: Подача объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер 3"
       * я перехожу в список моих объявлений
      То в ЛК ИП я запоминаю значение счетчика для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"
       * я запоминаю количество объявлений пользователя
       * я запоминаю количество активных объявлений ИП

   Когда я подаю объявление в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом" с параметрами:
          | parameter        | value          |
          | Регион           | Иркутская обл Усть-Ордынский Бурятский округ |
          | Населённый пункт | Усть-Алтан     |
          | Марка            | Audi           |
          | Модель           | A4             |
          | Цена             | 10000          |
          | Валюта           | $              |
          | Год выпуска      | 2001           |
          | Тип кузова       | кабриолет      |
          | Тип трансмиссии  | автоматическая |
          | Текст            | Тест редактирования объявления|
       * я перехожу на шаг 3
        
       * в ЛК ИП открыт список объявлений пользователя
      То в ЛК ИП объявление с названием "Audi A4, кабриолет, 2001 г. в., автоматическая" присутствует в списке
       * в ЛК ИП счетчик для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом" увеличился на 1
       * счетчик объявлений пользователя увеличился на 1
       * счетчик объявлений ИП во всех разделах увеличился на 1
       * счетчик количества размещенных объявлений в ЛК ИП увеличился на 1
       * я запоминаю количество объявлений пользователя
       * я запоминаю количество активных объявлений ИП
       * в ЛК ИП я запоминаю значение счетчика для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"

   Когда я редактирую данное объявление
       * я ввожу следующие данные на шаге 2 (старая подача):
          | parameter       | value    |
          | Марка           | BMW      |
          | Модель          | 116      |
          | Год выпуска     | 2002     |
          | Цена            | 10000    |
          | Валюта          | €        |
          | Тип кузова      | лимузин  |
          | Тип трансмиссии | вариатор |
          | Текст           | Тест редактирования объявления - новый текст |
       * я сохраняю редактируемое объявление
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "BMW 116, лимузин, 2002 г. в., вариатор" присутствует в списке
       * в ЛК ИП счетчик для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом" не изменился
       * счетчик объявлений пользователя не изменился
       * счетчик объявлений ИП во всех разделах не изменился
       * счетчик количества размещенных объявлений в ЛК ИП не изменился
    Когда я открываю детали этого объявления
        * счетчик количества активных объявлений продавца не изменился

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер 3"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Авто | ВСЕ РЕГИОНЫ"
       То в ЛК ИП объявление с названием "BMW 116, лимузин, 2002 г. в., вариатор" присутствует в списке
        * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
        * у объявления указан город "Усть-Алтан"
        * у объявления указана цена "10000" в евро

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
        | поле            | значение |
        | Марка           | BMW      |
        | Модель          | 116      |
        | Год выпуска     | 2002 г.  |
        | Тип кузова      | лимузин  |
        | Тип трансмиссии | вариатор |

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"
       * я делаю поиск по следующим параметрам:
          | parameter | value           |
          | Марка     | BMW             |
          | Модель    | 116             |
          | Поданные  | вчера и сегодня |
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "BMW 116, лимузин, 2002 г. в., вариатор"

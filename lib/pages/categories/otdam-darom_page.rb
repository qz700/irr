# encoding: utf-8

class CategoryGiftsOtherPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/otdam-darom"
  @category = "Отдам даром"

  irr_multi_select "Товар или животное", "goodorpet", "Тип"
end

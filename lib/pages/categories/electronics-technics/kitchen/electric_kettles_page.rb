# encoding: utf-8

class CategoryElectronicsTechnicsKitchenElectricKettlesPage < AdDetailsPage
  include PageObject
 
  @@url_suffix = "/electronics-technics/kitchen/electric-kettles"
  @category = "Электроника и техника -> Кухонная техника -> Электрочайники"
  
  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
  irr_multi_select "Марка", "make"
end

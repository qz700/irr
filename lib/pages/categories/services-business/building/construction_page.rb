# encoding: utf-8

class CategoryServicesBusinessBuildingConstructionPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/services-business/building/construction"
  @category = "Услуги и деятельность -> Строительные и ремонтные услуги -> Строительно-монтажные работы"

  irr_multi_select "Тип предложения", "offer"
  irr_multi_select "Вид услуг", "operations_multi"
end


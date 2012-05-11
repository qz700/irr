# encoding: utf-8

class CategoryRealEstateCommercialsaleOfficesPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/real-estate/commercial-sale/offices"

  div :ao, :xpath => "//div[@data-name='ab_ao']"
  div :district, :xpath => "//div[@data-name='ab_district']"
  div :metro_lane, :xpath => "//div[@data-name='address_metro_lane']"
  div :metro, :xpath => "//div[@data-name='metro']"
  text_field :distance, :name => "distance"
  
  text_field :square_min_from, :name => "square-min[from]"
  text_field :square_min_to, :name => "square-min[to]"
  div :state, :xpath => "//div[@data-item-name='state']"
  
  checkbox :first_line, :name => "first-line"
  checkbox :entrance, :name => "entrance"
  checkbox :house_lift, :name => "house-lift"
  checkbox :security, :name => "security"
  text_field :house_ceiling_height, :name => "house-ceiling-height"
  
  # Параметры объявления
  div :ad_content, :xpath => "//div[@class='b-content']"
  span :peshkom, :xpath => "//div[@class='b-adressAdv']/div[@class='txt']/span[@class='gray']"
  
  def set_parameter (hash)
    case hash['parameter']
    when "Округ"
      multiselect(self.ao_element, hash['value'])

    when "Район"
      multiselect(self.district_element, hash['value'])

    when "Линия метро"
      multiselect(self.metro_lane_element, hash['value'])

    when "Станция метро"
      multiselect(self.metro_element, hash['value'])

    when "До метро"
      self.distance = hash['value']
      
    when "Назначение помещения"
      self.

    when "Общая площадь"
      self.square_min_from = hash['min']
      self.square_min_to = hash['max']

    when "Ремонт"
      singleselect(self.state_element, hash['value'])

    when "1-я линия"
      self.first_line_element.check

    when "Отдельный вход"
      self.entrance_element.check

    when "Лифты в здании"
      self.house_lift_element.check

    when "Охрана здания"
      self.house_lift_element.check

    when "Высота потолков"
      self.house_ceiling_height_element.check

    else
      super(hash)
    end
  end

  def get_parameter(field)
    case field
    when "АО", "Район города", "Общая площадь", "Комнат в квартире", 
         "Жилая площадь", "Площадь кухни", "Ремонт", "Назначение помещения"
      result = get_unique_parameter(field)
      
    when "Линия метро"
      hidden_comment = self.ad_content_element.element.html.scan(/HIDDEN ADDRESSES(.*)-->/m)
      metro_and_region = hidden_comment[0][0].split("\n")[2].strip.split(', ')[0]
      result = metro_and_region.split[0]

    when "Станция метро"
      result = self.metro_station.text

    when "До метро"
      begin
        result = self.peshkom_element.text.split[0].to_i
      rescue Watir::Exception::UnknownObjectException
        result = 0
      end

    when "Лифты в здании", "Газ в доме"
      result = get_checkbox_parameter(field)

    else
      result = get_generic_parameter(field) 
    end
    result
  end
end
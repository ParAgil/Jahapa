# coding: UTF-8

class LocationName < ActiveRecord::Base
  belongs_to :location
  
  def name=(string)
    super(self.class.normalize(string))
  end
  
  def self.normalize(string)
    string = string.downcase.gsub(/\.|,/, '')
    string = string.gsub(/á/, 'a').gsub(/é/, 'e').gsub(/í/, 'i').gsub(/ó/, 'o').gsub(/ú/, 'u')
    string = string.gsub(/mcal/, 'mariscal').gsub(/tte/, 'teniente').gsub(/cap/, 'capitan')
    string = string.strip.gsub(/\s+/, " ")
    string.titleize
  end
end

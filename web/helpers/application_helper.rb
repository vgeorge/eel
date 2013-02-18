# encoding: UTF-8

module ApplicationHelper
  def title(value = nil)
    @title = value if value
    @title ? "EEL - #{@title}" : "EEL - Endereços e Logradouros do Brasil" 
  end
end
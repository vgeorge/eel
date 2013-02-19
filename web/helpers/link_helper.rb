# encoding: UTF-8

module LinkHelper 

  def base_url
    @base_url ||= "#{request.env['rack.url_scheme']}://#{request.env['HTTP_HOST']}"
  end

  def state_url(id)
    url( base_url + "/estados/" + id.to_s)
  end

  def city_url(id)
    url( base_url + "/cidades/" + id.to_s)
  end

  def district_url(id)
    url( base_url + "/distritos/" + id.to_s)
  end

  def subdistrict_url(id)
    url( base_url + "/subdistritos/" + id.to_s)
  end

  def bairro_url(id)
    url( base_url + "/bairros/" + id.to_s)
  end

  def cities_path
    url("/cidades")
  end
end
class HarryPotterV1

  def initialize(query)
    @api_key = ENV['HP_API_KEY']
    @query = query
  end

  def member_info
    parse(members_response(@query))
  end

  def parse(info)
    JSON.parse(info)
  end

  def members_response(query)
    binding.pry
    conn.get("characters?key=#{@api_key}&house=#{query}")
  end

  def conn
    Faraday.new(url: "https://www.potterapi.com/v1/")
  end
end

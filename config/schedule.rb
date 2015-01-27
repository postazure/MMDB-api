every 1.day, at:"4:00am" do
  api_link_list = get_api_links("http://gschool.github.io/student-apis/")

  # @api_movie_list = []
  api_link_list.each do |api_link|
    movies = parse_json(api_link)
    movies.each do |movie|
      # @api_movie_list << movie
      add_to_db(movie)
    end
  end
end

def add_to_db(mov_obj)
  mov_obj.delete("id")
  # puts "#"*70
  # puts mov_obj
  # puts "#"*70
  Movie.create(mov_obj)
end
def get_api_links(url)
  page = RestClient.get(url, user_agent: "Chrome")
  html_doc = Nokogiri::HTML(page)
  html_doc.css("a")
end
def parse_json(api_link_url)
  api_json = RestClient.get("#{api_link_url.children.text}all")
  JSON.parse(api_json)
end

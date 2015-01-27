class MoviesController < ApplicationController
  def all
    @movies = Movie.all
    render json: @movies[0..9]
  end
  def search
    @movies = (params["y"] ? Movie.where(year: params["y"]) : Movie.all)
    @movies = @movies.select { |movie| movie if movie.title.downcase.include?(params["t"].downcase)  } if params["t"]
    render json: @movies
  end
  def tile
    @movies = Movie.all
  end
  def scrape
    api_link_list = get_api_links("http://gschool.github.io/student-apis/")

    api_link_list.each do |api_link|
      movies = parse_json(api_link)
      movies.each do |movie|
        add_to_db(movie)
      end
    end
  end

  private
  def add_to_db(mov_obj)
    mov_obj.delete("id")
    puts "#"*70
    puts mov_obj
    puts "#"*70
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
end

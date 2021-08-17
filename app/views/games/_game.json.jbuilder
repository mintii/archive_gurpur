json.extract! game, :id, :name, :publisher, :developer, :platform, :notes, :cover_art, :created_at, :updated_at
json.url game_url(game, format: :json)

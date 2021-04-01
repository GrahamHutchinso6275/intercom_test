require 'json'

# Main function

def close_customers(address, lon, lat, r)
  data = load_JSON(address)
  data.each do |line|
    dist = distance(deg_to_rad(line["longitude"].to_f), deg_to_rad(line["latitude"].to_f), deg_to_rad(lon), deg_to_rad(lat), r)
    line.class
    if dist < 100
      
    end
  end
end

# Load JSON
def load_JSON(addr)
  items = File.open(addr, 'r').each_line.map { |l| JSON.parse(l) }
  items
end

# Distance Formula

def distance(lon1, lat1, lon2, lat2, r)
  2 * r * Math.asin(Math.sqrt(radicand(lon1, lat1, lon2, lat2)))
end

# Mathematical Formulae

def deg_to_rad(theta)
  theta * (Math::PI/180)
end

def haversine(theta)
  (1-Math.cos(theta))/2
end

def radicand(lon1, lat1, lon2, lat2)
  haversine((lat2-lat1).abs) + Math.cos(lat1) * Math.cos(lat2) * haversine((lon2-lon1).abs)
end

close_customers('customers.txt',-6.257664, 53.339428,6371)


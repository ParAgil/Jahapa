# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# ------------------ LOCATIONS ------------------------------------ #
def make_location(hash)
  location = Location.create(:lat => hash[:lat], :long => hash[:long])
  names = hash[:names]
  names = names.is_a?(Array) ? names : names.split(',')
  names.each do |name|
    location.names.create( :name => name )
  end
end

make_location(:lat => -25.295152, :long => -57.581073, :names => 'shopping mariscal lopez, mariscal lopez shopping')

make_location(:lat => -25.338923, :long => -57.584947, :names => '4 mojones, cuatro mojones') 

make_location(:lat => -25.328201, :long => -57.570924, :names => 'mercado de abasto, abasto, mercado abasto') 

make_location(:lat => -25.303862, :long => -57.559889, :names => 'municipalidad, municipalidad de asuncion, municipalidad asuncion') 

make_location(:lat => -25.29402, :long => -57.580427, :names => 'shopping villa morra, villa morra') 

make_location(:lat => -25.292652, :long => -57.582632, :names => 'ministerio de industria y comercio, mic, ministerio de industria, ministerio de comercio') 

make_location(:lat => -25.29021, :long => -57.589721, :names => 'iglesia de la recoleta, iglesia la recoleta, cementerio de la recoleta, cementerio la recoleta') 

make_location(:lat => -25.290952, :long => -57.593831, :names => 'embajada del japon, embajada de japon, embajada japonesa, embajada japon') 

make_location(:lat => -25.292543, :long => -57.603119, :names => 'hospital de policia, hospital policial, policlinico') 

make_location(:lat => -25.292911, :long => -57.607284, :names => 'shopping britanico') 

make_location(:lat => -25.295053, :long => -57.578375, :names => 'manzana t') 

make_location(:lat => -25.283215, :long => -57.566922, :names => 'shopping del sol') 

# ------------------------------- ROUTES -------------------------------------------#

def make_route( name, locations )
  locations = locations.is_a?(Array) ? locations : locations.split(',')
  route = Route.create(:name => name)
  locations.each do |loc_name|
    route.locations << Location.from_name( loc_name )
  end
  route
end

make_route('51', 'shopping del sol')

make_route('15', '4 mojones, mercado de abasto, municipalidad, shopping villa morra,  shopping mariscal lopez, ministerio de industria y comercio,  iglesia de la recoleta,  embajada del japon,  shopping britanico,  manzana t')















# coding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# ------------------------------------------------------ LOCATIONS ------------------------------------------------------------------------------#
def make_location(hash)
  location = Location.create(:lat => hash[:lat], :long => hash[:long])
  names = hash[:names]
  names = names.is_a?(Array) ? names : names.split(',')
  names.each do |name|
    location.names.create( :name => name )
  end
end

make_location(:lat => -25.295152, :long => -57.581073, :names => 'mariscal lopez, shopping mariscal lopez, mariscal lopez shopping')

make_location(:lat => -25.338923, :long => -57.584947, :names => '4 mojones, cuatro mojones') 

make_location(:lat => -25.328201, :long => -57.570924, :names => 'mercado de abasto, abasto, mercado abasto') 

make_location(:lat => -25.303862, :long => -57.559889, :names => 'municipalidad, municipalidad de asuncion, municipalidad asuncion') 

make_location(:lat => -25.29402, :long => -57.580427, :names => 'shopping villa morra, villa morra') 

make_location(:lat => -25.292652, :long => -57.582632, :names => 'ministerio de industria y comercio, mic, ministerio de industria, ministerio de comercio') 

make_location(:lat => -25.29021, :long => -57.589721, :names => 'iglesia de la recoleta, iglesia la recoleta, cementerio de la recoleta, cementerio la recoleta, la recoleta, recoleta') 

make_location(:lat => -25.290952, :long => -57.593831, :names => 'embajada del japon, embajada de japon, embajada japonesa, embajada japon') 

make_location(:lat => -25.292543, :long => -57.603119, :names => 'hospital de policia, hospital policial, policlinico') 

make_location(:lat => -25.292911, :long => -57.607284, :names => 'shopping britanico') 

make_location(:lat => -25.295053, :long => -57.578375, :names => 'manzana t') 

make_location(:lat => -25.283215, :long => -57.566922, :names => 'shopping del sol') 

make_location(:lat => -25.316553, :long => -57.571170, :names => 'multiplaza,	shopping multiplaza')

make_location(:lat => -25.333592, :long => -57.520326, :names => 'una,	universidad nacional de asuncion,	facultad')

make_location(:lat => -25.362796, :long => -57.563299, :names => 'coca cola')

make_location(:lat => -25.326436, :long => -57.595988, :names => 'terminal,	terminal de asuncion,	terminal asuncion,	terminal de omnibus')

make_location(:lat => -25.323507, :long => -57.594486, :names => 'ysaty,	colegio ysaty')

make_location(:lat => -25.300613, :long => -57.579964, :names => 'colegio bautista,	bautista,	hospital bautista')

make_location(:lat => -25.299827, :long => -57.580114, :names => 'embajada surcorea, embajada corea del sur, embajada surcoreana')

make_location(:lat => -25.327856, :long => -57.547481, :names => 'real fernando,	supermercado real fernando,	super real fernando')

make_location(:lat => -25.347197, :long => -57.575687, :names => 'real acceso sur,	supermercado real acceso sur,	super real acceso sur,	real sur')

make_location(:lat => -25.302029, :long => -57.565793, :names => 'identificaciones')

make_location(:lat => -25.294832, :long => -57.577228, :names => 'plaza de las americas, plaza americas')

make_location(:lat => -25.292533, :long => -57.601571, :names => 'mburuvicha roga')

make_location(:lat => -25.279049, :long => -57.645597, :names => 'hospital militar')

make_location(:lat => -25.29563, :long => -57.576991, :names => 'tigo,	telecel,	casa central tigo')

make_location(:lat => -25.282401, :long => -57.638156, :names => 'supercentro, asuncion super centro, super centro, asuncion supercentro')

make_location(:lat => -25.29361, :long => -57.604452, :names => 'embajada americana, embajada de los estados unidos, embajada eeuu, embajada usa, embajada estados unidos')

make_location(:lat => -25.293585, :long => -57.612526, :names => 'ministerio de defensa, ministerio defensa')

make_location(:lat => -25.289991, :long => -57.617294, :names => 'embajada de brasil, embajada brasilera, embajada brasileña, embajada del brasil')

make_location(:lat => -25.290001, :long => -57.619043, :names => 'teatro tom jobim, tom jobim')

make_location(:lat => -25.289055, :long => -57.625266, :names => 'touring club, touring y automovil club paraguayo, touring club paraguayo')

make_location(:lat => -25.283683, :long => -57.629638, :names => 'estacion central del ferrocarril, estacion del ferrocarril, estacion de ferrocarril, estacion ferrocarril, ferrocarril')

make_location(:lat => -25.295232, :long => -57.577742, :names => 'vox, vox casa central, casa central vox')

make_location(:lat => -25.294449, :long => -57.579638, :names => 'claro villa morra')

make_location(:lat => -25.263734, :long => -57.535465, :names => 'ñu guazu, ñu guasu')

make_location(:lat => -25.280933, :long => -57.650172, :names => 'interpol')

make_location(:lat => -25.280307, :long => -57.650132, :names => 'comisaria primera, comisaria 1ra')

make_location(:lat => -25.279786, :long => -57.650703, :names => 'facultad de medicina, medicina una, facultad de medicina una, hospital de clinicas, clinicas')

make_location(:lat => -25.287316, :long => -57.642984, :names => 'universidad autonoma, uaa')

make_location(:lat => -25.298991, :long => -57.545139, :names => 'frigorifico guarani')

make_location(:lat => -25.293183, :long => -57.549793, :names => 'cementerio del este')

make_location(:lat => -25.251828, :long => -57.576942, :names => 'jardin botanico, botanico')

make_location(:lat => -25.314817, :long => -57.583487, :names => 'jockey club paraguayo, jockey club')

make_location(:lat => -25.315564, :long => -57.578305, :names => 'hipermercado luisito, luisito eusebio ayala')

make_location(:lat => -25.317261, :long => -57.568445, :names => 'edesa')

make_location(:lat => -25.321301, :long => -57.55704, :names => 'medalla milagrosa, iglesia medalla milagrosa, colegio medalla milagrosa')

make_location(:lat => -25.323163, :long => -57.555053, :names => 'municipalidad fernando, municipalidad fernando de la mora, municipalidad de fernando')

make_location(:lat => -25.324523, :long => -57.552532, :names => 'super el pueblo, supermercado el pueblo, super pueblo, supermercado pueblo')

make_location(:lat => -25.325158, :long => -57.551357, :names => 'colegio san nicolas, colegio tecnico san nicolas')

make_location(:lat => -25.334868, :long => -57.535202, :names => 'lasca, laboratorios lasca')

make_location(:lat => -25.323493, :long => -57.526088, :names => 'andres barbero, instituto andres barbero, instituto dr andres barbero')

make_location(:lat => -25.277897, :long => -57.64734, :names => 'casa rosada')

make_location(:lat => -25.310402, :long => -57.530849, :names => 'dylan, dylan disco pub, discoteca dylan')

make_location(:lat => -25.309633, :long => -57.531069, :names => 'chaco trading, chaco trading company')

make_location(:lat => -25.300349, :long => -57.52866, :names => 'colegio tecnico san luis, tecnico san luis, colegio san luis')

make_location(:lat => -25.228799, :long => -57.533695, :names => 'expo')
#------------------------------------------------------------- ROUTES ---------------------------------------------------------------------------#

def make_route( name, locations )
  locations = locations.is_a?(Array) ? locations : locations.split(',')
  route = Route.create(:name => name)
  locations.each do |loc_name|
    route.locations << Location.from_name( loc_name )
  end
  route
end

make_route('51', 'shopping del sol')

make_route('15 - 3', '4 mojones, mercado de abasto, municipalidad, shopping villa morra,  shopping mariscal lopez, ministerio de industria y comercio,  iglesia de la recoleta,  embajada del japon, policlinico, shopping britanico, manzana t, identificaciones, embajada americana, tigo, plaza de las americas, mburuvicha roga, ministerio de defensa, embajada de brasil, teatro tom jobim, real acceso sur, touring club')

make_route('28', 'hospital militar, tigo, supercentro, embajada americana, vox, claro villa morra, shopping villa morra, shopping mcal lopez, shopping del sol, hospital policial, ñu guasu, interpol, comisaria primera, casa rosada')

make_route('49 VUELTA', '4 mojones, mercado de abasto, multiplaza, edesa, una')

make_route('linea 5 (La Chaqueña)', 'facultad de medicina, universidad autonoma, expo')

make_route('1 A', 'frigorifico guarani, cementerio del este, ñu guazu')

make_route('1 B', 'frigorifico guarani, cementerio del este, jardin botanico')

make_route('29', 'jockey club paraguayo, hipermercado luisito, multiplaza, edesa, medalla milagrosa, municipalidad fernando, supermercado pueblo, colegio san nicolas, real fernando, lasca, una')

make_route('27', 'jockey club paraguayo, hipermercado luisito, multiplaza, edesa, medalla milagrosa, municipalidad fernando, supermercado pueblo, colegio san nicolas, real fernando, lasca, una')

make_route('21 IPVU', 'multiplaza, edesa, medalla milagrosa, dylan, chaco trading, colegio tecnico san luis')









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

make_location(:lat => -25.333592, :long => -57.520326, :names => 'una, universidad nacional de asuncion, facultad, universidad nacional, una san lorenzo')

make_location(:lat => -25.362796, :long => -57.563299, :names => 'coca cola')

make_location(:lat => -25.326436, :long => -57.595988, :names => 'terminal,	terminal de asuncion,	terminal asuncion,	terminal de omnibus')

make_location(:lat => -25.323507, :long => -57.594486, :names => 'ysaty,	colegio ysaty')

make_location(:lat => -25.300264, :long => -57.579794, :names => 'colegio bautista,	bautista,	hospital bautista')

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

make_location(:lat => -25.289991, :long => -57.617294, :names => 'embajada de brasil, embajada brasilera, embajada brasileña, embajada del brasil, embajada brasil')

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

make_location(:lat => -25.334237, :long => -57.536986, :names => 'salemma, supermercado salemma, super salemma, salemma supercenter')

make_location(:lat => -25.226218, :long => -57.534564,	:names => 'shopping mariano')

make_location(:lat => -25.334872, :long => -57.526381,	:names => 'snpp, servicio nacional de promocion profesional')

make_location(:lat => -25.333156, :long => -57.537113, :names => 'parroquia domingo sabio, domingo sabio')

make_location(:lat => -25.353809, :long => -57.571794, :names => 'supermercado stock acceso sur, stock villa elisa, supermercado stock villa elisa, super stock villa elisa, super stock acceso sur')

make_location(:lat => -25.348983, :long => -57.574963, :names => 'diefer, supermercado diefer, super diefer')

make_location(:lat => -25.334215, :long => -57.58971, :names => 'comisaria 15, comisaria quince')

make_location(:lat => -25.333971, :long => -57.590552, :names => 'secretaria nacional antidrogas, senad, secretaria antidrogas')

make_location(:lat => -25.3279, :long => -57.595348, :names => 'casa central joseph I, joseph terminal, joseph coiffure terminal, peluqueria joseph terminal')

make_location(:lat => -25.321146, :long => -57.594356, :names => 'supermercado stock republica argentina, stock rca argentina, stock republica argentina, super stock rca argentina, super stock republica argentina')

make_location(:lat => -25.320025, :long => -57.591633, :names => 'direccion del registro civil, registro civil terminal, registro civil, direccion registro civil')

make_location(:lat => -25.305216, :long => -57.583794, :names => 'superseis los laureles, superseis laureles')

make_location(:lat => -25.303887, :long => -57.582626, :names => 'heladeria sugar, sugar')

make_location(:lat => -25.30104, :long => -57.580878, :names => 'radio venus, venus')

make_location(:lat => -25.297155, :long => -57.578579, :names => 'supermercado real villa morra, super real villa morra, real villa morra')

make_location(:lat => -25.29684, :long => -57.57822, :names => 'heladeria amandau, amandau')

make_location(:lat => -25.296658, :long => -57.576997, :names => 'fundacion moises bertoni, moises bertoni')

make_location(:lat => -25.293239, :long => -57.576165, :names => 'cooperativa universitaria')

make_location(:lat => -25.291587, :long => -57.574181, :names => 'asociacion medica ips, asociacion medica del ips, aso medica ips, aso medica del ips')

make_location(:lat => -25.290428, :long => -57.573119, :names => 'ccpa villa morra')

make_location(:lat => -25.287445, :long => -57.572013, :names => 'libreria el lector, libreria lector, el lector')

make_location(:lat => -25.309726, :long => -57.591422, :names => 'club tembetary, tembetary')

make_location(:lat => -25.30814, :long => -57.596668, :names => 'supermercado gran via, super gran via, gran via')

make_location(:lat => -25.307936, :long => -57.59898, :names => 'hospital san lucas')

make_location(:lat => -25.306263, :long => -57.604243, :names => 'esaap')

make_location(:lat => -25.304716, :long => -57.607301, :names => 'supermercado unicompra, super unicompra')

make_location(:lat => -25.303319, :long => -57.61591, :names => 'club guarani, guarani')

make_location(:lat => -25.302053, :long => -57.617504, :names => 'colegio nacional de la capital, nacional de la capital, cnc')

make_location(:lat => -25.298925, :long => -57.621663, :names => 'galeria san miguel')

make_location(:lat => -25.286916, :long => -57.623139, :names => 'colegio carlos antonio lopez, colegio carlos a lopez, colegio antonio lopez')

make_location(:lat => -25.285083, :long => -57.623426, :names => 'ccpa central, centro cultural paraguayo americano, ccpa')

make_location(:lat => -25.285459, :long => -57.621234, :names => 'supermercado españa (mcal lopez), supermercado españa, super españa')

make_location(:lat => -25.285308, :long => -57.621561, :names => 'facultad de odontologia una, facultad de odontologia, odontologia una, facultad odontologia')

make_location(:lat => -25.284942, :long => -57.621411, :names => 'universidad del cono sur de las americas, ucsa, universidad del cono sur')

make_location(:lat => -25.284127, :long => -57.620784, :names => 'instituto cultural paraguayo aleman, icpa, icpa-gz, icpagz, cultural paraguayo aleman, goethe zentrum')

make_location(:lat => -25.28396, :long => -57.619622, :names => 'anglo central, anglo centro, anglo 1')

make_location(:lat => -25.283667, :long => -57.622476, :names => 'cruz roja, cruz roja paraguaya')

make_location(:lat => -25.281702, :long => -57.619902, :names => 'parque general caballero, parque gral caballero, parque caballero')

make_location(:lat => -25.280611, :long => -57.616959, :names => 'oficina central del correo, oficina central de correo, central de correos, central del correo')

make_location(:lat => -25.277569, :long => -57.613555, :names => 'subsistencia del ejercito, subsistencia ejercito')

make_location(:lat => -25.276919, :long => -57.611351, :names => 'club libertad, libertad')

make_location(:lat => -25.273213, :long => -57.607145, :names => 'centro medico la costa, la costa, hospital la costa, unida')

make_location(:lat => -25.254589, :long => -57.583254, :names => 'intn, instituto nacional de tecnologia normalizacion y metrologia')

make_location(:lat => -25.252051, :long => -57.57703, :names => 'jardin botanico, zoologico, botanico')

make_location(:lat => -25.287576, :long => -57.627782, :names => 'crowne plaza asuncion, hotel crowne plaza asuncion, hotel crowne, crowne hotel, crowne plaza, hotel crowne plaza')

make_location(:lat => -25.285369, :long => -57.635139, :names => 'absoluto rock live stage, absoluto rock live, absoluto rock')

make_location(:lat => -25.284101, :long => -57.63515, :names => 'hotel guarani, guarani hotel')

make_location(:lat => -25.284101, :long => -57.63515, :names => 'plaza de la democracia, plaza democracia')

make_location(:lat => -25.28372, :long => -57.634275, :names => 'banco nacional de fomento, bnf')

make_location(:lat => -25.28282, :long => -57.637003, :names => 'ministerio de obras publicas y comunicaciones, mopc, ministerio de obras publicas, ministerio de comunicaciones, obras publicas y comunicaciones')

make_location(:lat => -25.282342, :long => -57.638253, :names => 'asuncion super centro, super centro')

make_location(:lat => -25.286921, :long => -57.646649, :names => 'colegio cristo rey, parroquia cristo rey, iglesia cristo rey, cristo rey')

make_location(:lat => -25.287569, :long => -57.648029, :names => "mc donalds sajonia, mc donald's sajonia, mac donald sajonia")

make_location(:lat => -25.294347, :long => -57.640018, :names => 'radio nacional del paraguay, radio nacional paraguay, radio nacional')

make_location(:lat => -25.298115, :long => -57.636944, :names => 'club cerro porteño, cerro porteño, estadio cerro porteño')

make_location(:lat => -25.298329, :long => -57.639766, :names => 'club nacional')

make_location(:lat => -25.284096, :long => -57.63343, :names => 'embajada de españa, embajada españa, embajada española, embajada espanha, embajada espanhola, embajada de espanha')

make_location(:lat => -25.212838, :long => -57.528856, :names => 'supermercado españa (transchaco), super españa transchaco, super españa mariano, super españa mariano roque alonso, supermercado españa mariano roque alonso')

make_location(:lat => -25.292678, :long => -57.559503, :names => 'superseis denis roa')

make_location(:lat => -25.277191, :long => -57.577178, :names => 'banco central, bcp, banco central del paraguay')

make_location(:lat => -25.297320, :long => -57.578541, :names => 'supermercado real villamorra, super real villamorra, real villamorra')


#------------------------------------------------------------- ROUTES ---------------------------------------------------------------------------#

def make_route( name, locations )
  locations = locations.is_a?(Array) ? locations : locations.split(',')
  route = Route.create(:name => name)
  locations.each do |loc_name|
    if Location.from_name( loc_name )
      route.locations << Location.from_name( loc_name )
    else
      raise "location #{loc_name} not found"
    end
  end
  route
end

make_route('51', 'shopping del sol')

make_route('15-3 (Ñemby a Asunción)', '4 mojones, mercado de abasto, municipalidad, shopping villa morra,  shopping mariscal lopez, ministerio de industria y comercio,  iglesia de la recoleta,  embajada del japon, policlinico, shopping britanico, manzana t, identificaciones, embajada americana, tigo, plaza de las americas, mburuvicha roga, ministerio de defensa, embajada de brasil, teatro tom jobim, real acceso sur, touring club, crowne plaza asuncion, absoluto rock live stage, hotel guarani, plaza de la democracia, banco nacional de fomento, ministerio de obras publicas y comunicaciones, asuncion super centro, colegio cristo rey, mc donalds sajonia, radio nacional del paraguay, club cerro porteño, club nacional')

make_route('28', 'hospital militar, tigo, supercentro, embajada americana, vox, claro villa morra, shopping villa morra, shopping mcal lopez, shopping del sol, hospital policial, ñu guasu, interpol, comisaria primera, casa rosada')

make_route('49 (V. Elisa a Limpio)', '4 mojones, mercado de abasto, multiplaza, edesa, una, domingo sabio, medalla milagrosa')

make_route('5 (La Chaqueña)', 'supermercado españa (transchaco), facultad de medicina, universidad autonoma, expo, shopping mariano')

make_route('1 A', 'frigorifico guarani, cementerio del este, ñu guazu')

make_route('1 B', 'frigorifico guarani, cementerio del este, jardin botanico, superseis denis roa, bcp')

make_route('29', 'jockey club paraguayo, hipermercado luisito, multiplaza, edesa, medalla milagrosa, municipalidad fernando, supermercado pueblo, colegio san nicolas, real fernando, lasca, una, domingo sabio')

make_route('27', 'jockey club paraguayo, hipermercado luisito, multiplaza, edesa, medalla milagrosa, municipalidad fernando, supermercado pueblo, colegio san nicolas, real fernando, lasca, una, domingo sabio')

make_route('21 IPVU', 'multiplaza, edesa, medalla milagrosa, dylan, chaco trading, colegio tecnico san luis')

make_route('49 (Limpio a V. Elisa)', 'una, snpp, lasca, salemma, parroquia domingo sabio, real fernando, supermercado pueblo, colegio san nicolas')

make_route('18 Ñemby-Asunción', 'coca cola, supermercado stock acceso sur, diefer, real acceso sur, 4 mojones, comisaria 15, secretaria nacional antidrogas, casa central joseph i, terminal, ysaty, supermercado stock republica argentina, direccion del registro civil, superseis los laureles, heladeria sugar, radio venus, colegio bautista, embajada surcorea, supermercado real villamorra, heladeria amandau, fundacion moises bertoni, tigo, vox, plaza de las americas, cooperativa universitaria, asociacion medica ips, ccpa villa morra, libreria el lector')

make_route('48', '4 mojones, comisaria 15, secretaria nacional antidrogas, casa central joseph i, terminal, ysaty, supermercado stock republica argentina, direccion del registro civil, club tembetary, supermercado gran via, hospital san lucas, esaap, supermercado unicompra, club guarani, colegio nacional de la capital, galeria san miguel, touring club, colegio carlos antonio lopez, ccpa central, supermercado españa (mcal lopez), facultad de odontologia una, universidad del cono sur de las americas, instituto cultural paraguayo aleman, anglo central, cruz roja, parque general caballero, oficina central del correo, subsistencia del ejercito, club libertad, centro medico la costa, intn, jardin botanico')

make_route('56', 'una, shopping mariscal lopez')

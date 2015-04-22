
Museum.create [
{museum_name: 'deYoung'},
{museum_name: 'MOMA'},
{museum_name: 'AsianArt'}
]



Artist.create [
{name: 'Picasso'},
{name: 'VanGogh'},
{name: 'DaVinci'}
]

Painting.create [
{title: 'Beautiful Scene', artist_id: 2, museum_id: 3, photo_url: '
	K1lmi_JGTopfBTzUb73seM5pHorkOUBYSdZJO33rtvic5Fchttps:www'},
{title: 'Mona Lisa', artist_id: 3, museum_id: 1, photo_url: 'http://upload.wikimedia.org/wikipedia/commons/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg'},
{title: 'Beautiful House', artist_id: 3, museum_id: 2, photo_url: 'https:www.pictures.com'}
]










#This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

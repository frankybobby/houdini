object false

child @map_data => :data do
	collection @map_data, object_root: false
	attributes :name, :latitude, :longitude, :id
end
task :import_data => :environment do |variable|	
	rawjson = HTTParty.get("https://www.govtrack.us/api/v2/person") 
	puts rawjson.inspect
	rawjson["objects"].each do |object| 
	puts object["firstname"]	
	puts object["lastname"]
	puts object["middlename"]
	puts object["gender"]
	puts "-----"
	Congressman.create(first_name: object["firstname"], middle_name: object["middlename"], last_name: object["lastname"], gender: object["gender"])
	puts "imported"
	puts "*****"
	end
end
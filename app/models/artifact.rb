class Artifact < ApplicationRecord

    has_many :suggestions
    has_many :heros, through: :suggestions



    def self.getArtifacts
        response = RestClient.get 'https://api.epicsevendb.com/artifact/'
        tester = JSON.parse(response.body)
            tester["results"].each do |artifact|
                if artifact["rarity"] == 5 then
                    Artifact.create(name: artifact["name"], role: artifact["role"], rarity: artifact["rarity"], image: artifact["assets"]["image"], icon: artifact["assets"]["icon"], api_id: artifact["_id"])
                end 
            end 
        end 

        def self.getStats
            Artifact.all.each do |artifact|
                api_id = artifact[:api_id]
                puts api_id
                response = RestClient.get "https://api.epicsevendb.com/artifact/#{api_id}/"
                tester = JSON.parse(response.body)
                artifact.update(description:tester["results"][0]["description"] , skill_description:tester["results"][0]["skill"]["description"], variable:tester["results"][0]["skill"]["enhancements"][10][0] )
            end 
            return "hi"
        end 
    



end

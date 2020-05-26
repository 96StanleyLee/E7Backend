class Hero < ApplicationRecord
    has_many :ownerships
    has_many :users, through: :ownerships
    has_many :suggestions
    has_many :artifacts, through: :suggestions
    has_many :stats
    has_many :skills


    def self.getHeroes
    response = RestClient.get 'https://api.epicsevendb.com/hero/'
    tester = JSON.parse(response.body)
        tester["results"].each do |hero|
            if hero["rarity"] == 5 then
                Hero.create(name: hero["name"], role: hero["role"], rarity: hero["rarity"], zodiac: hero["zodiac"], icon: hero["assets"]["icon"], api_id: hero["_id"])
            end 
        end 
    end 


    def self.getStats
        Hero.all.each do |hero|
            api_id = hero[:api_id]
            puts api_id
            response = RestClient.get "https://api.epicsevendb.com/hero/#{api_id}/"
            tester = JSON.parse(response.body)
            stats = tester["results"][0]["calculatedStatus"]["lv60SixStarFullyAwakened"]
            puts stats
            Stat.create(hero_id: hero[:id],story: tester["results"][0]["story"] , attack: stats["atk"] , hp: stats["hp"] , def: stats["def"] , speed: stats["spd"] , crit: stats["chc"] , cdmg: stats["chd"])
            hero.update(description: tester["results"][0]["description"])
        end 
        return "hi"
    end 


    def self.getSkills
        Hero.all.each do |hero|
            api_id = hero[:api_id]
            puts api_id
            response = RestClient.get "https://api.epicsevendb.com/hero/#{api_id}/"
            tester = JSON.parse(response.body)
            skills = tester["results"][0]["skills"]
            puts skills
            skills.each do |skill|
                puts skill
                Skill.create(hero_id: hero[:id], name: skill["name"] , description: skill["description"], icon: skill["assets"]["icon"])
            end 
        end 
        return "hi"
    end 


  





end 
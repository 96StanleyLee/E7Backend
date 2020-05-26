class OwnershipsController < ApplicationController


    def show 
        hero = Hero.find(params[:id])
        builds = hero.ownerships.where(reviewed: true).last(5)
        render json: builds
    end 


    def page_show
        builds = Hero.find(params[:id]).ownerships.where(reviewed: true)
        render json: builds
    end 


    def review 
        builds = Ownership.all.where(reviewed: false)
        render json: builds 
    end 


    def destroy
        builds = Ownership.find(params[:id])
        builds.destroy
        render json: builds


    end

    def approve
        byebug
    end
    
    def update 
        build = Ownership.find(params[:id])
        build.update(reviewed: true)
        render json: build
    end 



    

    def create
        image = Cloudinary::Uploader.upload(params[:image])
        ownership = Ownership.create(user_id: params[:user], hero_id: params[:id], builds: image["secure_url"], reviewed: false)
        render json: ownership
    end

end

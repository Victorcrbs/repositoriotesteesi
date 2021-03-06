class RatingsController < ApplicationController
    def new 
        @rating= Rating.new
    end

    def index
        @rating = Rating.all
    end

    def edit 
        @rating = Rating.find(params[:id])
    end

    def update 
        @rating = Rating.find(params[:id])
        
        if @rating.update(rating_params)
            redirect_to @rating
        else
            render 'edit'
        end
    end

    def destroy 
        @rating = Rating.find(params[:id])
        @rating.destroy
       
        redirect_to ratings_path
    end        

    def create
        @rating = Rating.new(rating_params)
       
        if @rating.save
            redirect_to @rating
        else
            render 'new'
        end 
    end
    
    def show
        @rating = Rating.find(params[:id])
    end


    
private
    def rating_params
        params.require(:rating).permit(:nome, :nota)
    end

end


class PagesController < ApplicationController
    before_action :set_page, only: %i[ show edit update destroy ]

    def index
        @pages = Page.all    
    end

    def show
        @comment = Post.first.comments.first
        @comments = Post.first.comments
    end

    def new
        @page = Page.new
    end

    def create
        @page = Page.new(page_params)

        if @page.save 
            redirect_to @page
        else
            render plain: 'ya done messed up son!'
        end
    end

    def edit
    end

    def update
        if @page.update(page_params)
            redirect_to @page
        else
            render plain: 'you keep messen uppa!'
        end
    end

    def destroy
        @page.destroy
        redirect_to pages_url
        
    end


    private
    
    def set_page 
        @page = Page.find_by_slug(params[:id])
        if @page.nil?
            flash[:notice] = "We couldn't find that Post."
            redirect_to pages_url
        end
    end

    def page_params 
        params.require(:page).permit(:title, :body)
    end

end

class Site::SearchController < SiteController
    def ads
        cookies[:search_term] = params[:q]
        
        @categories = Category.order_by_description
        # @ads = Ad.where(title: params[:q])
        @ads = Ad.search(params[:q], params[:page])
    end
end

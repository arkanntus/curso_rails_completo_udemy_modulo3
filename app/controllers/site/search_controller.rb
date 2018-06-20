class Site::SearchController < SiteController
    def ads
        @categories = Category.order_by_description
        @ads = Ad.where(title: params[:q])
    end
end

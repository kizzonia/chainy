class HeadersController < InheritedResources::Base

  private

    def header_params
      params.require(:header).permit(:abouts_title, :abouts_sub_title)
    end

end

class ShortController < ApplicationController

  def show
    link = Link.find_by(short_code: params[:short_code])
    if link
      redirect_to link.original, allow_other_host: true
    else
      render json: { error: "Link not found" }, status: :not_found
    end
  end
end

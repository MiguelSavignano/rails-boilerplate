class SiteController < ApplicationController

  def demo
  end

  #POST /contact
  def contact
    @contact_info = contact_info_params
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'OK' }
    end
  end

  private
    def contact_info_params
      params.require(:contact_info).permit(
        :name,
        :email,
        :phone,
        :city,
        :text
      )
    end

end

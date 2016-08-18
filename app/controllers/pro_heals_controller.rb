class ProHealsController < ApplicationController
    def index
        @pro_heal = ProHeal.all
    end

    def new
        @pro_heal = ProHeal.new
    end

    def create
        pro_heal = ProHeal.new(params_pro_heal)
        pro_heal.avatar = params[:file]
        pro_heal.save
        redirect_to root_path
    end

    def show
        @pro_heal = ProHeal.find(params[:id])
    end

    def destroy
      pro_heal = ProHeal.find(params[:id])
      pro_heal.delete
      redirect_to root_path
    end

    private

    def params_pro_heal
        params.require(:pro_heal).permit(:name, :surname, :phone, :location, :job, :city, :postal_code, :avatar)
    end
end

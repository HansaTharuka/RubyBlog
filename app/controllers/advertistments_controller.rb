class AdvertistmentsController < ApplicationController
  def index
    @advertistments =Advertistment.all
  end

  def show
    @advertistment = Advertistment.find(params[:id])
  end

  def new 
    @advertistment =Advertistment.new
end

def create
    #render plain: params[:post].inspect
    @advertistment = Advertistment.new(advertistment_params)

    if(@advertistment.save)
        redirect_to @advertistment
    else
        render 'new'
    end
end

def edit
    @advertistment = Advertistment.find(params[:id])
end

def update
    @advertistment = Advertistment.find(params[:id])

    if(@advertistment.update(advertistment_params))
        redirect_to @advertistment
    else
        render 'edit'
    end
end

def destroy
    @advertistment = Advertistment.find(params[:id])
    @advertistment.destroy

    redirect_to advertistments_path
end

private def advertistment_params
    params.require(:advertistment).permit(:title, :body)
end
end
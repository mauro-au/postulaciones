class PostulationController < ApplicationController
  def create
    offer_id = params[:offer_id]
    user_id = current_user.id

    @postulation = Postulation.new(offer_id: offer_id, user_id: user_id)
    respond_to do |format|
      if @postulation.save
        format.html { redirect_to offer_path(offer_id), notice: "Postulación creada" }
        format.json { render :show, status: :created, location: @postulation }
      else
        format.html { redirect_to offer_path(offer_id), notice: "Postulación no creada" }
        format.json { render json: @postulation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  def check
    postulation = Postulation.find_by(id: params[:postulation_id])
    postulation.checked = true
    postulation.save
    redirect_back fallback_location: root_path
  end
end

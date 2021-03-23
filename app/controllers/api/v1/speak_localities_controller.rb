class Api::V1::SpeakLocalitiesController < Api::V1::BaseController
  before_action :set_speak_locality, only: [ :show ]
  def index
    @speak_localities = SpeakLocality.all
  end

  def show
  end

  private

  def set_speak_locality
    @speak_locality = SpeakLocality.find(params[:id])
  end
end

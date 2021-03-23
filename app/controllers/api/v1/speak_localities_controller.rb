class Api::V1::SpeakLocalitiesController < Api::V1::BaseController
  def index
    @speak_localities = SpeakLocality.all
  end
end

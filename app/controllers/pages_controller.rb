class PagesController < ApplicationController

  def home
    @localities_with_destinies = SpeakLocality.localities_with_destinies
  end
end

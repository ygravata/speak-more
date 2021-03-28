class PagesController < ApplicationController

  def home
    @localities_with_destinies = SpeakLocality.localities_with_destinies
  end

  def calculation
    @test = params

    @origin = SpeakLocality.find_by(code: params[:origin_code])
    @destiny_code = params[:destiny_code].to_i
    @plan_type = params[:plan_type].to_i
    @time = params[:minutes].to_i

    # @response = Net::HTTP.get(URI.parse("https://localhost:3000/api/v1/speak_localities/#{@origin.id}"))

    response = HTTParty.get("http://localhost:3000/api/v1/speak_localities/#{@origin.id}")
    calculation_base = response.parsed_response['speak_destinies'].find {|x| x["code"] == @destiny_code}
    cost = calculation_base["cost"]
    @plan_cost = plan_cost(@time, @plan_type, cost).round(2)
    @no_plan_cost = no_plan_cost(@time, cost).round(2)
  end


  private

  def plan_cost(time, plan_type, cost)
    if time > plan_type
      (plan_type - time) * (cost * 1.1 )
    else
      0
    end
  end

  def no_plan_cost(time, cost)
    cost*time
  end

end

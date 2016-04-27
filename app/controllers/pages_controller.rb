require 'net/http'
require 'uri'
require 'json'

class PagesController < ApplicationController
  def home
    @lead = Lead.new
  end

  def register
    @lead = Lead.create(lead_params)
    respond_to do |format|
      if @lead.save
        payload = {
          username:         "New lead!",
          text:             @lead.name + " " + @lead.email + " " + @lead.business.to_s
        }
        uri = URI.parse("https://hooks.slack.com/services/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")
        Net::HTTP.post_form(uri, :payload => JSON.generate(payload))
        format.html { redirect_to root_path, notice: "Thanks! We'll get back to you soon." }
      else
        format.html { redirect_to root_path, alert: "Not registered. Have you entered a correct email?"}
      end
    end
  end

  def lead_params
    params.require(:lead).permit(:name, :email, :business)
  end
end

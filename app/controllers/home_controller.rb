class HomeController < ApplicationController
  def index
    @gcn = GCNService.perform
  end
end

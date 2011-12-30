class ThingsController < ApplicationController
 
Pusher.app_id = '11589'
Pusher.key = '0cd67fd56172428851f1'
Pusher.secret = '3dd4afa4e5da690ec651'

 def create

	 @thing = params[:thing]

      Pusher['presenceEvents'].trigger('thing_create', @thing)
    
  end

end

class Application

  def call(env)
    resp = Rack::Response.new
    now = Time.now
    if now.hour >=12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end

end



    # it 'wishes user a good morning in the morning' do
    #   allow(Time).to receive(:now){
    #     Time.new(2015,11,27,9,30)
    #   }
    #   get '/'
    #   expect(last_response.body).to include("Morning")
    # end
    #
    # it 'wishes user a good afternoon in the afternoon' do
    #   allow(Time).to receive(:now){
    #     Time.new(2015,11,27,14,30)
    #   }
    #   get '/'
    #   expect(last_response.body).to include("Afternoon")

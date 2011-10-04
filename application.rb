
module MyApp # change this 
  class Application < Sinatra::Base
    
    # sinatra configs                                                                                                                                          
    set :run,         true
    set :dump_errors, true
    set :logging,     true

    set :root, File.dirname(__FILE__)
    set :env, ENV['RACK_ENV'] || 'development'

    def logger
      @logger ||= Logger.new(LOGFILE, File::WRONLY | File::APPEND)
    end

    # actions ######################################################################

    # create(send) an email
    post '/method1' do
      [ 202, 'ok' ]
    end

    get '/ohai' do
      [ 200, '<html><head>ohai!</head><body><h1>ohai</h1><p>we are good, dudes.</p></body></html>' ]
    end

  end
end 

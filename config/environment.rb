
# application configs
LOGFILE         = File.join( File.dirname(__FILE__), '..', 'log', 'application.log' )
COOKIEFILE      = File.join( File.dirname(__FILE__), '..', 'var', 'cookie.dat')
[ LOGFILE, COOKIEFILE ].map { |d| File.dirname(d) }.each { |d| Dir.mkdir(d) unless File::directory?(d) }

env = (ENV['RACK_ENV'] || 'development').to_sym
puts "loading '#{env}' configuration"

case env
when :production
  FOO = 'foo'

when :staging
  FOO = 'stage'

when :development
  FOO = 'stage'

when :test
  FOO = 'stage'

else
  raise "Could not determine configuration to use for environment '#{env}'"
end

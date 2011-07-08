if RUBY_VERSION >= '1.9.2'
  YAML::ENGINE.yamler = 'syck'
end

$LOAD_PATH.unshift(File.expand_path('../', __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}
require 'test/unit'

begin
  require File.dirname(__FILE__) + '/../../lib/swinger/lib/swinger'
rescue LoadError
  puts 'Swinger não está devidamente instalado. Veja o README.'
  exit(-1)
end

begin
  require File.dirname(__FILE__) + '/../../dist/sistema.jar'
rescue LoadError
  puts 'A aplicação precisa ser compilada. Veja o README.'
  exit(-1)
end

World(Test::Unit::Assertions)

Before do
  Login.main([].to_java(:string))
end

After do
  @container.close if @container
end
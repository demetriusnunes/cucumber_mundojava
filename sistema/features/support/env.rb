require 'test/unit'
require File.dirname(__FILE__) + '/jemmy.jar'
org.netbeans.jemmy.JemmyProperties.set_current_output org.netbeans.jemmy.TestOut.null_output

World(Test::Unit::Assertions)

Before do
  Login.main([].to_java(:string))
end

After do
  @container.close if @container
end
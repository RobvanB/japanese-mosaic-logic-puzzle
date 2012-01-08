When /^I run mosaic (.*)$/ do |args|
  run(unescape("../../bin/mosaic.rb #{args}"), false)
end

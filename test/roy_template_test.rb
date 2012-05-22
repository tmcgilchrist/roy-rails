require 'test/unit'

require 'tilt'


class RoyTemplateTest < Test::Unit::TestCase

  def test_compile_template
    template = Roy::RoyTemplate.new { |t| "console.log 'Hello, World!'\n" }
    assert_match "(function() {\nconsole.log('Hello, World!');\n})();\n", template.render
  end

  def test_compile_template_multiple_times
    template = Roy::RoyTemplate.new { |t| "console.log 'Hello, World!'\n" }
    3.times {assert_match "(function() {\nconsole.log('Hello, World!');\n})();\n", template.render}
  end
end

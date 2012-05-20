require 'test_helper'
require 'rails/generators/roy/assets/assets_generator'

class AssetGeneratorTest < Rails::Generators::TestCase
  tests Roy::Generators::AssetsGenerator

  destination File.expand_path("../tmp", __FILE__)
  setup :prepare_destination

  def test_assets
    run_generator %w(posts)
    assert_no_file "app/assets/javascripts/posts.js"
    assert_file "app/assets/javascripts/posts.js.roy"
  end
end

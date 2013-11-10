# encoding: utf-8
require 'test/unit'
require 'ponymizer'

class PonymizerTest < Test::Unit::TestCase

  def test_gimmie_a_pony!
    pony = Ponymizer.new.gimmie_a_pony!
    assert pony.class == String
    assert pony.size > 0
  end

  def test_generate
    pony = Ponymizer.new.generate
    assert pony.size == 100
    assert pony[0].class == String
    assert pony[0].size > 0
  end

end
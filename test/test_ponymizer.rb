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

  def test_names
    names = Ponymizer.new.names
    names.each do |name|
      assert_equal name.strip, name
      assert name.strip.size > 0

      # pony names can contain any unicode word character,
      # as well as single spaces, dots, dashes and '
      if RUBY_VERSION =~ /^1.8/
        assert name =~ /^[\w\ \.\-']+$/u
        assert !(name =~ /\s\s/u)
        assert !(name =~ /[\.\-'][\.\-']/u)
      else
        assert name =~ /^[[[:alnum:]]\ \.\-']+$/
        assert !(name =~ /\s\s/)
        assert !(name =~ /[\.\-'][\.\-']/)
      end
    end
  end

end
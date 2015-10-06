# encoding: utf-8

require 'helper'

class TestFakerNameDE < Test::Unit::TestCase
  def setup
    @tester = FFaker::NameDE
  end

  def test_name
    assert_match(/\A([\w']+\.? ?){2,3}\z/, @tester.name)
  end

  def test_prefix
    assert_match(/\A[A-Z][a-z]+\.?\z/, @tester.prefix)
  end

  def test_suffix
    assert_include(@tester::SUFFIXES, @tester.suffix)
  end
end

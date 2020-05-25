# frozen_string_literal: true

require 'test_helper'

class OkAcl::Test < ActiveSupport::TestCase
  test 'truth' do
    assert_kind_of Module, OkAcl
  end
end

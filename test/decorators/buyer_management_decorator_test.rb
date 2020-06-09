# frozen_string_literal: true

require 'test_helper'

class BuyerManagementDecoratorTest < ActiveSupport::TestCase
  def setup
    @buyer_management = BuyerManagement.new.extend BuyerManagementDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end

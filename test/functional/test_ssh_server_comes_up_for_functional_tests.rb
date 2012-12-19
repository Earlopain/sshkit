require 'helper'

module Deploy

  class TestHost < FunctionalTest

    def host
      @_host ||= Host.new('')
    end

    def test_that_it_works
      assert true
    end

    def test_creating_a_user_gives_us_back_his_private_key_as_a_string
      keys = create_user_with_key(:peter)
      assert_equal [:one, :two, :three], keys.keys
      assert keys.values.all?
    end

  end

end

require('minitest/autorun')
require_relative('bears')

class TestBear < MiniTest::Test


  def setup

    @bear1 = Bear.new('Jeremy', 'sun bear', [])
    @bear2 = Bear.new('Susan', 'black bear', [])
    fish1 = Fish.new('Sheila')
    fish2 = Fish.new('Bruce')
    fish3 = Fish.new('Barbie')

    fishes = [fish1, fish2, fish3]

    @river = River.new(fishes)

  end



  def test_roar
    bear_says = @bear1.roar
    assert_equal('ROAR!', bear_says)
  end

  def test_roar
    bear_says = @bear2.roar
    assert_equal('ROAR!', bear_says)
  end

  def test_take_fish
    @bear1.take_fish(@river.fishes)
    @bear1.take_fish(@river.fishes)
    assert_equal(['Barbie', 'Bruce'], @bear1.food_array)
  end


end
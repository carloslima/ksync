require "spec_helper"
require "ksync"

class Board < Ksync::Model
end

describe Board do
  it "can be defined" do
    board = Board.new title: 'Board title'
    board.title.must_equal 'Board title'
    board.dirty?.must_equal true
  end

  it "can load based on fixture" do
    class Board
      adaptor Ksync::Adaptor::Fixture
      FIXTURE_DATA = {
        boards: [
          {
            id: 1,
            title: 'Board #1'
          }
        ]
      }
    end
    board_1 = Board.find(1)
    board_1.title.must_equal 'Board #1'
    board.dirty?.must_equal false
    board.update_at.wont_equal Time.new
  end
end

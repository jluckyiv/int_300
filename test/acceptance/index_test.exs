defmodule IndexTest do
  use ExUnit.Case
  use Hound.Helpers

  hound_session

  test "Index page renders Elm" do
    navigate_to("/")
    assert visible_page_text() =~ "INT-300"
  end

end



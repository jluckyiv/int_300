module App exposing (..)

import Html exposing (text)
import Html.App as App


-- MODEL


type alias Model =
    String



-- INIT


init =
    ( "Welcome to INT-300", Cmd.none )



-- UPDATE


update msg model =
    ( model, Cmd.none )



-- VIEW


view model =
    text model



-- SUBSCRIPTIONS


subscriptions model =
    Sub.none



-- MAIN


main =
    App.program
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }

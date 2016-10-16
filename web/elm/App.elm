module App exposing (..)

import Html exposing (text, a, div)
import Html.Attributes exposing (href, id, class)
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
    div []
        [ div []
            [ text model ]
        , div []
            [ a
                [ href "/template/inline/int300.pdf"
                , id "int-300-inline"
                ]
                [ text "INT-300 inline" ]
            ]
        , div []
            [ a
                [ href "/template/inline/int300-filled.pdf"
                , id "int-300-filled-inline"
                ]
                [ text "INT-300 filled inline" ]
            ]
        , div []
            [ a
                [ href "/template/attachment/int300.pdf"
                , id "int-300-attachment"
                ]
                [ text "INT-300 attachment" ]
            ]
        , div []
            [ a
                [ href "/template/attachment/int300-filled.pdf"
                , id "int-300-filled-attachment"
                ]
                [ text "INT-300 filled attachment" ]
            ]
        ]



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

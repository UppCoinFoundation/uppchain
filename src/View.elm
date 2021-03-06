--View.elm ---
--
--Filename: View.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 13:42:45 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Sat Dec 30 14:22:26 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 112
--URL:
--Doc URL:
--Keywords:
--Compatibility:
--
--
--Commentary:
--
--
--
--
--Change Log:
--
--
--
--
--
--
--
--Code:


module View
    exposing
        ( view
        )

-- Internal packages

import Commands exposing (..)
import Html.Ids exposing (..)
import Html.Nodes exposing (script)
import Model exposing (Model)


-- External packages

import Html exposing (Html, Attribute, button, div, text, fieldset, input, label, textarea)
import Html.Events exposing (onClick)
import Html.Attributes exposing (..)


-- VIEW
-- Texts


start : Html Command
start =
    text "Start"


send : Html Command
send =
    text "Send"


close : Html Command
close =
    text "Close"



-- view


view : Model -> Html Command
view model =
    div [] (html model ++ scripts)


html : Model -> List (Html Command)
html model =
    [ div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (toString model.counter) ]
        , button [ onClick Increment ] [ text "+" ]
        ]
    , div [ myStyle ]
        [ textarea
            [ id dataChannelSend
            , disabled (model.dataChannelSendDisabled)
            , placeholder "Press Start, enter some text, then press Send."
            ]
            []
        , textarea
            [ id dataChannelReceive
            , disabled True
            ]
            []
        , div [ id buttons ]
            [ button [ id startButton, onClick (RTCPeerCommand CreateConnection) ] [ start ]
            , button [ id sendButton ] [ send ]
            , button [ id closeButton ] [ close ]
            ]
        ]
    , div []
        [ text (toString model.rtcPeerConnetions) ]

    -- , div [id "main"] []
    ]


scripts : List (Html Command)
scripts =
    [ script "../js/lib/adapter.js" []
    , script "../js/webrtc.js" []
    ]


myStyle : Attribute msg
myStyle =
    style
        [ ( "margin-top", "100px" ) ]



--
--View.elm ends here

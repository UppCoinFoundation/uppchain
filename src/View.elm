--View.elm ---
--
--Filename: View.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 13:42:45 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Fri Dec 29 18:03:06 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 92
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

module View exposing
    ( view
    )

-- Internal packages
import Model exposing (Model)
import Commands exposing (Command(..))
import Html.Ids exposing (..)
import Html.Nodes exposing (script)

-- External packages
import Html exposing (Html, Attribute, button, div, text)
import Html exposing (Html, fieldset, input, label, text, textarea)
import Html.Events exposing (onClick)
import Html.Attributes exposing (..)


-- VIEW

-- Texts
start : Html Command
start = text "Start"

send : Html Command
send = text "Send"

close : Html Command
close = text "Close"


-- view
view : Model -> Html Command
view model =

  div [] (html model ++ scripts)

html : Model -> List (Html Command)
html model = []
    [ div [] [ button [ onClick Decrement ] [ text "-" ]
              , div [] [ text (toString model.counter) ]
              , button [ onClick Increment ] [ text "+" ]]
     , div [myStyle]
       [ textarea [ id dataChannelSend
                  , disabled (model.dataChannelSendDisabled)
                  , placeholder "Press Start, enter some text, then press Send."
                  ] []
       , textarea [ id dataChannelReceive
                  , disabled True
                  ] []
       , div [id buttons ]

         [ button [ id startButton, onClick CreateConnection ] [ start ]
         , button [ id sendButton ]  [ send ]
         , button [ id closeButton ] [ close ]
         ]
       ]
     -- , div [id "main"] []
     ]

scripts :List (Html Command)
scripts =
    [ script "../js/lib/adapter.js" []
    , script "../js/webrtc.js" []
    ]

myStyle : Attribute msg
myStyle =
  style
    [ ("margin-top", "100px") ]

--
--View.elm ends here

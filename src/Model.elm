--Model.elm ---
--
--Filename: Model.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 13:40:33 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Sat Dec 30 12:53:45 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 52
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


module Model exposing (..)

-- MODEL

import Network.WebRTC.RTCPeerConnection exposing (RTCPeerConnection)
import Dict exposing (Dict, insert)


type alias Model =
    { counter : Int
    , dataChannelSendDisabled : Bool
    , rtcPeerConnetions : Dict Int (RTCPeerConnection String)
    }



-- Setters


setCounter : Int -> Model -> Model
setCounter c m =
    { m | counter = c }


setDataChannelSendDisabled : Bool -> Model -> Model
setDataChannelSendDisabled d m =
    { m | dataChannelSendDisabled = d }


addRTCPeerConnection : RTCPeerConnection String -> Model -> Model
addRTCPeerConnection r m =
    { m | rtcPeerConnetions = insert r.index r m.rtcPeerConnetions }



--
--Model.elm ends here

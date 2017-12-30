--Subscriptions.elm ---
--
--Filename: Subscriptions.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 16:26:28 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Sat Dec 30 14:20:53 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 54
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


module Subscriptions exposing (..)

import Commands exposing (..)
import Model exposing (..)
import Network.WebRTCPorts exposing (..)


subscriptions : Model -> Sub Command
subscriptions model =
    Sub.batch
        [ -- disableTextarea DisableDataChannelSend
          newRTCPeerConnection (RTCPeerCommand << NewRTCPeerConnection)
        , newRTCPeerConnection (RTCPeerCommand << UpdateRTCPeerConnection)
        , rtcPeerConnectionOnOpen (\_ -> Increment)
        , rtcPeerConnectionOnOpen (\_ -> Decrement)
        ]



--
--Subscriptions.elm ends here

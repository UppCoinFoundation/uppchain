--Subscriptions.elm ---
--
--Filename: Subscriptions.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 16:26:28 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Sat Dec 30 13:05:28 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 37
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
import Network.WebRTCPorts exposing (disableTextarea, newRTCPeerConnection)


subscriptions : Model -> Sub Command
subscriptions model =
    Sub.batch
        [ disableTextarea DisableDataChannelSend
        , newRTCPeerConnection NewRTCPeerConnection
        , newRTCPeerConnection UpdatedRTCPeerConnection
        ]



--
--Subscriptions.elm ends here

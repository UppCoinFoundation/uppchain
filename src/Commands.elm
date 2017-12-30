--Commands.elm ---
--
--Filename: Commands.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 15:51:35 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Sat Dec 30 14:19:08 2017 (+0100)
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


module Commands exposing (..)

import Network.WebRTC.RTCPeerConnection exposing (RTCPeerConnection)


type Command
    = Increment
    | Decrement
    | RTCPeerCommand WebRTCPeerCommand


type WebRTCPeerCommand
    = CreateConnection
    | NewRTCPeerConnection (RTCPeerConnection String)
    | UpdateRTCPeerConnection (RTCPeerConnection String)



--
--Commands.elm ends here

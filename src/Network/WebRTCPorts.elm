--WebRTCPort.elm ---
--
--Filename: WebRTCPort.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 18:13:30 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Sat Dec 30 14:16:24 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 62
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


port module Network.WebRTCPorts exposing (..)

import Network.WebRTC.RTCPeerConnection exposing (RTCPeerConnection)


-- PORTS


port createConnection : String -> Cmd msg


port disableTextarea : (Bool -> msg) -> Sub msg



-- Create a new RTCPeerConnection
-- Unsure whether Maybe string is correct:


port rtcPeerConnection : ( Maybe String, Maybe String ) -> Cmd msg


port rtcPeerConnectionCreateDataChannel : ( RTCPeerConnection String, Maybe String ) -> Cmd msg


port newRTCPeerConnection : (RTCPeerConnection String -> msg) -> Sub msg


port updateRTCPeerConnection : (RTCPeerConnection String -> msg) -> Sub msg


port rtcPeerConnectionOnIceCanidate : (RTCPeerConnection String -> msg) -> Sub msg


port rtcPeerConnectionOnOpen : (RTCPeerConnection String -> msg) -> Sub msg


port rtcPeerConnectionOnClose : (RTCPeerConnection String -> msg) -> Sub msg



-- TODO nice interface
-- port newRTCPeerConnetion : RTCPeerConnection -> Cmd msg
--
--WebRTCPort.elm ends here

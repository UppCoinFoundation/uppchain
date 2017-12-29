--WebRTCPort.elm ---
--
--Filename: WebRTCPort.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 18:13:30 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Fri Dec 29 20:24:44 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 12
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

-- PORTS


port disableTextarea : (Bool -> msg) -> Sub msg


port createConnection : String -> Cmd msg



-- TODO nice interface
-- port newRTCPeerConnetion : RTCPeerConnection -> Cmd msg
--
--WebRTCPort.elm ends here

--WebRTCPort.elm ---
--
--Filename: WebRTCPort.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 18:13:30 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Fri Dec 29 18:13:53 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 2
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

module Network.WebRTCPort exposing (..)

-- PORTS
port disableButton : (Bool -> msg) -> Sub msg

port createConnection : String -> Cmd msg

--
--WebRTCPort.elm ends here

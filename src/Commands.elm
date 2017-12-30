--Commands.elm ---
--
--Filename: Commands.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 15:51:35 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Sat Dec 30 13:05:47 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 17
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


module Commands
    exposing
        ( Command(..)
        )

import Network.WebRTC.RTCPeerConnection exposing (RTCPeerConnection)


type Command
    = Increment
    | Decrement
    | DisableDataChannelSend Bool
    | CreateConnection
    | NewRTCPeerConnection (RTCPeerConnection String)
    | UpdatedRTCPeerConnection (RTCPeerConnection String)



--
--Commands.elm ends here

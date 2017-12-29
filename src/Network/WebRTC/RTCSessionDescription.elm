--RTCSessionDescription.elm ---
--
--Filename: RTCSessionDescription.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 20:17:03 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Fri Dec 29 20:23:39 2017 (+0100)
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


module Network.WebRTC.RTCSessionDescription exposing (..)


type RTCSdpType
    = Answer
    | Offer
    | Pranswer
    | Rollback


type alias RTCSessionDescription =
    { sdpType : RTCSdpType
    , sdp : String
    }



--
--RTCSessionDescription.elm ends here

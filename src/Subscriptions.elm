--Subscriptions.elm ---
--
--Filename: Subscriptions.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 16:26:28 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Fri Dec 29 19:41:22 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 27
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
import Network.WebRTCPorts exposing (disableTextarea)


subscriptions : Model -> Sub Command
subscriptions model =
    Sub.batch
        [ disableTextarea DisableDataChannelSend
        ]



--
--Subscriptions.elm ends here

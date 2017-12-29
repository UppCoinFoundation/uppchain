--Subscriptions.elm ---
--
--Filename: Subscriptions.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 16:26:28 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Fri Dec 29 17:15:33 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 21
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
import WebRTCPort exposing (disableButton)

subscriptions : Model -> Sub Command
subscriptions model =
  Sub.batch [ disableButton DisableDataChannelSend
            ]

--
--Subscriptions.elm ends here

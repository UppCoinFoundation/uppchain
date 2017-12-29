--Model.elm ---
--
--Filename: Model.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 13:40:33 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Fri Dec 29 18:02:50 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 20
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

module Model exposing (..)

-- MODEL
type alias Model = { counter : Int
                   , dataChannelSendDisabled : Bool
                   }


-- Setters
setCounter : Int -> Model -> Model
setCounter c m = { m | counter = c }

setDataChannelSendDisabled : Bool -> Model -> Model
setDataChannelSendDisabled d m = { m | dataChannelSendDisabled = d }


--
--Model.elm ends here

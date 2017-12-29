--Main.elm ---
--
--Filename: Main.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 13:14:33 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Fri Dec 29 18:14:03 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 61
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


port module Main exposing (main)

import Model exposing (Model)
import View exposing (view)
import Subscriptions exposing (..)
import Commands exposing (..)
import Update exposing (..)


import Html exposing (Html, program, fieldset, input, label, text)
-- import Html.Attributes exposing (style, type_)


main : Program Never Model Command
main = program { init=init, update=update, view=view, subscriptions=subscriptions}

init : (Model, Cmd Command)
init = (model , Cmd.none)

-- | Default model (starting poing for application)
model : Model
model = Model 0 True


--
--Main.elm ends here

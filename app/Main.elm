--Main.elm ---
--
--Filename: Main.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 13:14:33 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Fri Dec 29 19:42:14 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 75
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


module Main exposing (main)

import Commands exposing (..)
import Html exposing (Html, program, fieldset, input, label, text)
import Model exposing (Model)
import Subscriptions exposing (..)
import Update exposing (..)
import View exposing (view)


main : Program Never Model Command
main =
    program { init = init, update = update, view = view, subscriptions = subscriptions }



-- Initial state


init : ( Model, Cmd Command )
init =
    ( model, Cmd.none )



-- | Default model (starting poing for application)


model : Model
model =
    Model 0 True



--
--Main.elm ends here

--Main.elm ---
--
--Filename: Main.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 13:14:33 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Sat Dec 30 12:54:59 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 85
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

-- Internal modules

import Commands exposing (..)
import Model exposing (Model)
import Subscriptions exposing (..)
import Update exposing (..)
import View exposing (view)


-- External packages

import Dict exposing (empty)
import Html exposing (Html, program, fieldset, input, label, text)


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
    Model 0 True empty



--
--Main.elm ends here

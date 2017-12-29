--Update.elm ---
--
--Filename: Update.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 13:44:45 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Fri Dec 29 19:40:15 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 71
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


module Update
    exposing
        ( update
        )

import Commands exposing (..)
import Model exposing (..)
import Network.WebRTCPorts exposing (createConnection)


-- UPDATE


update : Command -> Model -> ( Model, Cmd Command )
update msg model =
    ( newModel msg model, newCmd msg )


newModel : Command -> Model -> Model
newModel msg model =
    case msg of
        Increment ->
            model |> setCounter (model.counter + 1)

        Decrement ->
            model |> setCounter (model.counter - 1)

        DisableDataChannelSend dis ->
            model |> setDataChannelSendDisabled dis

        CreateConnection ->
            model


newCmd : Command -> Cmd Command
newCmd msg =
    case msg of
        CreateConnection ->
            createConnection "asdf"

        _ ->
            Cmd.none



--
--Update.elm ends here

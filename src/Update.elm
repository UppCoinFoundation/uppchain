--Update.elm ---
--
--Filename: Update.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 13:44:45 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Fri Dec 29 18:04:09 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 38
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


module Update exposing
    ( update
    )

import Model exposing (..)
import Commands exposing (..)
import Main exposing (createConnection)

-- UPDATE

update : Command -> Model -> (Model, Cmd Command)
update msg model =
  let newModel = case msg of
                     Increment -> model |> setCounter (model.counter + 1)
                     Decrement -> model |> setCounter (model.counter - 1)
                     DisableDataChannelSend dis -> model |> setDataChannelSendDisabled dis
                     CreateConnection -> createConnection "asdf"
  in (newModel, Cmd.none)


--
--Update.elm ends here

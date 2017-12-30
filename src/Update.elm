--Update.elm ---
--
--Filename: Update.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 13:44:45 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Sat Dec 30 14:19:12 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 131
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
import Network.WebRTCPorts exposing (rtcPeerConnection, rtcPeerConnectionCreateDataChannel)


-- UPDATE


update : Command -> Model -> ( Model, Cmd Command )
update msg model =
    ( newModel msg model, newCmd msg )


newModel : Command -> Model -> Model
newModel msg model =
    case msg of
        -- Actions
        Increment ->
            model |> setCounter (model.counter + 1)

        Decrement ->
            model |> setCounter (model.counter - 1)

        -- JS Inputs
        RTCPeerCommand cmd ->
            handleRtcPeerCommand cmd model


handleRtcPeerCommand : WebRTCPeerCommand -> Model -> Model
handleRtcPeerCommand cmd model =
    case cmd of
        CreateConnection ->
            model

        NewRTCPeerConnection c ->
            addRTCPeerConnection c model

        UpdateRTCPeerConnection c ->
            addRTCPeerConnection c model


newCmd : Command -> Cmd Command
newCmd msg =
    case msg of
        RTCPeerCommand cmd ->
            case cmd of
                CreateConnection ->
                    rtcPeerConnection ( Nothing, Nothing )

                NewRTCPeerConnection c ->
                    rtcPeerConnectionCreateDataChannel ( c, Nothing )

                UpdateRTCPeerConnection c ->
                    rtcPeerConnectionCreateDataChannel ( c, Nothing )

        _ ->
            Cmd.none



--
--Update.elm ends here

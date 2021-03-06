--RTCPeerConnection.elm ---
--
--Filename: RTCPeerConnection.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 20:12:47 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Sat Dec 30 12:59:16 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 31
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


module Network.WebRTC.RTCPeerConnection exposing (RTCPeerConnection)


type alias RTCPeerConnection a =
    { index : Int
    , canTrickleIceCandidates : Maybe Bool
    , currentLocalDescription : Maybe a
    , currentRemoteDescription : Maybe a
    , iceConnectionState : String
    , iceGatheringState : String
    , idpLoginUrl : Maybe a
    , localDescription : Maybe a
    , onaddstream : Maybe a
    , onaddtrack : Maybe a
    , ondatachannel : Maybe a
    , onicecandidate : Maybe a
    , oniceconnectionstatechange : Maybe a
    , onicegatheringstatechange : Maybe a
    , onnegotiationneeded : Maybe a
    , onremovestream : Maybe a
    , onsignalingstatechange : Maybe a
    , ontrack : Maybe a

    -- , peerIdentity : Maybe RTCIdentityAssertion  -- THIS IS A FUNCTION (PROMISE)
    , pendingLocalDescription : Maybe a
    , pendingRemoteDescription : Maybe a
    , remoteDescription : Maybe a
    , signalingState : String
    }


type alias RTCIdentityAssertion =
    { state : Maybe String }



-- type alias RTCPeerConnection = { canTrickleIceCandidates : Bool
--                                , connectionState : String
--                                , currentLocalDescription : RTCSessionDescription
--                                , currentRemoteDescription : RTCSessionDescription
--                                , defaultIceServers
--     The read-only property RTCPeerConnection.defaultIceServers returns an array of objects based on the RTCIceServer dictionary, which indicates what, if any, ICE servers the browser will use by default if none are provided to the RTCPeerConnection in its RTCConfiguration. However, browsers are not required to provide any default ICE servers at all.
-- iceConnectionState Read only
--     The read-only property RTCPeerConnection.iceConnectionState returns an enum of type RTCIceConnectionState which state of the ICE agent associated with the RTCPeerConnection.
-- iceGatheringState Read only
--     The read-only property RTCPeerConnection.iceGatheringState returns an enum of type RTCIceGatheringState that describes connection's ICE gathering state. This lets you detect, for example, when collection of ICE candidates has finished.
-- localDescription Read only
--     The read-only property RTCPeerConnection.localDescription returns an RTCSessionDescription describing the session for the local end of the connection. If it has not yet been set, this is null.
-- peerIdentity Read only
--     The read-only property RTCPeerConnection.peerIdentity returns an RTCIdentityAssertion, containing a DOMString once set and verified. If no peer has yet been set and verified, this property will return null. Once set, via the appropriate method, it can't be changed.
-- pendingLocalDescription Read only
--     The read-only property RTCPeerConnection.pendingLocalDescription returns an RTCSessionDescription object describing a pending configuration change for the local end of the connection. This does not describe the connection as it currently stands, but as it may exist in the near future. Use RTCPeerConnection.currentLocalDescription or RTCPeerConnection.localDescription to get the current state of the endpoint. For details on the difference, see Pending and current descriptions in WebRTC connectivity.
-- pendingRemoteDescription Read only
--     The read-only property RTCPeerConnection.pendingRemoteDescription returns an RTCSessionDescription object describing a pending configuration change for the remote end of the connection. This does not describe the connection as it currently stands, but as it may exist in the near future. Use RTCPeerConnection.currentRemoteDescription or RTCPeerConnection.remoteDescription to get the current session description for the remote endpoint. For details on the difference, see Pending and current descriptions in WebRTC connectivity.
-- remoteDescription Read only
--     The read-only property RTCPeerConnection.remoteDescription returns a RTCSessionDescription describing the session (which includes configuration and media information) for the remote end of the connection. If this hasn't been set yet, this is null.
-- sctp
--     The read-only sctp property on the RTCPeerConnection interface returns an RTCSctpTransport describing the SCTP transport over which SCTP data is being sent and received. If SCTP hasn't been negotiated, this value is null.
-- signalingState Read only
--     The read-only signalingState property on the RTCPeerConnection interface returns one of the string values specified by the RTCSignalingState enum; these values describe the state of the signaling process on the local end of the connection while connecting or reconnecting to another peer. See Signaling in Lifetime of a WebRTC session for more details about the signaling process.
--                                            }
--
--RTCPeerConnection.elm ends here

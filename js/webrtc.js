'use strict';

// var localConnection;
// var remoteConnection;
// var sendChannel;
// var receiveChannel;
// var pcConstraint;
// var dataConstraint;

// Keep connection variables
var rtcPeerConnections = [];

// var dataChannelSend = document.getElementById('dataChannelSend');
// var dataChannelReceive = document.getElementById('dataChannelReceive');
// var startButton = document.getElementById('startButton');
// var sendButton = document.getElementById('sendButton');
// var closeButton = document.getElementById('closeButton');

// startButton.onclick = createConnection;
// sendButton.onclick = sendData;
// closeButton.onclick = closeDataChannels;

// function enableStartButton() {
//     startButton.disabled = false;
// }

// function disableSendButton() {
//     sendButton.disabled = true;
// }


function getByIndex(list,elmObj) {
    var index = elmObj.index;
    return list[index];
}


function addToListAndIndex(con,list) {
    let idx = list.length;
    con.index = idx;
    list.push(con);
    return con;
}


// Convert a RTCPeerConnection to the elm data structure.
function toElmRTCPeerConnection(con) {
    var obj = { index: con.index,
                canTrickleIceCandidates: con.canTrickleIceCandidates,
                currentLocalDescription: con.currentLocalDescription,
                currentRemoteDescription: con.currentRemoteDescription,
                iceConnectionState: con.iceConnectionState,
                iceGatheringState: con.iceGatheringState,
                idpLoginUrl: con.idpLoginUrl,
                localDescription: con.localDescription,
                onaddstream: con.onaddstream,
                onaddtrack: con.onaddtrack,
                ondatachannel: con.ondatachannel,
                onicecandidate: con.onicecandidate,
                oniceconnectionstatechange: con.oniceconnectionstatechange,
                onicegatheringstatechange: con.onicegatheringstatechange,
                onnegotiationneeded: con.onnegotiationneeded,
                onremovestream: con.onremovestream,
                onsignalingstatechange: con.onsignalingstatechange,
                ontrack: con.ontrack,
                // peerIdentity: toElmRTCIdentityAssertion(con.peerIdentity),
                pendingLocalDescription: con.pendingLocalDescription,
                pendingRemoteDescription: con.pendingRemoteDescription,
                remoteDescription: con.remoteDescription,
                signalingState: con.signalingState
              };
    return obj;
}


// Creates a new RTCPeerConnection and sends it to Elm.
app.ports.rtcPeerConnection.subscribe(function(args) {
    var [servers,pcConstraint] = args;
    var c = new RTCPeerConnection(servers, pcConstraint);
    var con = addToListAndIndex(c,rtcPeerConnections); // save for later access
    // Add callbacks
    var elmCon = toElmRTCPeerConnection(con);
    con.onopen = onOpen.bind(null,con.index);
    con.onclose = app.ports.rtcPeerConnectionOnClose.send(elmCon);
    app.ports.newRTCPeerConnection.send(elmCon);
});


// Creates a data channel on the RTCPeerConnection specified and returns the
// updated connection.
app.ports.rtcPeerConnectionCreateDataChannel.subscribe(function(args) {
    var [elmCon,dataConstraint] = args;
    var con = getByIndex(rtcPeerConnections,elmCon);
    con.createDataChannel('sendDataChannel', dataConstraint);

    app.ports.updateRTCPeerConnection.send(toElmRTCPeerConnection(con));
});


// app.ports.rtcPeerConnectionCreateOffer.subscribe(function(args) {
//     var [elmLocal,elmRemote,desc] = args;
//     var local = getByIndex(rtcPeerConnections,elmLocal);
//     var remote = getByIndex(rtcPeerConnections,elmRemote);
//     con.createOffer().then(createOfferSuccess.bind(null, local,remote), createOfferFailure);
//     trace('Offer from localConnection \n' + desc.sdp);
//     // local.
// });

function createOfferSuccess(local,remote,desc) {
    trace('Offer from localConnection \n' + desc.sdp);
    local.setLocalDescription(desc);
    remote.setRemoteDescription(desc);
    // TODO
    remoteConnection.createAnswer().then(
        gotDescription2,
        onCreateSessionDescriptionError
    );
}

function gotDescription1(con,desc) {
    trace('Offer from localConnection \n' + desc.sdp);
    con.setLocalDescription(desc);
    remoteConnection.setRemoteDescription(desc);
    remoteConnection.createAnswer().then(
        gotDescription2,
        onCreateSessionDescriptionError
    );
}


function onOpen(index,ev) {
    app.ports.rtcPeerConnectionOnIceCanidate.send(toElmRTCPeerConnection(ev));
}


function onIceCandidate(ev) {
    app.ports.rtcPeerConnectionOnIceCanidate.send(toElmRTCPeerConnection(ev));
}


function todo() {
    // app.ports.disableTextarea.send(false);

    var servers = null;
    pcConstraint = null;
    dataConstraint = null;
    trace('Using SCTP based data channels');
    // For SCTP, reliable and ordered delivery is true by default.
    // Add localConnection to global scope to make it visible
    // from the browser console.
    window.localConnection = localConnection = new RTCPeerConnection(servers, pcConstraint);
    trace('Created local peer connection object localConnection');
    sendChannel = localConnection.createDataChannel('sendDataChannel', dataConstraint);
    trace('Created send data channel');
    trace('Callbacks TODO');
    localConnection.onicecandidate = iceCallback1;
    sendChannel.onopen = onSendChannelStateChange;
    // sendChannel.onclose = onSendChannelStateChange;

    // Add remoteConnection to global scope to make it visible
    // from the browser console.
    window.remoteConnection = remoteConnection = new RTCPeerConnection(servers, pcConstraint);
    trace('Created remote peer connection object remoteConnection');
    var elmCon = toElmRTCPeerConnection(localConnection,inboundconnections);
    trace('Callbacks TODO');
    trace(JSON.stringify(elmCon))
    app.ports.newRTCPeerConnection.send(elmCon);

    // remoteConnection.onicecandidate = iceCallback2;
    // remoteConnection.ondatachannel = receiveChannelCallback;

    // localConnection.createOffer().then(
    //     gotDescription1,
    //     onCreateSessionDescriptionError
    // );
    // startButton.disabled = true;
    // closeButton.disabled = false;

};

// function onCreateSessionDescriptionError(error) {
//     trace('Failed to create session description: ' + error.toString());
// }

// function sendData() {
//     var data = dataChannelSend.value;
//     sendChannel.send(data);
//     trace('Sent Data: ' + data);
// }

// function closeDataChannels() {
//     trace('Closing data channels');
//     sendChannel.close();
//     trace('Closed data channel with label: ' + sendChannel.label);
//     receiveChannel.close();
//     trace('Closed data channel with label: ' + receiveChannel.label);
//     localConnection.close();
//     remoteConnection.close();
//     localConnection = null;
//     remoteConnection = null;
//     trace('Closed peer connections');
//     startButton.disabled = false;
//     sendButton.disabled = true;
//     closeButton.disabled = true;
//     dataChannelSend.value = '';
//     dataChannelReceive.value = '';
//     dataChannelSend.disabled = true;
//     disableSendButton();
//     enableStartButton();
// }


// function gotDescription2(desc) {
//     remoteConnection.setLocalDescription(desc);
//     trace('Answer from remoteConnection \n' + desc.sdp);
//     localConnection.setRemoteDescription(desc);
// }

// function iceCallback1(event) {
//     trace('local ice callback');
//     if (event.candidate) {
//         remoteConnection.addIceCandidate(
//             event.candidate
//         ).then(
//             onAddIceCandidateSuccess,
//             onAddIceCandidateError
//         );
//         trace('Local ICE candidate: \n' + event.candidate.candidate);
//     }
// }

// function iceCallback2(event) {
//     trace('remote ice callback');
//     if (event.candidate) {
//         localConnection.addIceCandidate(
//             event.candidate
//         ).then(
//             onAddIceCandidateSuccess,
//             onAddIceCandidateError
//         );
//         trace('Remote ICE candidate: \n ' + event.candidate.candidate);
//     }
// }

// function onAddIceCandidateSuccess() {
//     trace('AddIceCandidate success.');
// }

// function onAddIceCandidateError(error) {
//     trace('Failed to add Ice Candidate: ' + error.toString());
// }

// function receiveChannelCallback(event) {
//     trace('Receive Channel Callback');
//     receiveChannel = event.channel;
//     receiveChannel.onmessage = onReceiveMessageCallback;
//     receiveChannel.onopen = onReceiveChannelStateChange;
//     receiveChannel.onclose = onReceiveChannelStateChange;
// }

// function onReceiveMessageCallback(event) {
//     trace('Received Message');
//     dataChannelReceive.value = event.data;
// }

function onSendChannelStateChange() {
    var readyState = sendChannel.readyState;
    trace('Send channel state is: ' + readyState);
    if (readyState === 'open') {

        dataChannelSend.disabled = false;
        dataChannelSend.focus();
        sendButton.disabled = false;
        // app.ports.enableButton.send(true);
        closeButton.disabled = false;
    } else {
        dataChannelSend.disabled = true;
        sendButton.disabled = true;
        closeButton.disabled = true;
    }
}

// function onReceiveChannelStateChange() {
//     var readyState = receiveChannel.readyState;
//     trace('Receive channel state is: ' + readyState);
// }

function trace(text) {
    if (text[text.length - 1] === '\n') {
        text = text.substring(0, text.length - 1);
    }
    if (window.performance) {
        var now = (window.performance.now() / 1000).toFixed(3);
        console.log(now + ': ' + text);
    } else {
        console.log(text);
    }
}

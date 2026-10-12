package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import android.content.Context;
import android.util.Log;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.ReplForm;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;
import java.util.TreeSet;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.DataChannel;
import org.webrtc.IceCandidate;
import org.webrtc.MediaConstraints;
import org.webrtc.MediaStream;
import org.webrtc.PeerConnection;
import org.webrtc.PeerConnectionFactory;
import org.webrtc.RtpReceiver;
import org.webrtc.SdpObserver;
import org.webrtc.SessionDescription;

/* loaded from: classes.dex */
public class WebRTCNativeMgr {
    private static final boolean DEBUG = true;
    private static final String LOG_TAG = "AppInvWebRTC";
    private static final CharsetDecoder utf8Decoder = Charset.forName("UTF-8").newDecoder();
    private ReplForm form;
    private List<PeerConnection.IceServer> iceServers;
    private PeerConnection peerConnection;
    private String rCode;
    private String rendezvousServer;
    private String rendezvousServer2;
    private TreeSet<String> seenNonces = new TreeSet<>();
    private boolean haveOffer = false;
    private volatile boolean keepPolling = true;
    private volatile boolean haveLocalDescription = false;
    private boolean first = true;
    private Random random = new Random();
    private DataChannel dataChannel = null;
    Timer timer = new Timer();
    SdpObserver sdpObserver = new SdpObserver() { // from class: com.google.appinventor.components.runtime.util.WebRTCNativeMgr.1
        public void onSetFailure(String str) {
        }

        public void onSetSuccess() {
        }

        public void onCreateFailure(String str) {
            a.B("onCreateFailure: ", str, WebRTCNativeMgr.LOG_TAG);
        }

        public void onCreateSuccess(SessionDescription sessionDescription) throws JSONException {
            try {
                Log.d(WebRTCNativeMgr.LOG_TAG, "sdp.type = " + sessionDescription.type.canonicalForm());
                Log.d(WebRTCNativeMgr.LOG_TAG, "sdp.description = " + sessionDescription.description);
                new DataChannel.Init();
                if (sessionDescription.type == SessionDescription.Type.OFFER) {
                    Log.d(WebRTCNativeMgr.LOG_TAG, "Got offer, about to set remote description (again?)");
                    WebRTCNativeMgr.this.peerConnection.setRemoteDescription(WebRTCNativeMgr.this.sdpObserver, sessionDescription);
                    return;
                }
                if (sessionDescription.type == SessionDescription.Type.ANSWER) {
                    Log.d(WebRTCNativeMgr.LOG_TAG, "onCreateSuccess: type = ANSWER");
                    WebRTCNativeMgr.this.peerConnection.setLocalDescription(WebRTCNativeMgr.this.sdpObserver, sessionDescription);
                    WebRTCNativeMgr.this.haveLocalDescription = true;
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("type", "answer");
                    jSONObject.put("sdp", sessionDescription.description);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("offer", jSONObject);
                    WebRTCNativeMgr.this.sendRendezvous(jSONObject2);
                }
            } catch (Exception e) {
                Log.e(WebRTCNativeMgr.LOG_TAG, "Exception during onCreateSuccess", e);
            }
        }
    };
    PeerConnection.Observer observer = new PeerConnection.Observer() { // from class: com.google.appinventor.components.runtime.util.WebRTCNativeMgr.2
        public void onAddStream(MediaStream mediaStream) {
        }

        public void onAddTrack(RtpReceiver rtpReceiver, MediaStream[] mediaStreamArr) {
        }

        public void onIceCandidatesRemoved(IceCandidate[] iceCandidateArr) {
        }

        public void onIceConnectionChange(PeerConnection.IceConnectionState iceConnectionState) {
        }

        public void onIceConnectionReceivingChange(boolean z) {
        }

        public void onRemoveStream(MediaStream mediaStream) {
        }

        public void onRenegotiationNeeded() {
        }

        public void onDataChannel(DataChannel dataChannel) {
            Log.d(WebRTCNativeMgr.LOG_TAG, "Have Data Channel!");
            Log.d(WebRTCNativeMgr.LOG_TAG, "v5");
            WebRTCNativeMgr.this.dataChannel = dataChannel;
            dataChannel.registerObserver(WebRTCNativeMgr.this.dataObserver);
            WebRTCNativeMgr.this.keepPolling = false;
            WebRTCNativeMgr.this.timer.cancel();
            Log.d(WebRTCNativeMgr.LOG_TAG, "Poller() Canceled");
            WebRTCNativeMgr.this.seenNonces.clear();
        }

        public void onIceCandidate(IceCandidate iceCandidate) throws JSONException {
            try {
                Log.d(WebRTCNativeMgr.LOG_TAG, "IceCandidate = " + iceCandidate.toString());
                if (iceCandidate.sdp == null) {
                    Log.d(WebRTCNativeMgr.LOG_TAG, "IceCandidate is null");
                } else {
                    Log.d(WebRTCNativeMgr.LOG_TAG, "IceCandidateSDP = " + iceCandidate.sdp);
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("nonce", WebRTCNativeMgr.this.random.nextInt(Form.MAX_PERMISSION_NONCE));
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("candidate", iceCandidate.sdp);
                jSONObject2.put("sdpMLineIndex", iceCandidate.sdpMLineIndex);
                jSONObject2.put("sdpMid", iceCandidate.sdpMid);
                jSONObject.put("candidate", jSONObject2);
                WebRTCNativeMgr.this.sendRendezvous(jSONObject);
            } catch (Exception e) {
                Log.e(WebRTCNativeMgr.LOG_TAG, "Exception during onIceCandidate", e);
            }
        }

        public void onIceGatheringChange(PeerConnection.IceGatheringState iceGatheringState) {
            Log.d(WebRTCNativeMgr.LOG_TAG, "onIceGatheringChange: iceGatheringState = " + iceGatheringState);
        }

        public void onSignalingChange(PeerConnection.SignalingState signalingState) {
            Log.d(WebRTCNativeMgr.LOG_TAG, "onSignalingChange: signalingState = " + signalingState);
        }
    };
    DataChannel.Observer dataObserver = new DataChannel.Observer() { // from class: com.google.appinventor.components.runtime.util.WebRTCNativeMgr.3
        public void onBufferedAmountChange(long j) {
        }

        public void onStateChange() {
        }

        public void onMessage(DataChannel.Buffer buffer) {
            try {
                String string = WebRTCNativeMgr.utf8Decoder.decode(buffer.data).toString();
                a.B("onMessage: received: ", string, WebRTCNativeMgr.LOG_TAG);
                WebRTCNativeMgr.this.form.evalScheme(string);
            } catch (CharacterCodingException e) {
                Log.e(WebRTCNativeMgr.LOG_TAG, "onMessage decoder error", e);
            }
        }
    };

    public WebRTCNativeMgr(String str, String str2) throws JSONException {
        this.rendezvousServer = null;
        this.rendezvousServer2 = null;
        this.iceServers = new ArrayList();
        this.rendezvousServer = str;
        try {
            JSONObject jSONObject = new JSONObject((str2.isEmpty() || str2.startsWith("OK")) ? "{\"rendezvous2\" : \"rendezvous.niotron.com\",\"iceservers\" : [{ \"server\" : \"stun:stun.l.google.com:19302\" },{ \"server\" : \"turn:turn.appinventor.mit.edu:3478\",\"username\" : \"oh\",\"password\" : \"boy\"}]}" : str2);
            this.rendezvousServer2 = jSONObject.getString("rendezvous2");
            JSONArray jSONArray = jSONObject.getJSONArray("iceservers");
            this.iceServers = new ArrayList(jSONArray.length());
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                PeerConnection.IceServer.Builder builder = PeerConnection.IceServer.builder(jSONObject2.getString("server"));
                Log.d(LOG_TAG, "Adding iceServer = " + jSONObject2.getString("server"));
                if (jSONObject2.has("username")) {
                    builder.setUsername(jSONObject2.getString("username"));
                }
                if (jSONObject2.has("password")) {
                    builder.setPassword(jSONObject2.getString("password"));
                }
                this.iceServers.add(builder.createIceServer());
            }
        } catch (JSONException e) {
            Log.e(LOG_TAG, "parsing iceServers:", e);
        }
    }

    public void initiate(ReplForm replForm, Context context, String str) {
        this.form = replForm;
        this.rCode = str;
        PeerConnectionFactory.initializeAndroidGlobals(context, false);
        PeerConnectionFactory peerConnectionFactory = new PeerConnectionFactory(new PeerConnectionFactory.Options());
        PeerConnection.RTCConfiguration rTCConfiguration = new PeerConnection.RTCConfiguration(this.iceServers);
        rTCConfiguration.continualGatheringPolicy = PeerConnection.ContinualGatheringPolicy.GATHER_CONTINUALLY;
        this.peerConnection = peerConnectionFactory.createPeerConnection(rTCConfiguration, new MediaConstraints(), this.observer);
        this.timer.schedule(new TimerTask() { // from class: com.google.appinventor.components.runtime.util.WebRTCNativeMgr.4
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() throws Throwable {
                WebRTCNativeMgr.this.Poller();
            }
        }, 0L, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Poller() throws Throwable {
        try {
            if (!this.keepPolling) {
                return;
            }
            Log.d(LOG_TAG, "Poller() Called");
            Log.d(LOG_TAG, "Poller: rendezvousServer2 = " + this.rendezvousServer2);
            HttpResponse httpResponseExecute = new DefaultHttpClient().execute(new HttpGet("https://" + this.rendezvousServer2 + "/rendezvous2/" + this.rCode + "-s"));
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = null;
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(httpResponseExecute.getEntity().getContent()));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            break;
                        } else {
                            sb.append(line);
                        }
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        throw th;
                    }
                }
                bufferedReader2.close();
                if (!this.keepPolling) {
                    Log.d(LOG_TAG, "keepPolling is false, we're done!");
                    return;
                }
                String string = sb.toString();
                Log.d(LOG_TAG, "response = " + string);
                if (string.equals("")) {
                    Log.d(LOG_TAG, "Received an empty response");
                    return;
                }
                JSONArray jSONArray = new JSONArray(string);
                Log.d(LOG_TAG, "jsonArray.length() = " + jSONArray.length());
                int i = 0;
                while (i < jSONArray.length()) {
                    Log.d(LOG_TAG, "i = " + i);
                    Log.d(LOG_TAG, "element = " + jSONArray.optString(i));
                    JSONObject jSONObject = (JSONObject) jSONArray.get(i);
                    if (!this.haveOffer) {
                        if (jSONObject.has("offer")) {
                            JSONObject jSONObject2 = (JSONObject) jSONObject.get("offer");
                            String strOptString = jSONObject2.optString("sdp");
                            String strOptString2 = jSONObject2.optString("type");
                            this.haveOffer = true;
                            Log.d(LOG_TAG, "sdb = " + strOptString);
                            Log.d(LOG_TAG, "type = " + strOptString2);
                            Log.d(LOG_TAG, "About to set remote offer");
                            Log.d(LOG_TAG, "Got offer, about to set remote description (maincode)");
                            this.peerConnection.setRemoteDescription(this.sdpObserver, new SessionDescription(SessionDescription.Type.OFFER, strOptString));
                            this.peerConnection.createAnswer(this.sdpObserver, new MediaConstraints());
                            Log.d(LOG_TAG, "createAnswer returned");
                            i = -1;
                            i++;
                        } else {
                            i++;
                        }
                    } else {
                        if (jSONObject.has("nonce")) {
                            if (!this.haveLocalDescription) {
                                Log.d(LOG_TAG, "Incoming candidate before local description set, punting");
                                return;
                            }
                            if (jSONObject.has("offer")) {
                                i++;
                                Log.d(LOG_TAG, "skipping offer, already processed");
                            } else if (jSONObject.isNull("candidate")) {
                                i++;
                            } else {
                                String strOptString3 = jSONObject.optString("nonce");
                                JSONObject jSONObject3 = (JSONObject) jSONObject.get("candidate");
                                String strOptString4 = jSONObject3.optString("candidate");
                                String strOptString5 = jSONObject3.optString("sdpMid");
                                int iOptInt = jSONObject3.optInt("sdpMLineIndex");
                                if (!this.seenNonces.contains(strOptString3)) {
                                    this.seenNonces.add(strOptString3);
                                    Log.d(LOG_TAG, "new nonce, about to add candidate!");
                                    Log.d(LOG_TAG, "candidate = " + strOptString4);
                                    this.peerConnection.addIceCandidate(new IceCandidate(strOptString5, iOptInt, strOptString4));
                                    Log.d(LOG_TAG, "addIceCandidate returned");
                                }
                            }
                        }
                        i++;
                    }
                }
                Log.d(LOG_TAG, "exited loop");
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e) {
            Log.e(LOG_TAG, "Caught IOException: " + e.toString(), e);
        } catch (JSONException e2) {
            Log.e(LOG_TAG, "Caught JSONException: " + e2.toString(), e2);
        } catch (Exception e3) {
            Log.e(LOG_TAG, "Caught Exception: " + e3.toString(), e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRendezvous(final JSONObject jSONObject) {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.util.WebRTCNativeMgr.5
            @Override // java.lang.Runnable
            public void run() throws JSONException, IOException {
                try {
                    jSONObject.put("first", WebRTCNativeMgr.this.first);
                    jSONObject.put("webrtc", true);
                    jSONObject.put("key", WebRTCNativeMgr.this.rCode + "-r");
                    if (WebRTCNativeMgr.this.first) {
                        WebRTCNativeMgr.this.first = false;
                        jSONObject.put("apiversion", SdkLevel.getLevel());
                    }
                    DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                    HttpPost httpPost = new HttpPost("https://" + WebRTCNativeMgr.this.rendezvousServer2 + "/rendezvous2/");
                    try {
                        Log.d(WebRTCNativeMgr.LOG_TAG, "About to send = " + jSONObject.toString());
                        httpPost.setEntity(new StringEntity(jSONObject.toString()));
                        defaultHttpClient.execute(httpPost);
                    } catch (IOException e) {
                        Log.e(WebRTCNativeMgr.LOG_TAG, "sendRedezvous IOException", e);
                    }
                } catch (Exception e2) {
                    Log.e(WebRTCNativeMgr.LOG_TAG, "Exception in sendRendezvous", e2);
                }
            }
        });
    }

    public void send(String str) {
        try {
            if (this.dataChannel == null) {
                Log.w(LOG_TAG, "No Data Channel in Send");
            } else {
                this.dataChannel.send(new DataChannel.Buffer(ByteBuffer.wrap(str.getBytes("UTF-8")), false));
            }
        } catch (UnsupportedEncodingException e) {
            Log.e(LOG_TAG, "While encoding data to send to companion", e);
        }
    }
}

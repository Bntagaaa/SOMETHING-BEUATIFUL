package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.Uri;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesBroadcastReceivers;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.annotations.androidmanifest.ActionElement;
import com.google.appinventor.components.annotations.androidmanifest.IntentFilterElement;
import com.google.appinventor.components.annotations.androidmanifest.ReceiverElement;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.common.ReceivingState;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FileUtil;
import com.google.appinventor.components.runtime.util.OAuth2Helper;
import com.google.appinventor.components.runtime.util.OnInitializeListener;
import com.google.appinventor.components.runtime.util.SdkLevel;
import com.google.common.net.HttpHeaders;
import gnu.expr.Declaration;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.CookieManager;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

@SimpleObject
@UsesPermissions(permissionNames = "com.google.android.apps.googlevoice.permission.RECEIVE_SMS, com.google.android.apps.googlevoice.permission.SEND_SMS, android.permission.ACCOUNT_MANAGER, android.permission.MANAGE_ACCOUNTS, android.permission.GET_ACCOUNTS, android.permission.USE_CREDENTIALS")
@DesignerComponent(category = ComponentCategory.SOCIAL, description = "<p>A component that will, when the <code>SendMessage</code> method is called, send the text message specified in the <code>Message</code> property to the phone number specified in the <code>PhoneNumber</code> property.</p> <p>If the <code>ReceivingEnabled</code> property is set to 1 messages will <b>not</b> be received. If <code>ReceivingEnabled</code> is set to 2 messages will be received only when the application is running. Finally if <code>ReceivingEnabled</code> is set to 3, messages will be received when the application is running <b>and</b> when the application is not running they will be queued and a notification displayed to the user.</p> <p>When a message arrives, the <code>MessageReceived</code> event is raised and provides the sending number and message.</p> <p> An app that includes this component will receive messages even when it is in the background (i.e. when it's not visible on the screen) and, moreso, even if the app is not running, so long as it's installed on the phone. If the phone receives a text message when the app is not in the foreground, the phone will show a notification in the notification bar.  Selecting the notification will bring up the app.  As an app developer, you'll probably want to give your users the ability to control ReceivingEnabled so that they can make the phone ignore text messages.</p> <p>If the GoogleVoiceEnabled property is true, messages can be sent over Wifi using Google Voice. This option requires that the user have a Google Voice account and that the mobile Voice app is installed on the phone. The Google Voice option works only on phones that support Android 2.0 (Eclair) or higher.</p> <p>To specify the phone number (e.g., 650-555-1212), set the <code>PhoneNumber</code> property to a Text string with the specified digits (e.g., 6505551212).  Dashes, dots, and parentheses may be included (e.g., (650)-555-1212) but will be ignored; spaces may not be included.</p> <p>Another way for an app to specify a phone number would be to include a <code>PhoneNumberPicker</code> component, which lets the users select a phone numbers from the ones stored in the the phone's contacts.</p>", iconName = "images/texting.png", nonVisible = true, version = 5)
@UsesLibraries(libraries = "google-api-client.jar,google-api-client-android2-beta.jar,google-http-client.jar,google-http-client-android2-beta.jar,google-http-client-android3-beta.jar,google-oauth-client.jar")
/* loaded from: classes.dex */
public class Texting extends AndroidNonvisibleComponent implements Component, OnResumeListener, OnPauseListener, OnInitializeListener, OnStopListener, Deleteable, ActivityResultListener {
    private static final String CACHE_FILE = "textingmsgcache";
    public static final String GV_INTENT_FILTER = "com.google.android.apps.googlevoice.SMS_RECEIVED";
    public static final String GV_PACKAGE_NAME = "com.google.android.apps.googlevoice";
    private static final String GV_SERVICE = "grandcentral";
    public static final String GV_SMS_RECEIVED = "com.google.android.apps.googlevoice.SMS_RECEIVED";
    public static final String GV_SMS_SEND_URL = "https://www.google.com/voice/b/0/sms/send/";
    public static final String GV_URL = "https://www.google.com/voice/b/0/redirection/voice";
    private static final String MESSAGE_DELIMITER = "\u0001";
    public static final String MESSAGE_TAG = "com.google.android.apps.googlevoice.TEXT";
    public static final String META_DATA_SMS_KEY = "sms_handler_component";
    public static final String META_DATA_SMS_VALUE = "Texting";
    public static final String PHONE_NUMBER_TAG = "com.google.android.apps.googlevoice.PHONE_NUMBER";
    private static final String PREF_FILE = "TextingState";
    private static final String PREF_GVENABLED = "gvenabled";
    private static final String PREF_RCVENABLED = "receiving2";
    private static final String PREF_RCVENABLED_LEGACY = "receiving";
    private static final String SENT = "SMS_SENT";
    private static final int SERVER_TIMEOUT_MS = 30000;
    public static final String SMS_RECEIVED = "android.provider.Telephony.SMS_RECEIVED";
    public static final String TAG = "Texting Component";
    public static final String TELEPHONY_INTENT_FILTER = "android.provider.Telephony.SMS_RECEIVED";
    public static final int TEXTING_REQUEST_CODE = 1413830740;
    private static final String USER_AGENT = "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.A.B.C Safari/525.13";
    private static final String UTF8 = "UTF-8";
    private static Activity activity;
    private static Component component;
    private static boolean isRunning;
    private static int messagesCached;
    private String authToken;
    private ComponentContainer container;
    private boolean googleVoiceEnabled;
    private GoogleVoiceUtil gvHelper;
    private boolean havePermission;
    private boolean haveReceivePermission;
    private boolean isInitialized;
    private String message;
    private Queue<String> pendingQueue;
    private String phoneNumber;
    private SmsManager smsManager;
    private static ReceivingState receivingState = ReceivingState.Foreground;
    private static Object cacheLock = new Object();

    public Texting(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.pendingQueue = new ConcurrentLinkedQueue();
        this.havePermission = false;
        this.haveReceivePermission = false;
        Log.d(TAG, "Texting constructor");
        this.container = componentContainer;
        component = this;
        Activity activity$context = componentContainer.$context();
        activity = activity$context;
        SharedPreferences sharedPreferences = activity$context.getSharedPreferences(PREF_FILE, 0);
        if (sharedPreferences != null) {
            int i = sharedPreferences.getInt(PREF_RCVENABLED, -1);
            if (i == -1) {
                if (sharedPreferences.getBoolean(PREF_RCVENABLED_LEGACY, true)) {
                    receivingState = ReceivingState.Foreground;
                } else {
                    receivingState = ReceivingState.Off;
                }
            } else {
                receivingState = ReceivingState.fromUnderlyingValue(Integer.valueOf(i));
            }
            this.googleVoiceEnabled = sharedPreferences.getBoolean(PREF_GVENABLED, false);
            Log.i(TAG, "Starting with receiving Enabled=" + receivingState.toUnderlyingValue() + " GV enabled=" + this.googleVoiceEnabled);
        } else {
            receivingState = ReceivingState.Off;
            this.googleVoiceEnabled = false;
        }
        if (this.googleVoiceEnabled) {
            new AsyncAuthenticate().execute(new Void[0]);
        }
        this.smsManager = SmsManager.getDefault();
        PhoneNumber("");
        this.isInitialized = false;
        isRunning = false;
        componentContainer.$form().registerForOnInitialize(this);
        componentContainer.$form().registerForOnResume(this);
        componentContainer.$form().registerForOnPause(this);
        componentContainer.$form().registerForOnStop(this);
    }

    @Override // com.google.appinventor.components.runtime.util.OnInitializeListener
    public void onInitialize() {
        Log.i(TAG, "onInitialize()");
        this.isInitialized = true;
        isRunning = true;
        processCachedMessages();
        ((NotificationManager) activity.getSystemService("notification")).cancel(8647);
    }

    public void Initialize() {
        if (receivingState == ReceivingState.Off || this.haveReceivePermission) {
            return;
        }
        requestReceiveSmsPermission("Initialize");
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void PhoneNumber(String str) {
        _COROUTINE.a.C("PhoneNumber set: ", str, TAG);
        this.phoneNumber = str;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The number that the message will be sent to when the SendMessage method is called. The number is a text string with the specified digits (e.g., 6505551212).  Dashes, dots, and parentheses may be included (e.g., (650)-555-1212) but will be ignored; spaces should not be included.")
    public String PhoneNumber() {
        return this.phoneNumber;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The message that will be sent when the SendMessage method is called.")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Message(String str) {
        _COROUTINE.a.C("Message set: ", str, TAG);
        this.message = str;
    }

    @SimpleProperty
    public String Message() {
        return this.message;
    }

    @SimpleFunction
    public void SendMessage() {
        String str = this.phoneNumber;
        String str2 = this.message;
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + str));
        intent.putExtra("sms_body", str2);
        if (intent.resolveActivity(this.form.getPackageManager()) != null) {
            this.form.registerForActivityResult(this, TEXTING_REQUEST_CODE);
            this.form.startActivityForResult(intent, TEXTING_REQUEST_CODE);
        }
    }

    @SimpleFunction
    @UsesPermissions({"android.permission.SEND_SMS", "android.permission.READ_PHONE_STATE"})
    public void SendMessageDirect() {
        Log.i(TAG, "Sending message " + this.message + " to " + this.phoneNumber);
        String str = this.phoneNumber;
        String str2 = this.message;
        if (this.googleVoiceEnabled) {
            if (this.authToken == null) {
                Log.i(TAG, "Need to get an authToken -- enqueing " + str + " " + str2);
                if (!this.pendingQueue.offer(str + ":::" + str2)) {
                    Toast.makeText(activity, "Pending message queue full. Can't send message", 0).show();
                    return;
                } else {
                    if (this.pendingQueue.size() == 1) {
                        new AsyncAuthenticate().execute(new Void[0]);
                        return;
                    }
                    return;
                }
            }
            Log.i(TAG, "Creating AsyncSendMessage");
            new AsyncSendMessage().execute(str, str2);
            return;
        }
        Log.i(TAG, "Sending via SMS");
        sendViaSms("SendMessage");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processPendingQueue() {
        while (this.pendingQueue.size() != 0) {
            String strRemove = this.pendingQueue.remove();
            String strSubstring = strRemove.substring(0, strRemove.indexOf(":::"));
            String strSubstring2 = strRemove.substring(strRemove.indexOf(":::") + 3);
            Log.i(TAG, "Sending queued message " + strSubstring + " " + strSubstring2);
            new AsyncSendMessage().execute(strSubstring, strSubstring2);
        }
    }

    @SimpleEvent
    public static void MessageReceived(String str, String str2) {
        if (receivingState == ReceivingState.Off) {
            return;
        }
        Log.i(TAG, "MessageReceived from " + str + ":" + str2);
        if (EventDispatcher.dispatchEvent(component, "MessageReceived", str, str2)) {
            Log.i(TAG, "Dispatch successful");
            return;
        }
        Log.i(TAG, "Dispatch failed, caching");
        synchronized (cacheLock) {
            addMessageToCache(activity, str, str2);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "If true, then SendMessage will attempt to send messages over Wifi using Google Voice.  This requires that the Google Voice app must be installed and set up on the phone or tablet, with a Google Voice account.  If GoogleVoiceEnabled is false, the device must have phone and texting service in order to send or receive messages with this component.")
    public boolean GoogleVoiceEnabled() {
        return this.googleVoiceEnabled;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    @UsesBroadcastReceivers(receivers = {@ReceiverElement(intentFilters = {@IntentFilterElement(actionElements = {@ActionElement(name = "com.google.android.apps.googlevoice.SMS_RECEIVED")})}, name = "com.google.appinventor.components.runtime.util.GoogleVoiceSmsBroadcastReceiver")})
    public void GoogleVoiceEnabled(boolean z) {
        if (SdkLevel.getLevel() >= 5) {
            this.googleVoiceEnabled = z;
            SharedPreferences.Editor editorEdit = activity.getSharedPreferences(PREF_FILE, 0).edit();
            editorEdit.putBoolean(PREF_GVENABLED, z);
            editorEdit.commit();
            return;
        }
        Toast.makeText(activity, "Sorry, your phone's system does not support this option.", 1).show();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "If set to 1 (OFF) no messages will be received.  If set to 2 (FOREGROUND) or3 (ALWAYS) the component will respond to messages if it is running. If the app is not running then the message will be discarded if set to 2 (FOREGROUND). If set to 3 (ALWAYS) and the app is not running the phone will show a notification.  Selecting the notification will bring up the app and signal the MessageReceived event.  Messages received when the app is dormant will be queued, and so several MessageReceived events might appear when the app awakens.  As an app developer, it would be a good idea to give your users control over this property, so they can make their phones ignore text messages when your app is installed.")
    public int ReceivingEnabled() {
        return ReceivingEnabledAbstract().toUnderlyingValue().intValue();
    }

    public ReceivingState ReceivingEnabledAbstract() {
        return receivingState;
    }

    public void ReceivingEnabledAbstract(ReceivingState receivingState2) {
        receivingState = receivingState2;
        SharedPreferences.Editor editorEdit = activity.getSharedPreferences(PREF_FILE, 0).edit();
        editorEdit.putInt(PREF_RCVENABLED, receivingState2.toUnderlyingValue().intValue());
        editorEdit.remove(PREF_RCVENABLED_LEGACY);
        editorEdit.commit();
        if (receivingState2 == ReceivingState.Off || this.haveReceivePermission) {
            return;
        }
        requestReceiveSmsPermission("ReceivingEnabled");
    }

    @UsesBroadcastReceivers(receivers = {@ReceiverElement(intentFilters = {@IntentFilterElement(actionElements = {@ActionElement(name = "android.provider.Telephony.SMS_RECEIVED")})}, name = "com.google.appinventor.components.runtime.util.SmsBroadcastReceiver")})
    @SimpleProperty
    @UsesPermissions({"android.permission.RECEIVE_SMS"})
    @DesignerProperty(alwaysSend = true, defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXT_RECEIVING)
    public void ReceivingEnabled(@Options(ReceivingState.class) int i) {
        ReceivingState receivingStateFromUnderlyingValue = ReceivingState.fromUnderlyingValue(Integer.valueOf(i));
        if (receivingStateFromUnderlyingValue == null) {
            this.container.$form().dispatchErrorOccurredEvent(this, META_DATA_SMS_VALUE, ErrorMessages.ERROR_BAD_VALUE_FOR_TEXT_RECEIVING, Integer.valueOf(i));
        } else {
            ReceivingEnabledAbstract(receivingStateFromUnderlyingValue);
        }
    }

    public static int isReceivingEnabled(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREF_FILE, 0);
        int i = sharedPreferences.getInt(PREF_RCVENABLED, -1);
        return i == -1 ? sharedPreferences.getBoolean(PREF_RCVENABLED_LEGACY, true) ? 2 : 1 : i;
    }

    public static SmsMessage[] getMessagesFromIntent(Intent intent) {
        Object[] objArr = (Object[]) intent.getSerializableExtra("pdus");
        int length = objArr.length;
        byte[][] bArr = new byte[length][];
        for (int i = 0; i < objArr.length; i++) {
            bArr[i] = (byte[]) objArr[i];
        }
        byte[][] bArr2 = new byte[length][];
        SmsMessage[] smsMessageArr = new SmsMessage[length];
        for (int i2 = 0; i2 < length; i2++) {
            byte[] bArr3 = bArr[i2];
            bArr2[i2] = bArr3;
            smsMessageArr[i2] = SmsMessage.createFromPdu(bArr3);
        }
        return smsMessageArr;
    }

    private void processCachedMessages() {
        String[] strArrRetrieveCachedMessages;
        synchronized (cacheLock) {
            strArrRetrieveCachedMessages = retrieveCachedMessages();
        }
        if (strArrRetrieveCachedMessages == null) {
            return;
        }
        Log.i(TAG, "processing " + strArrRetrieveCachedMessages.length + " cached messages ");
        for (int i = 0; i < strArrRetrieveCachedMessages.length; i++) {
            String str = strArrRetrieveCachedMessages[i];
            Log.i(TAG, "Message + " + i + " " + str);
            int iIndexOf = str.indexOf(":");
            if (receivingState != ReceivingState.Off && iIndexOf != -1) {
                MessageReceived(str.substring(0, iIndexOf), str.substring(iIndexOf + 1));
            }
        }
    }

    private String[] retrieveCachedMessages() {
        Log.i(TAG, "Retrieving cached messages");
        try {
            String str = new String(FileUtil.readFile(this.form, CACHE_FILE));
            activity.deleteFile(CACHE_FILE);
            messagesCached = 0;
            Log.i(TAG, "Retrieved cache ".concat(str));
            return str.split(MESSAGE_DELIMITER);
        } catch (FileNotFoundException unused) {
            Log.e(TAG, "No Cache file found -- this is not (usually) an error");
            return null;
        } catch (IOException e) {
            Log.e(TAG, "I/O Error reading from cache file");
            e.printStackTrace();
            return null;
        }
    }

    public static boolean isRunning() {
        return isRunning;
    }

    public static int getCachedMsgCount() {
        return messagesCached;
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        Log.i(TAG, "onResume()");
        isRunning = true;
        if (this.isInitialized) {
            processCachedMessages();
            ((NotificationManager) activity.getSystemService("notification")).cancel(8647);
        }
    }

    @Override // com.google.appinventor.components.runtime.OnPauseListener
    public void onPause() {
        Log.i(TAG, "onPause()");
        isRunning = false;
    }

    public static void handledReceivedMessage(Context context, String str, String str2) {
        if (isRunning) {
            MessageReceived(str, str2);
            return;
        }
        synchronized (cacheLock) {
            addMessageToCache(context, str, str2);
        }
    }

    private static void addMessageToCache(Context context, String str, String str2) throws IOException {
        try {
            String str3 = str + ":" + str2 + MESSAGE_DELIMITER;
            Log.i(TAG, "Caching " + str3);
            FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput(CACHE_FILE, 32768);
            fileOutputStreamOpenFileOutput.write(str3.getBytes());
            fileOutputStreamOpenFileOutput.close();
            messagesCached++;
            Log.i(TAG, "Cached ".concat(str3));
        } catch (FileNotFoundException e) {
            Log.e(TAG, "File not found error writing to cache file");
            e.printStackTrace();
        } catch (IOException e2) {
            Log.e(TAG, "I/O Error writing to cache file");
            e2.printStackTrace();
        }
    }

    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    public void resultReturned(int i, int i2, Intent intent) {
        if (i == 1413830740) {
            handleSentMessage(this.form, null, i2, intent == null ? "" : intent.getStringExtra("sms_body"));
            this.form.unregisterForActivityResult(this);
        }
    }

    public class GoogleVoiceUtil {
        private static final String COOKIES_HEADER = "Set-Cookie";
        String authToken;
        String general;
        private boolean isInitialized;
        int redirectCounter;
        String rnrSEE;
        private final int MAX_REDIRECTS = 5;
        CookieManager cookies = new CookieManager();

        public GoogleVoiceUtil(String str) {
            Log.i(Texting.TAG, "Creating GV Util");
            this.authToken = str;
            try {
                String general = getGeneral();
                this.general = general;
                Log.i(Texting.TAG, "general = " + general);
                setRNRSEE();
                this.isInitialized = true;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        public boolean isInitialized() {
            return this.isInitialized;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String sendGvSms(String str) throws IOException {
            Log.i(Texting.TAG, "sendGvSms()");
            StringBuilder sb = new StringBuilder();
            try {
                String str2 = str + "&" + URLEncoder.encode("_rnr_se", Texting.UTF8) + "=" + URLEncoder.encode(this.rnrSEE, Texting.UTF8);
                Log.i(Texting.TAG, "smsData = " + str2);
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(Texting.GV_SMS_SEND_URL).openConnection();
                httpURLConnection.setRequestProperty(HttpHeaders.AUTHORIZATION, "GoogleLogin auth=" + this.authToken);
                httpURLConnection.setRequestProperty("User-agent", Texting.USER_AGENT);
                setCookies(httpURLConnection);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setConnectTimeout(Texting.SERVER_TIMEOUT_MS);
                Log.i(Texting.TAG, "sms request = " + httpURLConnection);
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream());
                outputStreamWriter.write(str2);
                outputStreamWriter.flush();
                processCookies(httpURLConnection);
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                    sb.append("\n");
                }
                Log.i(Texting.TAG, "sendGvSms:  Sent SMS, response = " + ((Object) sb));
                outputStreamWriter.close();
                bufferedReader.close();
                if (sb.length() == 0) {
                    throw new IOException("No Response Data Received.");
                }
                return sb.toString();
            } catch (IOException e) {
                Log.i(Texting.TAG, "IO Error on Send " + e.getMessage(), e);
                return "IO Error Message not sent";
            }
        }

        public String getGeneral() throws IOException {
            Log.i(Texting.TAG, "getGeneral()");
            return get(Texting.GV_URL);
        }

        private void setRNRSEE() throws IOException {
            Log.i(Texting.TAG, "setRNRSEE()");
            String str = this.general;
            if (str == null) {
                Log.i(Texting.TAG, "setRNRSEE(): Answer was null!");
                throw new IOException("setRNRSEE(): Answer was null!");
            }
            if (str.contains("'_rnr_se': '")) {
                this.rnrSEE = this.general.split("'_rnr_se': '", 2)[1].split("',", 2)[0];
                Log.i(Texting.TAG, "Successfully Received rnr_se.");
            } else {
                Log.i(Texting.TAG, "Answer did not contain rnr_se! " + this.general);
                throw new IOException(_COROUTINE.a.i("Answer did not contain rnr_se! ", this.general));
            }
        }

        public void setCookies(HttpURLConnection httpURLConnection) {
            if (this.cookies.getCookieStore().getCookies().size() > 0) {
                httpURLConnection.setRequestProperty(HttpHeaders.COOKIE, TextUtils.join(";", this.cookies.getCookieStore().getCookies()));
            }
        }

        public void processCookies(HttpURLConnection httpURLConnection) {
            List<String> list = httpURLConnection.getHeaderFields().get("Set-Cookie");
            if (list != null) {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    this.cookies.getCookieStore().add(null, HttpCookie.parse(it.next()).get(0));
                }
            }
        }

        public String get(String str) throws IOException {
            int responseCode;
            InputStream errorStream;
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            int i = 0;
            try {
                httpURLConnection.setRequestProperty(HttpHeaders.AUTHORIZATION, "GoogleLogin auth=" + this.authToken);
                httpURLConnection.setRequestProperty("User-agent", Texting.USER_AGENT);
                httpURLConnection.setInstanceFollowRedirects(false);
                setCookies(httpURLConnection);
                httpURLConnection.connect();
                responseCode = httpURLConnection.getResponseCode();
            } catch (Exception unused) {
            }
            try {
                Log.i(Texting.TAG, str + " - " + httpURLConnection.getResponseMessage());
                processCookies(httpURLConnection);
                if (responseCode == 200) {
                    errorStream = httpURLConnection.getInputStream();
                } else {
                    if (responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307) {
                        int i2 = this.redirectCounter + 1;
                        this.redirectCounter = i2;
                        if (i2 > 5) {
                            this.redirectCounter = 0;
                            throw new IOException(str + " : " + httpURLConnection.getResponseMessage() + "(" + responseCode + ") : Too many redirects. exiting.");
                        }
                        String headerField = httpURLConnection.getHeaderField(HttpHeaders.LOCATION);
                        if (headerField == null || headerField.equals("")) {
                            throw new IOException(str + " : " + httpURLConnection.getResponseMessage() + "(" + responseCode + ") : Received moved answer but no Location. exiting.");
                        }
                        System.out.println(str + " - " + responseCode + " - new URL: " + headerField);
                        return get(headerField);
                    }
                    errorStream = httpURLConnection.getErrorStream();
                }
                this.redirectCounter = 0;
                if (errorStream == null) {
                    throw new IOException(str + " : " + httpURLConnection.getResponseMessage() + "(" + responseCode + ") : InputStream was null : exiting.");
                }
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream));
                    StringBuffer stringBuffer = new StringBuffer();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            bufferedReader.close();
                            return stringBuffer.toString();
                        }
                        stringBuffer.append(line + "\n\r");
                    }
                } catch (Exception e) {
                    String responseMessage = httpURLConnection.getResponseMessage();
                    String localizedMessage = e.getLocalizedMessage();
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" - ");
                    sb.append(responseMessage);
                    sb.append("(");
                    sb.append(responseCode);
                    throw new IOException(_COROUTINE.a.m(sb, ") - ", localizedMessage));
                }
            } catch (Exception unused2) {
                i = responseCode;
                throw new IOException(str + " : " + httpURLConnection.getResponseMessage() + "(" + i + ") : IO Error.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void handleSentMessage(Context context, BroadcastReceiver broadcastReceiver, int i, String str) {
        try {
            if (i == -1) {
                Log.i(TAG, "Received OK, msg:" + str);
                Toast.makeText(activity, "Message sent", 0).show();
            } else if (i == 1) {
                Log.e(TAG, "Received generic failure, msg:" + str);
                Toast.makeText(activity, "Generic failure: message not sent", 0).show();
            } else if (i == 2) {
                Log.e(TAG, "Received radio off error, msg:" + str);
                Toast.makeText(activity, "Could not send SMS message: radio off.", 1).show();
            } else if (i == 3) {
                Log.e(TAG, "Received null PDU error, msg:" + str);
                Toast.makeText(activity, "Received null PDU error. Message not sent.", 0).show();
            } else if (i == 4) {
                Log.e(TAG, "Received no service error, msg:" + str);
                Toast.makeText(activity, "No Sms service available. Message not sent.", 0).show();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendViaSms(final String str) {
        Log.i(TAG, "Sending via built-in Sms");
        if (!this.havePermission) {
            final Form form$form = this.container.$form();
            form$form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Texting.1
                @Override // java.lang.Runnable
                public void run() {
                    form$form.askPermission("android.permission.SEND_SMS", new PermissionResultHandler() { // from class: com.google.appinventor.components.runtime.Texting.1.1
                        @Override // com.google.appinventor.components.runtime.PermissionResultHandler
                        public void HandlePermissionResponse(String str2, boolean z) {
                            if (z) {
                                this.havePermission = true;
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                this.sendViaSms(str);
                            } else {
                                AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                                form$form.dispatchPermissionDeniedEvent(this, str, "android.permission.SEND_SMS");
                            }
                        }
                    });
                }
            });
            return;
        }
        ArrayList<String> arrayListDivideMessage = this.smsManager.divideMessage(this.message);
        int size = arrayListDivideMessage.size();
        ArrayList<PendingIntent> arrayList = new ArrayList<>();
        for (int i = 0; i < size; i++) {
            arrayList.add(PendingIntent.getBroadcast(activity, 0, new Intent(SENT), Declaration.PUBLIC_ACCESS));
        }
        ContextCompat.registerReceiver(activity, new BroadcastReceiver() { // from class: com.google.appinventor.components.runtime.Texting.2
            @Override // android.content.BroadcastReceiver
            public synchronized void onReceive(Context context, Intent intent) {
                try {
                    Texting.this.handleSentMessage(context, null, getResultCode(), Texting.this.message);
                    Texting.activity.unregisterReceiver(this);
                } catch (Exception e) {
                    Log.e("BroadcastReceiver", "Error in onReceive for msgId " + intent.getAction());
                    Log.e("BroadcastReceiver", e.getMessage());
                    e.printStackTrace();
                }
            }
        }, new IntentFilter(SENT), 2);
        this.smsManager.sendMultipartTextMessage(this.phoneNumber, null, arrayListDivideMessage, arrayList, null);
    }

    private void requestReceiveSmsPermission(final String str) {
        this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Texting.3
            @Override // java.lang.Runnable
            public void run() {
                Texting.this.form.askPermission("android.permission.RECEIVE_SMS", new PermissionResultHandler() { // from class: com.google.appinventor.components.runtime.Texting.3.1
                    @Override // com.google.appinventor.components.runtime.PermissionResultHandler
                    public void HandlePermissionResponse(String str2, boolean z) {
                        if (z) {
                            Texting.this.haveReceivePermission = true;
                            return;
                        }
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        Texting texting = Texting.this;
                        texting.form.dispatchPermissionDeniedEvent(texting, str, "android.permission.RECEIVE_SMS");
                    }
                });
            }
        });
    }

    public class AsyncAuthenticate extends android.os.AsyncTask<Void, Void, String> {
        public AsyncAuthenticate() {
        }

        @Override // android.os.AsyncTask
        public String doInBackground(Void... voidArr) {
            Log.i(Texting.TAG, "Authenticating");
            return new OAuth2Helper().getRefreshedAuthToken(Texting.activity, Texting.GV_SERVICE);
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            _COROUTINE.a.C("authToken = ", str, Texting.TAG);
            Texting.this.authToken = str;
            Toast.makeText(Texting.activity, "Finished authentication", 0).show();
            Texting.this.processPendingQueue();
        }
    }

    public class AsyncSendMessage extends android.os.AsyncTask<String, Void, String> {
        public AsyncSendMessage() {
        }

        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) throws UnsupportedEncodingException {
            String str = strArr[0];
            String str2 = strArr[1];
            String strSendGvSms = "";
            Log.i(Texting.TAG, "Async sending phoneNumber = " + str + " message = " + str2);
            try {
                String str3 = URLEncoder.encode("phoneNumber", Texting.UTF8) + "=" + URLEncoder.encode(str, Texting.UTF8) + "&" + URLEncoder.encode(PropertyTypeConstants.PROPERTY_TYPE_TEXT, Texting.UTF8) + "=" + URLEncoder.encode(str2, Texting.UTF8);
                if (Texting.this.gvHelper == null) {
                    Texting texting = Texting.this;
                    texting.gvHelper = texting.new GoogleVoiceUtil(texting.authToken);
                }
                if (Texting.this.gvHelper.isInitialized()) {
                    strSendGvSms = Texting.this.gvHelper.sendGvSms(str3);
                    Log.i(Texting.TAG, "Sent SMS, response = " + strSendGvSms);
                    return strSendGvSms;
                }
                return "IO Error: unable to create GvHelper";
            } catch (Exception e) {
                e.printStackTrace();
                return strSendGvSms;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0026  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0034  */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onPostExecute(java.lang.String r5) throws org.json.JSONException {
            /*
                r4 = this;
                super.onPostExecute(r5)
                r0 = 0
                org.json.JSONObject r1 = new org.json.JSONObject     // Catch: org.json.JSONException -> L1e
                r1.<init>(r5)     // Catch: org.json.JSONException -> L1e
                java.lang.String r2 = "ok"
                boolean r2 = r1.getBoolean(r2)     // Catch: org.json.JSONException -> L1e
                java.lang.String r3 = "data"
                org.json.JSONObject r1 = r1.getJSONObject(r3)     // Catch: org.json.JSONException -> L1c
                java.lang.String r3 = "code"
                int r1 = r1.getInt(r3)     // Catch: org.json.JSONException -> L1c
                goto L24
            L1c:
                r1 = move-exception
                goto L20
            L1e:
                r1 = move-exception
                r2 = 0
            L20:
                r1.printStackTrace()
                r1 = 0
            L24:
                if (r2 == 0) goto L34
                android.app.Activity r5 = com.google.appinventor.components.runtime.Texting.k()
                java.lang.String r1 = "Message sent"
                android.widget.Toast r5 = android.widget.Toast.makeText(r5, r1, r0)
                r5.show()
                goto L59
            L34:
                r2 = 58
                if (r1 != r2) goto L46
                android.app.Activity r5 = com.google.appinventor.components.runtime.Texting.k()
                java.lang.String r1 = "Errcode 58: SMS limit reached"
                android.widget.Toast r5 = android.widget.Toast.makeText(r5, r1, r0)
                r5.show()
                goto L59
            L46:
                java.lang.String r1 = "IO Error"
                boolean r1 = r5.contains(r1)
                if (r1 == 0) goto L59
                android.app.Activity r1 = com.google.appinventor.components.runtime.Texting.k()
                android.widget.Toast r5 = android.widget.Toast.makeText(r1, r5, r0)
                r5.show()
            L59:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.Texting.AsyncSendMessage.onPostExecute(java.lang.String):void");
        }
    }

    @Override // com.google.appinventor.components.runtime.OnStopListener
    public void onStop() {
        SharedPreferences.Editor editorEdit = activity.getSharedPreferences(PREF_FILE, 0).edit();
        editorEdit.putInt(PREF_RCVENABLED, receivingState.toUnderlyingValue().intValue());
        editorEdit.putBoolean(PREF_GVENABLED, this.googleVoiceEnabled);
        editorEdit.commit();
    }

    @Override // com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        this.form.unregisterForActivityResult(this);
    }
}

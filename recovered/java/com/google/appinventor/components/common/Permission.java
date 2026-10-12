package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum Permission implements OptionList<String> {
    ReadSMS("READ_SMS"),
    ReadCalendar("READ_CALENDAR"),
    PostNotifications("POST_NOTIFICATIONS"),
    ReadCallLog("READ_CALL_LOG"),
    AnswerPhoneCalls("ANSWER_PHONE_CALLS"),
    ReceiveWapPush("RECEIVE_WAP_PUSH"),
    BodySensors("BODY_SENSORS"),
    ReadPhoneNumbers("READ_PHONE_NUMBERS"),
    NearbyWifiDevices("NEARBY_WIFI_DEVICES"),
    ReceiveMMS("RECEIVE_MMS"),
    ReceiveSMS("RECEIVE_SMS"),
    ReadPhoneState("READ_PHONE_STATE"),
    SendSMS("SEND_SMS"),
    CallPhone("CALL_PHONE"),
    WriteContacts("WRITE_CONTACTS"),
    BodySensorsBackground("BODY_SENSORS_BACKGROUND"),
    AcceptHandover("ACCEPT_HANDOVER"),
    WriteCalendar("WRITE_CALENDAR"),
    WriteCallLog("WRITE_CALL_LOG"),
    UseSIP("USE_SIP"),
    ProcessOutgoingCalls("PROCESS_OUTGOING_CALLS"),
    ReadCellBroadcasts("READ_CELL_BROADCASTS"),
    UWBRanging("UWB_RANGING"),
    ActivityRecognition("ACTIVITY_RECOGNITION"),
    AccessBackgroundLocation("ACCESS_BACKGROUND_LOCATION"),
    AccessMediaLocation("ACCESS_MEDIA_LOCATION"),
    CoarseLocation("ACCESS_COARSE_LOCATION"),
    FineLocation("ACCESS_FINE_LOCATION"),
    MockLocation("ACCESS_MOCK_LOCATION"),
    LocationExtraCommands("ACCESS_LOCATION_EXTRA_COMMANDS"),
    ReadExternalStorage("READ_EXTERNAL_STORAGE"),
    WriteExternalStorage("WRITE_EXTERNAL_STORAGE"),
    Camera("CAMERA"),
    Audio("RECORD_AUDIO"),
    Vibrate("VIBRATE"),
    Internet("INTERNET"),
    NearFieldCommunication("NFC"),
    Bluetooth("BLUETOOTH"),
    BluetoothAdmin("BLUETOOTH_ADMIN"),
    WifiState("ACCESS_WIFI_STATE"),
    NetworkState("ACCESS_NETWORK_STATE"),
    AccountManager("ACCOUNT_MANAGER"),
    ManageAccounts("MANAGE_ACCOUNTS"),
    GetAccounts("GET_ACCOUNTS"),
    ReadContacts("READ_CONTACTS"),
    UseCredentials("USE_CREDENTIALS"),
    QueryAllPackages("QUERY_ALL_PACKAGES"),
    BluetoothAdvertise("BLUETOOTH_ADVERTISE"),
    BluetoothConnect("BLUETOOTH_CONNECT"),
    BluetoothScan("BLUETOOTH_SCAN"),
    ReadMediaImages("READ_MEDIA_IMAGES"),
    ReadMediaVideo("READ_MEDIA_VIDEO"),
    ReadMediaAudio("READ_MEDIA_AUDIO");


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3587b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3588a;

    static {
        for (Permission permission : values()) {
            f3587b.put(permission.toUnderlyingValue(), permission);
        }
    }

    Permission(String str) {
        this.f3588a = str;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3588a;
    }

    public static Permission fromUnderlyingValue(String str) {
        return (Permission) f3587b.get(str);
    }
}

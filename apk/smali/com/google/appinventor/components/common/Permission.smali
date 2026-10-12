.class public final enum Lcom/google/appinventor/components/common/Permission;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/Permission;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AcceptHandover:Lcom/google/appinventor/components/common/Permission;

.field public static final enum AccessBackgroundLocation:Lcom/google/appinventor/components/common/Permission;

.field public static final enum AccessMediaLocation:Lcom/google/appinventor/components/common/Permission;

.field public static final enum AccountManager:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum ActivityRecognition:Lcom/google/appinventor/components/common/Permission;

.field public static final enum AnswerPhoneCalls:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Audio:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Bluetooth:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BluetoothAdmin:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BluetoothAdvertise:Lcom/google/appinventor/components/common/Permission;

.field public static final enum BluetoothConnect:Lcom/google/appinventor/components/common/Permission;

.field public static final enum BluetoothScan:Lcom/google/appinventor/components/common/Permission;

.field public static final enum BodySensors:Lcom/google/appinventor/components/common/Permission;

.field public static final enum BodySensorsBackground:Lcom/google/appinventor/components/common/Permission;

.field public static final enum CallPhone:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Camera:Lcom/google/appinventor/components/common/Permission;

.field public static final enum CoarseLocation:Lcom/google/appinventor/components/common/Permission;

.field public static final enum FineLocation:Lcom/google/appinventor/components/common/Permission;

.field public static final enum GetAccounts:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Internet:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum LocationExtraCommands:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ManageAccounts:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MockLocation:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NearFieldCommunication:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NearbyWifiDevices:Lcom/google/appinventor/components/common/Permission;

.field public static final enum NetworkState:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum PostNotifications:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ProcessOutgoingCalls:Lcom/google/appinventor/components/common/Permission;

.field public static final enum QueryAllPackages:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadCalendar:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadCallLog:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadCellBroadcasts:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadContacts:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadExternalStorage:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadMediaAudio:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadMediaImages:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadMediaVideo:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadPhoneNumbers:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadPhoneState:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadSMS:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReceiveMMS:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReceiveSMS:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReceiveWapPush:Lcom/google/appinventor/components/common/Permission;

.field public static final enum SendSMS:Lcom/google/appinventor/components/common/Permission;

.field public static final enum UWBRanging:Lcom/google/appinventor/components/common/Permission;

.field public static final enum UseCredentials:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum UseSIP:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Vibrate:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum WifiState:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum WriteCalendar:Lcom/google/appinventor/components/common/Permission;

.field public static final enum WriteCallLog:Lcom/google/appinventor/components/common/Permission;

.field public static final enum WriteContacts:Lcom/google/appinventor/components/common/Permission;

.field public static final enum WriteExternalStorage:Lcom/google/appinventor/components/common/Permission;

.field public static final b:Ljava/util/HashMap;

.field public static final synthetic c:[Lcom/google/appinventor/components/common/Permission;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 78

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "ReadSMS"

    const/4 v2, 0x0

    const-string v3, "READ_SMS"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->ReadSMS:Lcom/google/appinventor/components/common/Permission;

    .line 16
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "READ_CALENDAR"

    const-string v4, "ReadCalendar"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->ReadCalendar:Lcom/google/appinventor/components/common/Permission;

    .line 17
    new-instance v3, Lcom/google/appinventor/components/common/Permission;

    const-string v4, "POST_NOTIFICATIONS"

    const-string v6, "PostNotifications"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/common/Permission;->PostNotifications:Lcom/google/appinventor/components/common/Permission;

    .line 18
    new-instance v4, Lcom/google/appinventor/components/common/Permission;

    const-string v6, "READ_CALL_LOG"

    const-string v8, "ReadCallLog"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/Permission;->ReadCallLog:Lcom/google/appinventor/components/common/Permission;

    .line 19
    new-instance v6, Lcom/google/appinventor/components/common/Permission;

    const-string v8, "ANSWER_PHONE_CALLS"

    const-string v10, "AnswerPhoneCalls"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/google/appinventor/components/common/Permission;->AnswerPhoneCalls:Lcom/google/appinventor/components/common/Permission;

    .line 20
    new-instance v8, Lcom/google/appinventor/components/common/Permission;

    const-string v10, "RECEIVE_WAP_PUSH"

    const-string v12, "ReceiveWapPush"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/google/appinventor/components/common/Permission;->ReceiveWapPush:Lcom/google/appinventor/components/common/Permission;

    .line 21
    new-instance v10, Lcom/google/appinventor/components/common/Permission;

    const-string v12, "BODY_SENSORS"

    const-string v14, "BodySensors"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/google/appinventor/components/common/Permission;->BodySensors:Lcom/google/appinventor/components/common/Permission;

    .line 22
    new-instance v12, Lcom/google/appinventor/components/common/Permission;

    const-string v14, "READ_PHONE_NUMBERS"

    const/16 v16, 0x0

    const-string v2, "ReadPhoneNumbers"

    const/16 v17, 0x1

    const/4 v5, 0x7

    invoke-direct {v12, v2, v5, v14}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/google/appinventor/components/common/Permission;->ReadPhoneNumbers:Lcom/google/appinventor/components/common/Permission;

    .line 23
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v14, "NEARBY_WIFI_DEVICES"

    const/16 v18, 0x7

    const-string v5, "NearbyWifiDevices"

    const/16 v19, 0x2

    const/16 v7, 0x8

    invoke-direct {v2, v5, v7, v14}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->NearbyWifiDevices:Lcom/google/appinventor/components/common/Permission;

    .line 24
    new-instance v5, Lcom/google/appinventor/components/common/Permission;

    const-string v14, "RECEIVE_MMS"

    const/16 v20, 0x8

    const-string v7, "ReceiveMMS"

    const/16 v21, 0x3

    const/16 v9, 0x9

    invoke-direct {v5, v7, v9, v14}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/common/Permission;->ReceiveMMS:Lcom/google/appinventor/components/common/Permission;

    .line 25
    new-instance v7, Lcom/google/appinventor/components/common/Permission;

    const-string v14, "RECEIVE_SMS"

    const/16 v22, 0x9

    const-string v9, "ReceiveSMS"

    const/16 v23, 0x4

    const/16 v11, 0xa

    invoke-direct {v7, v9, v11, v14}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/appinventor/components/common/Permission;->ReceiveSMS:Lcom/google/appinventor/components/common/Permission;

    .line 26
    new-instance v9, Lcom/google/appinventor/components/common/Permission;

    const-string v14, "READ_PHONE_STATE"

    const/16 v24, 0xa

    const-string v11, "ReadPhoneState"

    const/16 v25, 0x5

    const/16 v13, 0xb

    invoke-direct {v9, v11, v13, v14}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/google/appinventor/components/common/Permission;->ReadPhoneState:Lcom/google/appinventor/components/common/Permission;

    .line 27
    new-instance v11, Lcom/google/appinventor/components/common/Permission;

    const-string v14, "SEND_SMS"

    const/16 v26, 0xb

    const-string v13, "SendSMS"

    const/16 v27, 0x6

    const/16 v15, 0xc

    invoke-direct {v11, v13, v15, v14}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/google/appinventor/components/common/Permission;->SendSMS:Lcom/google/appinventor/components/common/Permission;

    .line 28
    new-instance v13, Lcom/google/appinventor/components/common/Permission;

    const-string v14, "CALL_PHONE"

    const/16 v28, 0xc

    const-string v15, "CallPhone"

    move-object/from16 v29, v0

    const/16 v0, 0xd

    invoke-direct {v13, v15, v0, v14}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/google/appinventor/components/common/Permission;->CallPhone:Lcom/google/appinventor/components/common/Permission;

    .line 29
    new-instance v14, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "WRITE_CONTACTS"

    const/16 v30, 0xd

    const-string v0, "WriteContacts"

    move-object/from16 v31, v1

    const/16 v1, 0xe

    invoke-direct {v14, v0, v1, v15}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/google/appinventor/components/common/Permission;->WriteContacts:Lcom/google/appinventor/components/common/Permission;

    .line 30
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "BODY_SENSORS_BACKGROUND"

    const/16 v32, 0xe

    const-string v1, "BodySensorsBackground"

    move-object/from16 v33, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v15}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->BodySensorsBackground:Lcom/google/appinventor/components/common/Permission;

    .line 31
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "ACCEPT_HANDOVER"

    const/16 v34, 0xf

    const-string v2, "AcceptHandover"

    move-object/from16 v35, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0, v15}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->AcceptHandover:Lcom/google/appinventor/components/common/Permission;

    .line 32
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "WRITE_CALENDAR"

    const/16 v36, 0x10

    const-string v0, "WriteCalendar"

    move-object/from16 v37, v1

    const/16 v1, 0x11

    invoke-direct {v2, v0, v1, v15}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->WriteCalendar:Lcom/google/appinventor/components/common/Permission;

    .line 33
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "WRITE_CALL_LOG"

    const/16 v38, 0x11

    const-string v1, "WriteCallLog"

    move-object/from16 v39, v2

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v15}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->WriteCallLog:Lcom/google/appinventor/components/common/Permission;

    .line 34
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "USE_SIP"

    const/16 v40, 0x12

    const-string v2, "UseSIP"

    move-object/from16 v41, v0

    const/16 v0, 0x13

    invoke-direct {v1, v2, v0, v15}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->UseSIP:Lcom/google/appinventor/components/common/Permission;

    .line 35
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "PROCESS_OUTGOING_CALLS"

    const/16 v42, 0x13

    const-string v0, "ProcessOutgoingCalls"

    move-object/from16 v43, v1

    const/16 v1, 0x14

    invoke-direct {v2, v0, v1, v15}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->ProcessOutgoingCalls:Lcom/google/appinventor/components/common/Permission;

    .line 36
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "READ_CELL_BROADCASTS"

    const/16 v44, 0x14

    const-string v1, "ReadCellBroadcasts"

    move-object/from16 v45, v2

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v15}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->ReadCellBroadcasts:Lcom/google/appinventor/components/common/Permission;

    .line 37
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "UWB_RANGING"

    const/16 v46, 0x15

    const-string v2, "UWBRanging"

    move-object/from16 v47, v0

    const/16 v0, 0x16

    invoke-direct {v1, v2, v0, v15}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->UWBRanging:Lcom/google/appinventor/components/common/Permission;

    .line 38
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "ACTIVITY_RECOGNITION"

    const-string v15, "ActivityRecognition"

    move-object/from16 v48, v1

    const/16 v1, 0x17

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->ActivityRecognition:Lcom/google/appinventor/components/common/Permission;

    .line 39
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "ACCESS_BACKGROUND_LOCATION"

    const-string v15, "AccessBackgroundLocation"

    move-object/from16 v49, v0

    const/16 v0, 0x18

    invoke-direct {v1, v15, v0, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->AccessBackgroundLocation:Lcom/google/appinventor/components/common/Permission;

    .line 40
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "ACCESS_MEDIA_LOCATION"

    const-string v15, "AccessMediaLocation"

    move-object/from16 v50, v1

    const/16 v1, 0x19

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->AccessMediaLocation:Lcom/google/appinventor/components/common/Permission;

    .line 41
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "ACCESS_COARSE_LOCATION"

    const-string v15, "CoarseLocation"

    move-object/from16 v51, v0

    const/16 v0, 0x1a

    invoke-direct {v1, v15, v0, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->CoarseLocation:Lcom/google/appinventor/components/common/Permission;

    .line 42
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "ACCESS_FINE_LOCATION"

    const-string v15, "FineLocation"

    move-object/from16 v52, v1

    const/16 v1, 0x1b

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->FineLocation:Lcom/google/appinventor/components/common/Permission;

    .line 43
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "ACCESS_MOCK_LOCATION"

    const-string v15, "MockLocation"

    move-object/from16 v53, v0

    const/16 v0, 0x1c

    invoke-direct {v1, v15, v0, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->MockLocation:Lcom/google/appinventor/components/common/Permission;

    .line 45
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "ACCESS_LOCATION_EXTRA_COMMANDS"

    const-string v15, "LocationExtraCommands"

    move-object/from16 v54, v1

    const/16 v1, 0x1d

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->LocationExtraCommands:Lcom/google/appinventor/components/common/Permission;

    .line 46
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "READ_EXTERNAL_STORAGE"

    const-string v15, "ReadExternalStorage"

    move-object/from16 v55, v0

    const/16 v0, 0x1e

    invoke-direct {v1, v15, v0, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->ReadExternalStorage:Lcom/google/appinventor/components/common/Permission;

    .line 47
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "WRITE_EXTERNAL_STORAGE"

    const-string v15, "WriteExternalStorage"

    move-object/from16 v56, v1

    const/16 v1, 0x1f

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->WriteExternalStorage:Lcom/google/appinventor/components/common/Permission;

    .line 48
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "CAMERA"

    const-string v15, "Camera"

    move-object/from16 v57, v0

    const/16 v0, 0x20

    invoke-direct {v1, v15, v0, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->Camera:Lcom/google/appinventor/components/common/Permission;

    .line 49
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "RECORD_AUDIO"

    const-string v15, "Audio"

    move-object/from16 v58, v1

    const/16 v1, 0x21

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->Audio:Lcom/google/appinventor/components/common/Permission;

    .line 50
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "VIBRATE"

    const-string v15, "Vibrate"

    move-object/from16 v59, v0

    const/16 v0, 0x22

    invoke-direct {v1, v15, v0, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->Vibrate:Lcom/google/appinventor/components/common/Permission;

    .line 52
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "INTERNET"

    const-string v15, "Internet"

    move-object/from16 v60, v1

    const/16 v1, 0x23

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->Internet:Lcom/google/appinventor/components/common/Permission;

    .line 54
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "NFC"

    const-string v15, "NearFieldCommunication"

    move-object/from16 v61, v0

    const/16 v0, 0x24

    invoke-direct {v1, v15, v0, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->NearFieldCommunication:Lcom/google/appinventor/components/common/Permission;

    .line 56
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "BLUETOOTH"

    const-string v15, "Bluetooth"

    move-object/from16 v62, v1

    const/16 v1, 0x25

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->Bluetooth:Lcom/google/appinventor/components/common/Permission;

    .line 58
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "BLUETOOTH_ADMIN"

    const-string v15, "BluetoothAdmin"

    move-object/from16 v63, v0

    const/16 v0, 0x26

    invoke-direct {v1, v15, v0, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->BluetoothAdmin:Lcom/google/appinventor/components/common/Permission;

    .line 60
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "ACCESS_WIFI_STATE"

    const-string v15, "WifiState"

    move-object/from16 v64, v1

    const/16 v1, 0x27

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->WifiState:Lcom/google/appinventor/components/common/Permission;

    .line 62
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "ACCESS_NETWORK_STATE"

    const-string v15, "NetworkState"

    move-object/from16 v65, v0

    const/16 v0, 0x28

    invoke-direct {v1, v15, v0, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->NetworkState:Lcom/google/appinventor/components/common/Permission;

    .line 64
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "ACCOUNT_MANAGER"

    const-string v15, "AccountManager"

    move-object/from16 v66, v1

    const/16 v1, 0x29

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->AccountManager:Lcom/google/appinventor/components/common/Permission;

    .line 66
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "MANAGE_ACCOUNTS"

    const-string v15, "ManageAccounts"

    move-object/from16 v67, v0

    const/16 v0, 0x2a

    invoke-direct {v1, v15, v0, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->ManageAccounts:Lcom/google/appinventor/components/common/Permission;

    .line 68
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "GET_ACCOUNTS"

    const-string v15, "GetAccounts"

    move-object/from16 v68, v1

    const/16 v1, 0x2b

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->GetAccounts:Lcom/google/appinventor/components/common/Permission;

    .line 69
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "READ_CONTACTS"

    const-string v15, "ReadContacts"

    move-object/from16 v69, v0

    const/16 v0, 0x2c

    invoke-direct {v1, v15, v0, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->ReadContacts:Lcom/google/appinventor/components/common/Permission;

    .line 70
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "USE_CREDENTIALS"

    const-string v15, "UseCredentials"

    move-object/from16 v70, v1

    const/16 v1, 0x2d

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->UseCredentials:Lcom/google/appinventor/components/common/Permission;

    .line 72
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "QUERY_ALL_PACKAGES"

    const-string v15, "QueryAllPackages"

    move-object/from16 v71, v0

    const/16 v0, 0x2e

    invoke-direct {v1, v15, v0, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->QueryAllPackages:Lcom/google/appinventor/components/common/Permission;

    .line 74
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "BLUETOOTH_ADVERTISE"

    const-string v15, "BluetoothAdvertise"

    move-object/from16 v72, v1

    const/16 v1, 0x2f

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->BluetoothAdvertise:Lcom/google/appinventor/components/common/Permission;

    .line 75
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "BLUETOOTH_CONNECT"

    const-string v15, "BluetoothConnect"

    move-object/from16 v73, v0

    const/16 v0, 0x30

    invoke-direct {v1, v15, v0, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->BluetoothConnect:Lcom/google/appinventor/components/common/Permission;

    .line 76
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "BLUETOOTH_SCAN"

    const-string v15, "BluetoothScan"

    move-object/from16 v74, v1

    const/16 v1, 0x31

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->BluetoothScan:Lcom/google/appinventor/components/common/Permission;

    .line 78
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "READ_MEDIA_IMAGES"

    const-string v15, "ReadMediaImages"

    move-object/from16 v75, v0

    const/16 v0, 0x32

    invoke-direct {v1, v15, v0, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->ReadMediaImages:Lcom/google/appinventor/components/common/Permission;

    .line 79
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "READ_MEDIA_VIDEO"

    const-string v15, "ReadMediaVideo"

    move-object/from16 v76, v1

    const/16 v1, 0x33

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->ReadMediaVideo:Lcom/google/appinventor/components/common/Permission;

    .line 80
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v2, "READ_MEDIA_AUDIO"

    const-string v15, "ReadMediaAudio"

    move-object/from16 v77, v0

    const/16 v0, 0x34

    invoke-direct {v1, v15, v0, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->ReadMediaAudio:Lcom/google/appinventor/components/common/Permission;

    const/16 v0, 0x35

    .line 14
    new-array v0, v0, [Lcom/google/appinventor/components/common/Permission;

    aput-object v29, v0, v16

    aput-object v31, v0, v17

    aput-object v3, v0, v19

    aput-object v4, v0, v21

    aput-object v6, v0, v23

    aput-object v8, v0, v25

    aput-object v10, v0, v27

    aput-object v12, v0, v18

    aput-object v33, v0, v20

    aput-object v5, v0, v22

    aput-object v7, v0, v24

    aput-object v9, v0, v26

    aput-object v11, v0, v28

    aput-object v13, v0, v30

    aput-object v14, v0, v32

    aput-object v35, v0, v34

    aput-object v37, v0, v36

    aput-object v39, v0, v38

    aput-object v41, v0, v40

    aput-object v43, v0, v42

    aput-object v45, v0, v44

    aput-object v47, v0, v46

    const/16 v2, 0x16

    aput-object v48, v0, v2

    const/16 v2, 0x17

    aput-object v49, v0, v2

    const/16 v2, 0x18

    aput-object v50, v0, v2

    const/16 v2, 0x19

    aput-object v51, v0, v2

    const/16 v2, 0x1a

    aput-object v52, v0, v2

    const/16 v2, 0x1b

    aput-object v53, v0, v2

    const/16 v2, 0x1c

    aput-object v54, v0, v2

    const/16 v2, 0x1d

    aput-object v55, v0, v2

    const/16 v2, 0x1e

    aput-object v56, v0, v2

    const/16 v2, 0x1f

    aput-object v57, v0, v2

    const/16 v2, 0x20

    aput-object v58, v0, v2

    const/16 v2, 0x21

    aput-object v59, v0, v2

    const/16 v2, 0x22

    aput-object v60, v0, v2

    const/16 v2, 0x23

    aput-object v61, v0, v2

    const/16 v2, 0x24

    aput-object v62, v0, v2

    const/16 v2, 0x25

    aput-object v63, v0, v2

    const/16 v2, 0x26

    aput-object v64, v0, v2

    const/16 v2, 0x27

    aput-object v65, v0, v2

    const/16 v2, 0x28

    aput-object v66, v0, v2

    const/16 v2, 0x29

    aput-object v67, v0, v2

    const/16 v2, 0x2a

    aput-object v68, v0, v2

    const/16 v2, 0x2b

    aput-object v69, v0, v2

    const/16 v2, 0x2c

    aput-object v70, v0, v2

    const/16 v2, 0x2d

    aput-object v71, v0, v2

    const/16 v2, 0x2e

    aput-object v72, v0, v2

    const/16 v2, 0x2f

    aput-object v73, v0, v2

    const/16 v2, 0x30

    aput-object v74, v0, v2

    const/16 v2, 0x31

    aput-object v75, v0, v2

    const/16 v2, 0x32

    aput-object v76, v0, v2

    const/16 v2, 0x33

    aput-object v77, v0, v2

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 14
    sput-object v0, Lcom/google/appinventor/components/common/Permission;->c:[Lcom/google/appinventor/components/common/Permission;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->b:Ljava/util/HashMap;

    .line 95
    invoke-static {}, Lcom/google/appinventor/components/common/Permission;->values()[Lcom/google/appinventor/components/common/Permission;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 96
    sget-object v4, Lcom/google/appinventor/components/common/Permission;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/Permission;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput-object p3, p0, Lcom/google/appinventor/components/common/Permission;->a:Ljava/lang/String;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/Permission;
    .locals 1

    .line 101
    sget-object v0, Lcom/google/appinventor/components/common/Permission;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/Permission;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/Permission;
    .locals 1

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/Permission;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/Permission;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/Permission;->c:[Lcom/google/appinventor/components/common/Permission;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/Permission;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/Permission;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/common/Permission;->a:Ljava/lang/String;

    return-object v0
.end method

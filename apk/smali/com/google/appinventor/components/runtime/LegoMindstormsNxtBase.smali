.class public Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final ERROR_MESSAGES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOY_ROBOT:I = 0x804


# instance fields
.field protected bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

.field protected final logTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x20

    .line 43
    const-string v2, "Pending communication transaction in progress"

    const/16 v3, 0x40

    .line 44
    const-string v4, "Specified mailbox queue is empty"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x81

    .line 45
    const-string v2, "No more handles"

    const/16 v3, 0x82

    .line 46
    const-string v4, "No space"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x83

    .line 47
    const-string v2, "No more files"

    const/16 v3, 0x84

    .line 48
    const-string v4, "End of file expected"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x85

    .line 49
    const-string v2, "End of file"

    const/16 v3, 0x86

    .line 50
    const-string v4, "Not a linear file"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x87

    .line 51
    const-string v2, "File not found"

    const/16 v3, 0x88

    .line 52
    const-string v4, "Handle already closed"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x89

    .line 53
    const-string v2, "No linear space"

    const/16 v3, 0x8a

    .line 54
    const-string v4, "Undefined error"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x8b

    .line 55
    const-string v2, "File is busy"

    const/16 v3, 0x8c

    .line 56
    const-string v4, "No write buffers"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x8d

    .line 57
    const-string v2, "Append not possible"

    const/16 v3, 0x8e

    .line 58
    const-string v4, "File is full"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x8f

    .line 59
    const-string v2, "File exists"

    const/16 v3, 0x90

    .line 60
    const-string v4, "Module not found"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x91

    .line 61
    const-string v2, "Out of boundary"

    const/16 v3, 0x92

    .line 62
    const-string v4, "Illegal file name"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x93

    .line 63
    const-string v2, "Illegal handle"

    const/16 v3, 0xbd

    .line 64
    const-string v4, "Request failed (i.e. specified file not found)"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xbe

    .line 65
    const-string v2, "Unknown command opcode"

    const/16 v3, 0xbf

    .line 66
    const-string v4, "Insane packet"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xc0

    .line 67
    const-string v2, "Data contains out-of-range values"

    const/16 v3, 0xdd

    .line 68
    const-string v4, "Communication bus error"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xde

    .line 69
    const-string v2, "No free memory in communication buffer"

    const/16 v3, 0xdf

    .line 70
    const-string v4, "Specified channel/connection is not valid"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xe0

    .line 71
    const-string v2, "Specified channel/connection not configured or busy"

    const/16 v3, 0xec

    .line 72
    const-string v4, "No active program"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xed

    .line 73
    const-string v2, "Illegal size specified"

    const/16 v3, 0xee

    .line 74
    const-string v4, "Illegal mailbox queue ID specified"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xef

    .line 75
    const-string v2, "Attempted to access invalid field of a structure"

    const/16 v3, 0xf0

    .line 76
    const-string v4, "Bad input or output specified"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xfb

    .line 77
    const-string v2, "Insufficient memory available"

    const/16 v3, 0xff

    .line 78
    const-string v4, "Bad arguments"

    .line 0
    invoke-static {v1, v0, v2, v3, v4}, L_COROUTINE/a;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 100
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 92
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    return-void
.end method

.method private handleError(Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p2, :cond_0

    return-void

    .line 384
    :cond_0
    sget-object v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x194

    if-eqz v2, :cond_1

    .line 386
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {p2, p0, p1, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 389
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    and-int/lit16 p2, p2, 0xff

    .line 391
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    const-string v4, "Error code 0x"

    .line 0
    invoke-static {v4, p2}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 391
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 389
    invoke-virtual {v2, p0, p1, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method private receiveReturnPackage(Ljava/lang/String;)[B
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 335
    array-length v2, v0

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    .line 336
    invoke-virtual {p0, v0, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUWORDValueFromBytes([BI)I

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 338
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    return-object v0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x193

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 345
    new-array p1, v3, [B

    return-object p1
.end method


# virtual methods
.method public BluetoothClient()Lcom/google/appinventor/components/runtime/BluetoothClient;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The BluetoothClient component that should be used for communication."
        userVisible = false
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    return-object v0
.end method

.method public BluetoothClient(Lcom/google/appinventor/components/runtime/BluetoothClient;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "BluetoothClient"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->removeBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->detachComponent(Lcom/google/appinventor/components/runtime/Component;)V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    :cond_0
    if-eqz p1, :cond_1

    .line 134
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const/16 v0, 0x804

    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachComponent(Lcom/google/appinventor/components/runtime/Component;Ljava/util/Set;)Z

    .line 136
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->addBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V

    .line 137
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    :cond_1
    return-void
.end method

.method public final Initialize()V
    .locals 0

    return-void
.end method

.method public afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 0

    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 0

    return-void
.end method

.method public final checkBluetooth(Ljava/lang/String;)Z
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x191

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1

    .line 313
    :cond_0
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x192

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final convertMotorPortLetterToNumber(C)I
    .locals 3

    const/16 v0, 0x41

    if-eq p1, v0, :cond_5

    const/16 v0, 0x61

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x42

    if-eq p1, v0, :cond_4

    const/16 v0, 0x62

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x43

    if-eq p1, v0, :cond_3

    const/16 v0, 0x63

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 528
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal motor port letter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const/4 p1, 0x2

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public final convertMotorPortLetterToNumber(Ljava/lang/String;)I
    .locals 2

    .line 514
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 515
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->convertMotorPortLetterToNumber(C)I

    move-result p1

    return p1

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal motor port letter "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final convertSensorPortLetterToNumber(C)I
    .locals 3

    const/16 v0, 0x31

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0x32

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/16 v0, 0x33

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/16 v0, 0x34

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 548
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal sensor port letter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final convertSensorPortLetterToNumber(Ljava/lang/String;)I
    .locals 2

    .line 532
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 533
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->convertSensorPortLetterToNumber(C)I

    move-result p1

    return p1

    .line 535
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal sensor port letter "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final copyBooleanValueToBytes(Z[BI)V
    .locals 0

    .line 397
    aput-byte p1, p2, p3

    return-void
.end method

.method public final copySBYTEValueToBytes(I[BI)V
    .locals 0

    int-to-byte p1, p1

    .line 401
    aput-byte p1, p2, p3

    return-void
.end method

.method public final copySLONGValueToBytes(I[BI)V
    .locals 2

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 421
    aput-byte v0, p2, p3

    shr-int/lit8 v0, p1, 0x8

    add-int/lit8 v1, p3, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 423
    aput-byte v0, p2, v1

    shr-int/lit8 v0, p1, 0x10

    add-int/lit8 v1, p3, 0x2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 425
    aput-byte v0, p2, v1

    shr-int/lit8 p1, p1, 0x18

    add-int/lit8 p3, p3, 0x3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 427
    aput-byte p1, p2, p3

    return-void
.end method

.method public final copySWORDValueToBytes(I[BI)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 409
    aput-byte v0, p2, p3

    shr-int/lit8 p1, p1, 0x8

    add-int/lit8 p3, p3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 411
    aput-byte p1, p2, p3

    return-void
.end method

.method public final copyStringValueToBytes(Ljava/lang/String;[BII)V
    .locals 5

    .line 442
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p4, :cond_0

    .line 443
    invoke-virtual {p1, v1, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 447
    :cond_0
    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 449
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UnsupportedEncodingException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 452
    :goto_0
    array-length v0, p1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 453
    invoke-static {p1, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final copyUBYTEValueToBytes(I[BI)V
    .locals 0

    int-to-byte p1, p1

    .line 405
    aput-byte p1, p2, p3

    return-void
.end method

.method public final copyULONGValueToBytes(J[BI)V
    .locals 5

    const-wide/16 v0, 0xff

    and-long v2, p1, v0

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 431
    aput-byte v2, p3, p4

    const/16 v2, 0x8

    shr-long v2, p1, v2

    add-int/lit8 v4, p4, 0x1

    and-long/2addr v2, v0

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 433
    aput-byte v2, p3, v4

    const/16 v2, 0x10

    shr-long v2, p1, v2

    add-int/lit8 v4, p4, 0x2

    and-long/2addr v2, v0

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 435
    aput-byte v2, p3, v4

    const/16 v2, 0x18

    shr-long/2addr p1, v2

    add-int/lit8 p4, p4, 0x3

    and-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 437
    aput-byte p1, p3, p4

    return-void
.end method

.method public final copyUWORDValueToBytes(I[BI)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 415
    aput-byte v0, p2, p3

    shr-int/lit8 p1, p1, 0x8

    add-int/lit8 p3, p3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 417
    aput-byte p1, p2, p3

    return-void
.end method

.method public final evaluateStatus(Ljava/lang/String;[BB)Z
    .locals 0

    .line 349
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getStatus(Ljava/lang/String;[BB)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 353
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->handleError(Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1
.end method

.method public final getBooleanValueFromBytes([BI)Z
    .locals 0

    .line 457
    aget-byte p1, p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getInputValues(Ljava/lang/String;I)[B
    .locals 3

    const/4 v0, 0x3

    .line 205
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 206
    aput-byte v1, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x1

    .line 207
    aput-byte v1, v0, v2

    const/4 v1, 0x2

    .line 208
    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 209
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object p2

    .line 210
    aget-byte v0, v0, v2

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    return-object p2

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    array-length p2, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unexpected return package length "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected 16)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getInputValues(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B
    .locals 0

    .line 222
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getInputValues(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public final getSBYTEValueFromBytes([BI)I
    .locals 0

    .line 461
    aget-byte p1, p1, p2

    return p1
.end method

.method public final getSLONGValueFromBytes([BI)I
    .locals 2

    .line 479
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1
.end method

.method public final getSWORDValueFromBytes([BI)I
    .locals 1

    .line 469
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method public final getStatus(Ljava/lang/String;[BB)I
    .locals 5

    .line 359
    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 360
    aget-byte v0, p2, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 361
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    and-int/lit16 v0, v0, 0xff

    .line 362
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": unexpected return package byte 0: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (expected 0x02)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 364
    aget-byte v0, p2, v0

    if-eq v0, p3, :cond_1

    .line 365
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    and-int/lit16 v0, v0, 0xff

    .line 366
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    and-int/lit16 p3, p3, 0xff

    .line 367
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unexpected return package byte 1: 0x"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (expected 0x"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 365
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUBYTEValueFromBytes([BI)I

    move-result p1

    return p1

    .line 371
    :cond_2
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    array-length p2, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unexpected return package length "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected >= 3)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public final getStringValueFromBytes([BI)Ljava/lang/String;
    .locals 2

    move v0, p2

    .line 495
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 496
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    sub-int/2addr v0, p2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 501
    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getStringValueFromBytes([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getStringValueFromBytes([BII)Ljava/lang/String;
    .locals 4

    .line 506
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 508
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnsupportedEncodingException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public final getUBYTEValueFromBytes([BI)I
    .locals 0

    .line 465
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public final getULONGValueFromBytes([BI)J
    .locals 7

    .line 486
    aget-byte v0, p1, p2

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v2

    const/16 v2, 0x18

    shl-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public final getUWORDValueFromBytes([BI)I
    .locals 1

    .line 474
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method public final lsGetStatus(Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x3

    .line 238
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 239
    aput-byte v2, v1, v2

    const/16 v3, 0xe

    const/4 v4, 0x1

    .line 240
    aput-byte v3, v1, v4

    const/4 v3, 0x2

    .line 241
    invoke-virtual {p0, p2, v1, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 242
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object p2

    .line 243
    aget-byte v1, v1, v4

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    array-length v1, p2

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 245
    invoke-virtual {p0, p2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUBYTEValueFromBytes([BI)I

    move-result p1

    return p1

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    array-length p2, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unexpected return package length "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected 4)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method

.method public final lsGetStatus(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)I
    .locals 0

    .line 255
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->lsGetStatus(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final lsRead(Ljava/lang/String;I)[B
    .locals 3

    const/4 v0, 0x3

    .line 279
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 280
    aput-byte v1, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x1

    .line 281
    aput-byte v1, v0, v2

    const/4 v1, 0x2

    .line 282
    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 283
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object p2

    .line 284
    aget-byte v0, v0, v2

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    array-length v0, p2

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    return-object p2

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    array-length p2, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unexpected return package length "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected 20)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final lsRead(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B
    .locals 0

    .line 296
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->lsRead(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public final lsWrite(Ljava/lang/String;I[BI)V
    .locals 5

    .line 259
    array-length v0, p3

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    .line 262
    array-length v0, p3

    const/4 v1, 0x5

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 263
    aput-byte v2, v0, v2

    const/16 v3, 0xf

    const/4 v4, 0x1

    .line 264
    aput-byte v3, v0, v4

    const/4 v3, 0x2

    .line 265
    invoke-virtual {p0, p2, v0, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 266
    array-length p2, p3

    const/4 v3, 0x3

    invoke-virtual {p0, p2, v0, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 p2, 0x4

    .line 267
    invoke-virtual {p0, p4, v0, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 268
    array-length p2, p3

    invoke-static {p3, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object p2

    .line 270
    aget-byte p3, v0, v4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    return-void

    .line 260
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length must be <= 16"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final lsWrite(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;[BI)V
    .locals 0

    .line 275
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->lsWrite(Ljava/lang/String;I[BI)V

    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->removeBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V

    .line 593
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->detachComponent(Lcom/google/appinventor/components/runtime/Component;)V

    const/4 v0, 0x0

    .line 594
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    :cond_0
    return-void
.end method

.method public final resetInputScaledValue(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x3

    .line 226
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    .line 227
    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    .line 228
    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 229
    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 230
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    return-void
.end method

.method public final resetInputScaledValue(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)V
    .locals 0

    .line 234
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->resetInputScaledValue(Ljava/lang/String;I)V

    return-void
.end method

.method public final sanitizePower(I)I
    .locals 4

    .line 552
    const-string v0, "power "

    const/16 v1, -0x64

    if-ge p1, v1, :cond_0

    .line 553
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid, using -100."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x64

    :cond_0
    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 557
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid, using 100."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return p1
.end method

.method public final sanitizeTurnRatio(I)I
    .locals 4

    .line 564
    const-string v0, "turnRatio "

    const/16 v1, -0x64

    if-ge p1, v1, :cond_0

    .line 565
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid, using -100."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x64

    :cond_0
    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 569
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid, using 100."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return p1
.end method

.method public final sendCommand(Ljava/lang/String;[B)V
    .locals 3

    const/4 v0, 0x2

    .line 327
    new-array v0, v0, [B

    .line 328
    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUWORDValueToBytes(I[BI)V

    .line 329
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    .line 330
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    return-void
.end method

.method public final sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B
    .locals 0

    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    .line 323
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->receiveReturnPackage(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public final setInputMode(Ljava/lang/String;III)V
    .locals 4

    const/4 v0, 0x5

    .line 187
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, -0x80

    .line 188
    aput-byte v3, v1, v2

    const/4 v2, 0x1

    .line 189
    aput-byte v0, v1, v2

    const/4 v0, 0x2

    .line 190
    invoke-virtual {p0, p2, v1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 p2, 0x3

    .line 191
    invoke-virtual {p0, p3, v1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 p2, 0x4

    .line 192
    invoke-virtual {p0, p4, v1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 193
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    return-void
.end method

.method public final setInputMode(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;Lcom/google/appinventor/components/common/NxtSensorType;Lcom/google/appinventor/components/common/NxtSensorMode;)V
    .locals 0

    .line 201
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p3}, Lcom/google/appinventor/components/common/NxtSensorType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p4}, Lcom/google/appinventor/components/common/NxtSensorMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->setInputMode(Ljava/lang/String;III)V

    return-void
.end method

.method public final setOutputState(Ljava/lang/String;IIIIIIJ)V
    .locals 3

    .line 146
    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sanitizePower(I)I

    move-result p3

    .line 147
    invoke-virtual {p0, p6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sanitizeTurnRatio(I)I

    move-result p6

    const/16 v0, 0xc

    .line 148
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    .line 149
    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    .line 150
    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 151
    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 p2, 0x3

    .line 152
    invoke-virtual {p0, p3, v0, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copySBYTEValueToBytes(I[BI)V

    .line 153
    invoke-virtual {p0, p4, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 p2, 0x5

    .line 154
    invoke-virtual {p0, p5, v0, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 p2, 0x6

    .line 155
    invoke-virtual {p0, p6, v0, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copySBYTEValueToBytes(I[BI)V

    const/4 p2, 0x7

    .line 156
    invoke-virtual {p0, p7, v0, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/16 p2, 0x8

    .line 162
    invoke-virtual {p0, p8, p9, v0, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyULONGValueToBytes(J[BI)V

    .line 163
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    return-void
.end method

.method public final setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V
    .locals 10

    .line 177
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtMotorPort;->toInt()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 179
    invoke-virtual {p4}, Lcom/google/appinventor/components/common/NxtMotorMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 180
    invoke-virtual {p5}, Lcom/google/appinventor/components/common/NxtRegulationMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 182
    invoke-virtual/range {p7 .. p7}, Lcom/google/appinventor/components/common/NxtRunState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move/from16 v6, p6

    move-wide/from16 v8, p8

    .line 175
    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    return-void
.end method

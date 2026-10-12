.class public abstract Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field protected final adapter:Landroid/bluetooth/BluetoothAdapter;

.field private final bluetoothConnectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private byteOrder:Ljava/nio/ByteOrder;

.field private delimiter:B

.field protected disconnectOnError:Z

.field private encoding:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field protected final logTag:Ljava/lang/String;

.field private outputStream:Ljava/io/OutputStream;

.field protected secure:Z

.field private socket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    .line 73
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    const/4 p2, 0x0

    .line 74
    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    .line 75
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/SUtil;->getAdapter(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 77
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->HighByteFirst(Z)V

    .line 78
    const-string p1, "UTF-8"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->CharacterEncoding(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->DelimiterByte(I)V

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Secure(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 88
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 89
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 90
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method private fireAfterConnectEvent()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;

    .line 113
    invoke-interface {v1, p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;->afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireBeforeDisconnectEvent()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;

    .line 119
    invoke-interface {v1, p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;->beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private prepareToDie()V
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    .line 851
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    :cond_0
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Bluetooth is available on the device"
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public BluetoothError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The BluetoothError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    return-void
.end method

.method public BytesAvailableToReceive()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an estimate of the number of bytes that can be received without blocking"
    .end annotation

    .line 561
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BytesAvailableToReceive"

    if-nez v0, :cond_0

    const/16 v0, 0x203

    .line 562
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1

    .line 568
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 570
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IO Exception during Getting Receive Availability "

    .line 0
    invoke-static {v5, v4, v3}, L_COROUTINE/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v3, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 575
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const/16 v0, 0x205

    .line 574
    invoke-virtual {p0, v2, v0, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1
.end method

.method public CharacterEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public CharacterEncoding(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "UTF-8"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 274
    :try_start_0
    const-string v0, "check"

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 275
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 v0, 0x207

    const/4 v1, 0x1

    .line 277
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "CharacterEncoding"

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public DelimiterByte()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 320
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B

    return v0
.end method

.method public DelimiterByte(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    int-to-byte v0, p1

    shr-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 307
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 306
    const-string p1, "DelimiterByte"

    const/16 v1, 0x1ff

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 310
    :cond_0
    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B

    return-void
.end method

.method public final Disconnect()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Disconnect from the connected Bluetooth device."
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->fireBeforeDisconnectEvent()V

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    const-string v2, "Disconnected from Bluetooth device."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 183
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while disconnecting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 187
    :cond_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 188
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public DisconnectOnError()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    return v0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Bluetooth is enabled"
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public HighByteFirst(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-eqz p1, :cond_0

    .line 262
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public HighByteFirst()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Initialize()V
    .locals 0

    return-void
.end method

.method public IsConnected()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "On devices with API level 14 (LEVEL_ICE_CREAM_SANDWICH) or higher, this property returned is accurate. But on old devices with API level lower than 14, it may not return the current state of connection(e.g., it might be disconnected but you may not know until you attempt to read/write the socket."
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ReceiveSigned1ByteNumber()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 1-byte number from the connected Bluetooth device."
    .end annotation

    .line 611
    const-string v0, "ReceiveSigned1ByteNumber"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 612
    array-length v2, v0

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    return v3

    .line 616
    :cond_0
    aget-byte v0, v0, v3

    return v0
.end method

.method public ReceiveSigned2ByteNumber()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 2-byte number from the connected Bluetooth device."
    .end annotation

    .line 639
    const-string v0, "ReceiveSigned2ByteNumber"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 640
    array-length v2, v0

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    return v3

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    .line 645
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v3

    :goto_0
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0

    .line 647
    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v4

    goto :goto_0
.end method

.method public ReceiveSigned4ByteNumber()J
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 4-byte number from the connected Bluetooth device."
    .end annotation

    .line 675
    const-string v0, "ReceiveSigned4ByteNumber"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 676
    array-length v2, v0

    if-eq v2, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 680
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-ne v1, v2, :cond_1

    .line 681
    aget-byte v1, v0, v6

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v0, v0, v3

    :goto_0
    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    .line 686
    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v0, v0, v6

    goto :goto_0
.end method

.method public ReceiveSignedBytes(I)Ljava/util/List;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive multiple signed byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 731
    const-string v0, "ReceiveSignedBytes"

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object p1

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 733
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 734
    aget-byte v2, p1, v1

    .line 735
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public ReceiveText(I)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive text from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .line 591
    const-string v0, "ReceiveText"

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    if-gez p1, :cond_0

    .line 595
    :try_start_0
    new-instance p1, Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 597
    :cond_0
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 600
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnsupportedEncodingException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public ReceiveUnsigned1ByteNumber()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive an unsigned 1-byte number from the connected Bluetooth device."
    .end annotation

    .line 625
    const-string v0, "ReceiveUnsigned1ByteNumber"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 626
    array-length v2, v0

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    return v3

    .line 630
    :cond_0
    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public ReceiveUnsigned2ByteNumber()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a unsigned 2-byte number from the connected Bluetooth device."
    .end annotation

    .line 657
    const-string v0, "ReceiveUnsigned2ByteNumber"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 658
    array-length v2, v0

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    return v3

    .line 662
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    .line 663
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v3

    :goto_0
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0

    .line 665
    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v4

    goto :goto_0
.end method

.method public ReceiveUnsigned4ByteNumber()J
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a unsigned 4-byte number from the connected Bluetooth device."
    .end annotation

    .line 699
    const-string v0, "ReceiveUnsigned4ByteNumber"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 700
    array-length v2, v0

    if-eq v2, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x3

    const-wide/16 v10, 0xff

    if-ne v1, v2, :cond_1

    .line 705
    aget-byte v1, v0, v9

    int-to-long v1, v1

    and-long/2addr v1, v10

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long/2addr v8, v10

    shl-long v7, v8, v7

    or-long/2addr v1, v7

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v10

    shl-long v5, v6, v5

    or-long/2addr v1, v5

    aget-byte v0, v0, v4

    :goto_0
    int-to-long v4, v0

    and-long/2addr v4, v10

    shl-long v3, v4, v3

    or-long/2addr v1, v3

    return-wide v1

    .line 710
    :cond_1
    aget-byte v1, v0, v4

    int-to-long v1, v1

    and-long/2addr v1, v10

    aget-byte v4, v0, v6

    int-to-long v12, v4

    and-long/2addr v12, v10

    shl-long v6, v12, v7

    or-long/2addr v1, v6

    aget-byte v4, v0, v8

    int-to-long v6, v4

    and-long/2addr v6, v10

    shl-long v4, v6, v5

    or-long/2addr v1, v4

    aget-byte v0, v0, v9

    goto :goto_0
.end method

.method public ReceiveUnsignedBytes(I)Ljava/util/List;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive multiple unsigned byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 754
    const-string v0, "ReceiveUnsignedBytes"

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object p1

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 756
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 757
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    .line 758
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public Secure(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 235
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->secure:Z

    return-void
.end method

.method public Secure()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to invoke SSP (Simple Secure Pairing), which is supported on devices with Bluetooth v2.1 or higher. When working with embedded Bluetooth devices, this property may need to be set to False. For Android 2.0-2.2, this property setting will be ignored."
    .end annotation

    .line 223
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->secure:Z

    return v0
.end method

.method public Send1ByteNumber(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 1-byte number to the connected Bluetooth device."
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 356
    const-string v2, "Send1ByteNumber"

    .line 359
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-byte v4, v3

    shr-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    const/16 v3, 0x1ff

    .line 368
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 372
    :cond_0
    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;B)V

    return-void

    :catch_0
    const/16 v3, 0x1fe

    .line 361
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public Send2ByteNumber(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 2-byte number to the connected Bluetooth device."
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 387
    const-string v3, "Send2ByteNumber"

    .line 390
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    new-array v5, v0, [B

    .line 397
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v6, v7, :cond_0

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    .line 398
    aput-byte v6, v5, v1

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    .line 400
    aput-byte v6, v5, v2

    goto :goto_0

    :cond_0
    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    .line 402
    aput-byte v6, v5, v2

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    .line 404
    aput-byte v6, v5, v1

    :goto_0
    shr-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 409
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v1

    const/16 p1, 0x200

    .line 408
    invoke-virtual {p0, v3, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 412
    :cond_1
    invoke-virtual {p0, v3, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    return-void

    :catch_0
    const/16 v0, 0x1fe

    .line 392
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v3, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public Send4ByteNumber(Ljava/lang/String;)V
    .locals 17
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 4-byte number to the connected Bluetooth device."
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 427
    const-string v4, "Send4ByteNumber"

    .line 430
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x4

    .line 436
    new-array v8, v7, [B

    .line 437
    iget-object v9, v0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v11, 0x18

    const/16 v12, 0x10

    const/4 v13, 0x3

    const/16 v14, 0x8

    const-wide/16 v15, 0xff

    if-ne v9, v10, :cond_0

    and-long v9, v5, v15

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 438
    aput-byte v9, v8, v13

    shr-long v9, v5, v14

    and-long/2addr v9, v15

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 440
    aput-byte v9, v8, v1

    shr-long v9, v5, v12

    and-long/2addr v9, v15

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 442
    aput-byte v9, v8, v2

    shr-long/2addr v5, v11

    and-long v9, v5, v15

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 444
    aput-byte v9, v8, v3

    goto :goto_0

    :cond_0
    and-long v9, v5, v15

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 446
    aput-byte v9, v8, v3

    shr-long v9, v5, v14

    and-long/2addr v9, v15

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 448
    aput-byte v9, v8, v2

    shr-long v9, v5, v12

    and-long/2addr v9, v15

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 450
    aput-byte v9, v8, v1

    shr-long/2addr v5, v11

    and-long v9, v5, v15

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 452
    aput-byte v9, v8, v13

    :goto_0
    shr-long/2addr v5, v14

    const-wide/16 v9, 0x0

    cmp-long v11, v5, v9

    if-eqz v11, :cond_1

    const-wide/16 v9, -0x1

    cmp-long v11, v5, v9

    if-eqz v11, :cond_1

    .line 457
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object v5, v1, v2

    const/16 v2, 0x200

    .line 456
    invoke-virtual {v0, v4, v2, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 460
    :cond_1
    invoke-virtual {v0, v4, v8}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    return-void

    :catch_0
    const/16 v1, 0x1fe

    .line 432
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public SendBytes(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a list of byte values to the connected Bluetooth device."
    .end annotation

    const/4 v0, 0x1

    .line 476
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 477
    array-length v1, p1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 478
    :goto_0
    array-length v4, p1

    const-string v5, "SendBytes"

    if-ge v3, v4, :cond_1

    .line 481
    aget-object v4, p1, v3

    .line 482
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 485
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    .line 491
    aput-byte v6, v1, v3

    shr-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    add-int/2addr v3, v0

    .line 495
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const/16 p1, 0x202

    .line 494
    invoke-virtual {p0, v5, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_0
    add-int/2addr v3, v0

    goto :goto_0

    :catch_0
    add-int/2addr v3, v0

    .line 488
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const/16 p1, 0x201

    .line 487
    invoke-virtual {p0, v5, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 499
    :cond_1
    invoke-virtual {p0, v5, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    return-void
.end method

.method public SendText(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send text to the connected Bluetooth device."
    .end annotation

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 334
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnsupportedEncodingException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 337
    :goto_0
    const-string v0, "SendText"

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    return-void
.end method

.method public addBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 846
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->prepareToDie()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 839
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->prepareToDie()V

    return-void
.end method

.method public final read(Ljava/lang/String;I)[B
    .locals 11

    const/4 v0, 0x1

    .line 774
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/16 p2, 0x203

    .line 775
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 777
    new-array p1, v2, [B

    return-object p1

    .line 780
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x205

    .line 782
    const-string v4, "IO Exception during Reading "

    const/16 v5, 0x206

    const/4 v6, -0x1

    if-ltz p2, :cond_4

    .line 784
    new-array v7, p2, [B

    const/4 v8, 0x0

    :goto_0
    if-ge v8, p2, :cond_3

    .line 788
    :try_start_0
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    sub-int v10, p2, v8

    invoke-virtual {v9, v7, v8, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    if-ne v9, v6, :cond_1

    .line 790
    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v5, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    add-int/2addr v8, v9

    goto :goto_0

    .line 796
    :goto_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 0
    invoke-static {v4, v6, v5}, L_COROUTINE/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v4, :cond_2

    .line 798
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 801
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 800
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 805
    :cond_3
    :goto_2
    invoke-virtual {v1, v7, v2, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 810
    :cond_4
    :try_start_1
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    if-ne p2, v6, :cond_5

    .line 812
    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v5, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_4

    :catch_1
    move-exception p2

    goto :goto_3

    .line 816
    :cond_5
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 817
    iget-byte v7, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p2, v7, :cond_4

    goto :goto_4

    .line 821
    :goto_3
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 0
    invoke-static {v4, v6, v5}, L_COROUTINE/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v4, :cond_6

    .line 823
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 826
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 825
    invoke-virtual {p0, p1, v3, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 832
    :goto_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public removeBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setConnection(Landroid/bluetooth/BluetoothSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 167
    new-instance p1, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 168
    new-instance p1, Ljava/io/BufferedOutputStream;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 169
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->fireAfterConnectEvent()V

    return-void
.end method

.method public write(Ljava/lang/String;B)V
    .locals 4

    const/4 v0, 0x0

    .line 509
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    new-array p2, v0, [Ljava/lang/Object;

    const/16 v0, 0x203

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 516
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 517
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 519
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IO Exception during Writing"

    .line 0
    invoke-static {v3, v2, v1}, L_COROUTINE/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v1, :cond_1

    .line 521
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 524
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const/16 p2, 0x204

    .line 523
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public write(Ljava/lang/String;[B)V
    .locals 4

    const/4 v0, 0x0

    .line 535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 536
    new-array p2, v0, [Ljava/lang/Object;

    const/16 v0, 0x203

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 542
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 543
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 545
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IO Exception during Writing"

    .line 0
    invoke-static {v3, v2, v1}, L_COROUTINE/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v1, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 550
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const/16 p2, 0x204

    .line 549
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

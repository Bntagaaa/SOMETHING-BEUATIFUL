.class public Lcom/google/appinventor/components/runtime/Serial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0xc
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Serial component which can be used to connect to devices like Arduino"
    iconName = "images/arduino.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "physicaloid.jar"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Serial Component"


# instance fields
.field private baudRate:I

.field private bytes:I

.field private context:Landroid/content/Context;

.field private mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/16 v0, 0x2580

    .line 44
    iput v0, p0, Lcom/google/appinventor/components/runtime/Serial;->baudRate:I

    const/16 v0, 0x100

    .line 45
    iput v0, p0, Lcom/google/appinventor/components/runtime/Serial;->bytes:I

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Serial;->context:Landroid/content/Context;

    .line 50
    const-string p1, "Serial Component"

    const-string v0, "Created"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public BaudRate()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the current baud rate"
    .end annotation

    .line 132
    iget v0, p0, Lcom/google/appinventor/components/runtime/Serial;->baudRate:I

    return v0
.end method

.method public BaudRate(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "9600"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 138
    iput p1, p0, Lcom/google/appinventor/components/runtime/Serial;->baudRate:I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Baud Rate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Serial Component"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1}, Lcom/physicaloid/lib/Physicaloid;->setBaudrate(I)Z

    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not set Serial Baud Rate to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Just saved, not applied to serial! Maybe you forgot to initialize it?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public BufferSize()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the buffer size in bytes"
    .end annotation

    .line 148
    iget v0, p0, Lcom/google/appinventor/components/runtime/Serial;->bytes:I

    return v0
.end method

.method public BufferSize(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "256"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 154
    iput p1, p0, Lcom/google/appinventor/components/runtime/Serial;->bytes:I

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Buffer Size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Serial Component"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public CloseSerial()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Closes serial connection. Returns true when closed."
    .end annotation

    .line 72
    const-string v0, "Serial Component"

    const-string v1, "Closing connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xf3d

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "CloseSerial"

    invoke-virtual {v0, p0, v4, v1, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v2

    .line 77
    :cond_0
    invoke-virtual {v0}, Lcom/physicaloid/lib/Physicaloid;->close()Z

    move-result v0

    return v0
.end method

.method public InitializeSerial()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initializes serial connection."
    .end annotation

    .line 55
    new-instance v0, Lcom/physicaloid/lib/Physicaloid;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Serial;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/physicaloid/lib/Physicaloid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    .line 56
    iget v0, p0, Lcom/google/appinventor/components/runtime/Serial;->baudRate:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Serial;->BaudRate(I)V

    .line 57
    const-string v0, "Serial Component"

    const-string v1, "Initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public IsInitialized()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns true when the Serial has been initialized."
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public IsOpen()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns true when the Serial connection is open."
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xf3d

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "IsOpen"

    invoke-virtual {v0, p0, v4, v1, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v2

    .line 122
    :cond_0
    invoke-virtual {v0}, Lcom/physicaloid/lib/Physicaloid;->isOpened()Z

    move-result v0

    return v0
.end method

.method public OpenSerial()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Opens serial connection. Returns true when opened."
    .end annotation

    .line 62
    const-string v0, "Serial Component"

    const-string v1, "Opening connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xf3d

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "OpenSerial"

    invoke-virtual {v0, p0, v4, v1, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v2

    .line 67
    :cond_0
    invoke-virtual {v0}, Lcom/physicaloid/lib/Physicaloid;->open()Z

    move-result v0

    return v0
.end method

.method public PrintSerial(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes given data to serial, and appends a new line at the end."
    .end annotation

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Serial;->WriteSerial(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ReadSerial()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads data from serial."
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ReadSerial"

    const/16 v3, 0xf3d

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/Serial;->bytes:I

    new-array v1, v1, [B

    .line 87
    invoke-virtual {v0, v1}, Lcom/physicaloid/lib/Physicaloid;->read([B)I

    move-result v0

    if-lez v0, :cond_1

    .line 89
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 91
    const-string v1, "Serial Component"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public WriteSerial(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes given data to serial."
    .end annotation

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WriteSerial"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v0, p1}, Lcom/physicaloid/lib/Physicaloid;->write([B)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 104
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v0, 0xf3e

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-nez p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v0, 0xf3d

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

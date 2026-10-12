.class public Lcom/google/appinventor/components/runtime/SocketIO;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/socket.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "socket-io.jar, engine-io.jar, json-20090211.jar, okhttp.jar, okio-jvm.jar"
.end annotation


# static fields
.field private static eventName:Ljava/lang/String;

.field private static eventnames:Lcom/google/appinventor/components/runtime/util/YailList;

.field private static i:I


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private mSocket:Lio/socket/client/Socket;

.field private object:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 36
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 37
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocketIO;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocketIO;->context:Landroid/content/Context;

    .line 39
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocketIO;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/SocketIO;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/SocketIO;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/SocketIO;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/SocketIO;->object:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/SocketIO;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocketIO;->object:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/SocketIO;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic e()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/SocketIO;->eventnames:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public static bridge synthetic f()I
    .locals 1

    sget v0, Lcom/google/appinventor/components/runtime/SocketIO;->i:I

    return v0
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 0

    .line 44
    :try_start_0
    invoke-static {p1}, Lio/socket/client/IO;->socket(Ljava/lang/String;)Lio/socket/client/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocketIO;->mSocket:Lio/socket/client/Socket;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public Connect()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocketIO;->mSocket:Lio/socket/client/Socket;

    invoke-virtual {v0}, Lio/socket/client/Socket;->connect()Lio/socket/client/Socket;

    return-void
.end method

.method public Disconnect()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocketIO;->mSocket:Lio/socket/client/Socket;

    invoke-virtual {v0}, Lio/socket/client/Socket;->disconnect()Lio/socket/client/Socket;

    return-void
.end method

.method public Emit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocketIO;->mSocket:Lio/socket/client/Socket;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    return-void
.end method

.method public EventReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = ""
    .end annotation

    .line 114
    const-string v0, "EventReceived"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ListenToEvent(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .line 74
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    sput-object p1, Lcom/google/appinventor/components/runtime/SocketIO;->eventnames:Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 p1, 0x0

    .line 76
    :goto_0
    sget-object v0, Lcom/google/appinventor/components/runtime/SocketIO;->eventnames:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 77
    sput p1, Lcom/google/appinventor/components/runtime/SocketIO;->i:I

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocketIO;->mSocket:Lio/socket/client/Socket;

    sget-object v1, Lcom/google/appinventor/components/runtime/SocketIO;->eventnames:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/SocketIO$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/SocketIO$1;-><init>(Lcom/google/appinventor/components/runtime/SocketIO;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/google/appinventor/components/runtime/SocketIO;->eventName:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocketIO;->mSocket:Lio/socket/client/Socket;

    new-instance v1, Lcom/google/appinventor/components/runtime/SocketIO$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/SocketIO$2;-><init>(Lcom/google/appinventor/components/runtime/SocketIO;)V

    invoke-virtual {v0, p1, v1}, Lio/socket/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    :cond_1
    return-void
.end method

.method public URL(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "set url of connection"
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocketIO;->url:Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/SocketIO;->initialize(Ljava/lang/String;)V

    return-void
.end method

.class final Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventClosure"
.end annotation


# instance fields
.field private final componentId:Ljava/lang/String;

.field private final eventName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    check-cast p1, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;

    .line 43
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 46
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

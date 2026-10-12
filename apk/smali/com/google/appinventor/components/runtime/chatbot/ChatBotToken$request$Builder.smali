.class public final Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$requestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;",
        ">;",
        "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$requestOrBuilder;"
    }
.end annotation


# instance fields
.field private apikey_:Ljava/lang/Object;

.field private bitField0_:I

.field private model_:Ljava/lang/Object;

.field private provider_:Ljava/lang/Object;

.field private question_:Ljava/lang/Object;

.field private system_:Ljava/lang/Object;

.field private tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

.field private uuid_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2439
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-wide/16 v0, 0x1

    .line 2642
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    const/4 v0, 0x0

    .line 2674
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2792
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2868
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2944
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 3020
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3096
    const-string v1, "chatgpt"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3172
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 2440
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 2

    .line 2445
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-wide/16 v0, 0x1

    .line 2642
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    const/4 p1, 0x0

    .line 2674
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2792
    const-string p1, ""

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2868
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2944
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 3020
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3096
    const-string v0, "chatgpt"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3172
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 2446
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2428
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2781
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2782
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2784
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v1

    .line 2785
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2786
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2787
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2789
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 2450
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2451
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 0

    .line 2565
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 2

    .line 2489
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    .line 2490
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2491
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 6

    .line 2497
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;-><init>(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;)V

    .line 2498
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2503
    :goto_0
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    invoke-static {v0, v4, v5}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->o(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;J)V

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 2507
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_2

    .line 2508
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->m(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)V

    goto :goto_1

    .line 2510
    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->m(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)V

    :goto_1
    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 2515
    :cond_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->n(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    .line 2519
    :cond_4
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->k(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    .line 2523
    :cond_5
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->l(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x20

    .line 2527
    :cond_6
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->g(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    .line 2531
    :cond_7
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->j(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    or-int/lit16 v3, v3, 0x80

    .line 2535
    :cond_8
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->i(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    .line 2536
    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->h(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;I)V

    .line 2537
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 3

    .line 2455
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x1

    .line 2456
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    .line 2457
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2459
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    goto :goto_0

    .line 2461
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2463
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2464
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2466
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2468
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 2470
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 2472
    const-string v2, "chatgpt"

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 2474
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    and-int/lit16 v0, v0, -0xff

    .line 2475
    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearApikey()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3077
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3078
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getApikey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3079
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 0

    .line 2551
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearModel()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3229
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3230
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3231
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 0

    .line 2555
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearProvider()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3153
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3154
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3155
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearQuestion()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2925
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2926
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getQuestion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2927
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSystem()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3001
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3002
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getSystem()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 3003
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2747
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2748
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2749
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    goto :goto_0

    .line 2751
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2753
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearUuid()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2849
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2850
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2851
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 2

    .line 2668
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    const-wide/16 v0, 0x1

    .line 2669
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    .line 2670
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2542
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApikey()Ljava/lang/String;
    .locals 2

    .line 3031
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3032
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3033
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3035
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3036
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3037
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 3041
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getApikeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3049
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3050
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3051
    check-cast v0, Ljava/lang/String;

    .line 3052
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3054
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    return-object v0

    .line 3057
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 1

    .line 2485
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2481
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 2

    .line 3183
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3184
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3185
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3187
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3188
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3189
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 3193
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3202
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3203
    check-cast v0, Ljava/lang/String;

    .line 3204
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3206
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    return-object v0

    .line 3209
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 2

    .line 3107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3108
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3109
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3111
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3112
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3113
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 3117
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProviderBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3126
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3127
    check-cast v0, Ljava/lang/String;

    .line 3128
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3130
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    return-object v0

    .line 3133
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 2

    .line 2879
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2880
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2881
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2883
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2884
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2885
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 2889
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getQuestionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2897
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2898
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2899
    check-cast v0, Ljava/lang/String;

    .line 2900
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2902
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    return-object v0

    .line 2905
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSystem()Ljava/lang/String;
    .locals 2

    .line 2955
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 2956
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2957
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2959
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2960
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2961
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 2965
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSystemBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2973
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 2974
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2975
    check-cast v0, Ljava/lang/String;

    .line 2976
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2978
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    return-object v0

    .line 2981
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .locals 1

    .line 2687
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2688
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    :cond_0
    return-object v0

    .line 2690
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    return-object v0
.end method

.method public getTokenBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;
    .locals 1

    .line 2760
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2761
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2762
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    return-object v0
.end method

.method public getTokenOrBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;
    .locals 1

    .line 2768
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2769
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;

    return-object v0

    .line 2771
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    if-nez v0, :cond_1

    .line 2772
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 2

    .line 2803
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2804
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2805
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2807
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2808
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2809
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 2813
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUuidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2821
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2822
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2823
    check-cast v0, Ljava/lang/String;

    .line 2824
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2826
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    return-object v0

    .line 2829
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 2653
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    return-wide v0
.end method

.method public hasApikey()Z
    .locals 2

    .line 3025
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasModel()Z
    .locals 2

    .line 3177
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasProvider()Z
    .locals 2

    .line 3101
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasQuestion()Z
    .locals 2

    .line 2873
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSystem()Z
    .locals 2

    .line 2949
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasToken()Z
    .locals 2

    .line 2681
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasUuid()Z
    .locals 2

    .line 2797
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasVersion()Z
    .locals 2

    .line 2647
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 2433
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    const-class v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2434
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 2

    .line 2577
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2578
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2579
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setVersion(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2581
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2582
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeToken(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2584
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasUuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2585
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2586
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->f(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2587
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2589
    :cond_3
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasQuestion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2590
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2591
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->d(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2592
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2594
    :cond_4
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasSystem()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2595
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2596
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->e(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 2597
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2599
    :cond_5
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasApikey()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2600
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2601
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->a(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 2602
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2604
    :cond_6
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasProvider()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2605
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2606
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->c(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 2607
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2609
    :cond_7
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2610
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2611
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->b(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 2612
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2614
    :cond_8
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->access$500(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2615
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2629
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2635
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2631
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2632
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 2635
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2637
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2568
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    if-eqz v0, :cond_0

    .line 2569
    check-cast p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1

    .line 2571
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2422
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2422
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2422
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2422
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeToken(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 3

    .line 2727
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2728
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    if-eqz v0, :cond_0

    .line 2730
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2731
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2732
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->newBuilder(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    goto :goto_0

    .line 2734
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2736
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    goto :goto_1

    .line 2738
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2740
    :goto_1
    iget p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 0

    .line 3254
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setApikey(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3066
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3068
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3069
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3070
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setApikeyBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3088
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3090
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3091
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3092
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 0

    .line 2547
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setModel(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3218
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3220
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3221
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3222
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setModelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3242
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3243
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3244
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3144
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3145
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3146
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setProviderBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3166
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3167
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3168
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setQuestion(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2914
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2916
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2917
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2918
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setQuestionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2936
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2938
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2939
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2940
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 0

    .line 2560
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSystem(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2990
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2992
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2993
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 2994
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setSystemBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3012
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3014
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3015
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 3016
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setToken(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2714
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2715
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2716
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    goto :goto_0

    .line 2718
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2720
    :goto_0
    iget p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    return-object p0
.end method

.method public setToken(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2697
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2699
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2701
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2702
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    goto :goto_0

    .line 2704
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2706
    :goto_0
    iget p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 0

    .line 3249
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUuid(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2838
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2840
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2841
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2842
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setUuidBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2860
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2862
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2863
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2864
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2659
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2660
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    .line 2661
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

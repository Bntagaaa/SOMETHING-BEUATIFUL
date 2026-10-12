.class public final Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$requestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;",
        ">;",
        "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$requestOrBuilder;"
    }
.end annotation


# instance fields
.field private apikey_:Ljava/lang/Object;

.field private bitField0_:I

.field private mask_:Lcom/google/protobuf/ByteString;

.field private operation_:I

.field private prompt_:Ljava/lang/Object;

.field private size_:Ljava/lang/Object;

.field private source_:Lcom/google/protobuf/ByteString;

.field private tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$tokenOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

.field private version_:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2443
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-wide/16 v0, 0x1

    .line 2643
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->version_:J

    const/4 v0, 0x0

    .line 2675
    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->operation_:I

    const/4 v0, 0x0

    .line 2711
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 2829
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->prompt_:Ljava/lang/Object;

    .line 2905
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->source_:Lcom/google/protobuf/ByteString;

    .line 2940
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mask_:Lcom/google/protobuf/ByteString;

    .line 2975
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3051
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->size_:Ljava/lang/Object;

    .line 2444
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 2

    .line 2449
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-wide/16 v0, 0x1

    .line 2643
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->version_:J

    const/4 p1, 0x0

    .line 2675
    iput p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->operation_:I

    const/4 p1, 0x0

    .line 2711
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 2829
    const-string p1, ""

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->prompt_:Ljava/lang/Object;

    .line 2905
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->source_:Lcom/google/protobuf/ByteString;

    .line 2940
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mask_:Lcom/google/protobuf/ByteString;

    .line 2975
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3051
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->size_:Ljava/lang/Object;

    .line 2450
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2432
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$tokenOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2818
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2819
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2821
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->getToken()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v1

    .line 2822
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2823
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2824
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 2826
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 2454
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2455
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 0

    .line 2569
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .locals 2

    .line 2493
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    .line 2494
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2495
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 2426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .locals 6

    .line 2501
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;-><init>(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;)V

    .line 2502
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2507
    :goto_0
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->version_:J

    invoke-static {v0, v4, v5}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->l(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;J)V

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 2511
    :cond_1
    iget v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->operation_:I

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->g(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;I)V

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 2515
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_3

    .line 2516
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->k(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)V

    goto :goto_1

    .line 2518
    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->k(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)V

    :goto_1
    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    .line 2523
    :cond_4
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->prompt_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->h(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Ljava/lang/Object;)V

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    .line 2527
    :cond_5
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->source_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->j(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Lcom/google/protobuf/ByteString;)V

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x20

    .line 2531
    :cond_6
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mask_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->f(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Lcom/google/protobuf/ByteString;)V

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    .line 2535
    :cond_7
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->d(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Ljava/lang/Object;)V

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    or-int/lit16 v3, v3, 0x80

    .line 2539
    :cond_8
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->size_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->i(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Ljava/lang/Object;)V

    .line 2540
    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->e(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;I)V

    .line 2541
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 2

    .line 2459
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x1

    .line 2460
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->version_:J

    .line 2461
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 2462
    iput v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->operation_:I

    and-int/lit8 v0, v0, -0x4

    .line 2463
    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2464
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2465
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    goto :goto_0

    .line 2467
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2469
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2470
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->prompt_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0xd

    .line 2471
    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2472
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->source_:Lcom/google/protobuf/ByteString;

    .line 2473
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2474
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mask_:Lcom/google/protobuf/ByteString;

    .line 2475
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2476
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 2478
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->size_:Ljava/lang/Object;

    and-int/lit16 v0, v0, -0xe1

    .line 2479
    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearApikey()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 3032
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 3033
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getApikey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3034
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 0

    .line 2555
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearMask()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2969
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2970
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getMask()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mask_:Lcom/google/protobuf/ByteString;

    .line 2971
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 0

    .line 2559
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOperation()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2705
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2706
    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->operation_:I

    .line 2707
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPrompt()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2886
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2887
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getPrompt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->prompt_:Ljava/lang/Object;

    .line 2888
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSize()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 3108
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 3109
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getSize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->size_:Ljava/lang/Object;

    .line 3110
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSource()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2934
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2935
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getSource()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->source_:Lcom/google/protobuf/ByteString;

    .line 2936
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearToken()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2784
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2785
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 2786
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    goto :goto_0

    .line 2788
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2790
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearVersion()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 2

    .line 2669
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    const-wide/16 v0, 0x1

    .line 2670
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->version_:J

    .line 2671
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2546
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

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

    .line 2426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApikey()Ljava/lang/String;
    .locals 2

    .line 2986
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 2987
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2988
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2990
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2991
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2992
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 2996
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getApikeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3004
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3005
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3006
    check-cast v0, Ljava/lang/String;

    .line 3007
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3009
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    return-object v0

    .line 3012
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .locals 1

    .line 2489
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2485
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMask()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2951
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mask_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOperation()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;
    .locals 1

    .line 2686
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->operation_:I

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->valueOf(I)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2687
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->CREATE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    :cond_0
    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 2

    .line 2840
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->prompt_:Ljava/lang/Object;

    .line 2841
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2842
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2844
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2845
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2846
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->prompt_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 2850
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPromptBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2858
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->prompt_:Ljava/lang/Object;

    .line 2859
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2860
    check-cast v0, Ljava/lang/String;

    .line 2861
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2863
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->prompt_:Ljava/lang/Object;

    return-object v0

    .line 2866
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 2

    .line 3062
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->size_:Ljava/lang/Object;

    .line 3063
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3064
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3066
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3067
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3068
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->size_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 3072
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSizeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3080
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->size_:Ljava/lang/Object;

    .line 3081
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3082
    check-cast v0, Ljava/lang/String;

    .line 3083
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3085
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->size_:Ljava/lang/Object;

    return-object v0

    .line 3088
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSource()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2916
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->source_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getToken()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .locals 1

    .line 2724
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2725
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v0

    :cond_0
    return-object v0

    .line 2727
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    return-object v0
.end method

.method public getTokenBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;
    .locals 1

    .line 2797
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2798
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    .line 2799
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    return-object v0
.end method

.method public getTokenOrBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$tokenOrBuilder;
    .locals 1

    .line 2805
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2806
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$tokenOrBuilder;

    return-object v0

    .line 2808
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    if-nez v0, :cond_1

    .line 2809
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 2654
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->version_:J

    return-wide v0
.end method

.method public hasApikey()Z
    .locals 2

    .line 2980
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMask()Z
    .locals 2

    .line 2945
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasOperation()Z
    .locals 2

    .line 2680
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrompt()Z
    .locals 2

    .line 2834
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSize()Z
    .locals 2

    .line 3056
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSource()Z
    .locals 2

    .line 2910
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

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

    .line 2718
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

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

    .line 2648
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

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

    .line 2437
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    const-class v2, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    .line 2438
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 2618
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->hasOperation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 2

    .line 2581
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2582
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2583
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setVersion(J)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    .line 2585
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasOperation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2586
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getOperation()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setOperation(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    .line 2588
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2589
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeToken(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    .line 2591
    :cond_3
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasPrompt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2592
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2593
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->b(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->prompt_:Ljava/lang/Object;

    .line 2594
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    .line 2596
    :cond_4
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2597
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getSource()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setSource(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    .line 2599
    :cond_5
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasMask()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2600
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getMask()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setMask(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    .line 2602
    :cond_6
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasApikey()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2603
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2604
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->a(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 2605
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    .line 2607
    :cond_7
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2608
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2609
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->c(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->size_:Ljava/lang/Object;

    .line 2610
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    .line 2612
    :cond_8
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->access$500(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    .line 2613
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2630
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2636
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2632
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2633
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

    .line 2636
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    .line 2638
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2572
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    if-eqz v0, :cond_0

    .line 2573
    check-cast p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1

    .line 2575
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

    .line 2426
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

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

    .line 2426
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

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

    .line 2426
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

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

    .line 2426
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeToken(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 3

    .line 2764
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 2765
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    if-eqz v0, :cond_0

    .line 2767
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2768
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 2769
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->newBuilder(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    goto :goto_0

    .line 2771
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 2773
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    goto :goto_1

    .line 2775
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2777
    :goto_1
    iget p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 0

    .line 3133
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setApikey(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 3021
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3023
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 3024
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3025
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setApikeyBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 3043
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3045
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 3046
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3047
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 0

    .line 2551
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMask(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2958
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2960
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2961
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mask_:Lcom/google/protobuf/ByteString;

    .line 2962
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setOperation(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2694
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2696
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2697
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->operation_:I

    .line 2698
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setPrompt(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2875
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2877
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2878
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->prompt_:Ljava/lang/Object;

    .line 2879
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setPromptBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2897
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2899
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2900
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->prompt_:Ljava/lang/Object;

    .line 2901
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 0

    .line 2564
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSize(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 3097
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3099
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 3100
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->size_:Ljava/lang/Object;

    .line 3101
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setSizeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 3119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3121
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 3122
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->size_:Ljava/lang/Object;

    .line 3123
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setSource(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2923
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2925
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2926
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->source_:Lcom/google/protobuf/ByteString;

    .line 2927
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

.method public setToken(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2751
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2752
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;->build()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 2753
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    goto :goto_0

    .line 2755
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;->build()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2757
    :goto_0
    iget p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    return-object p0
.end method

.method public setToken(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2734
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2736
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2738
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 2739
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    goto :goto_0

    .line 2741
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2743
    :goto_0
    iget p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 0

    .line 3128
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2426
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVersion(J)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2660
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->bitField0_:I

    .line 2661
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->version_:J

    .line 2662
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->onChanged()V

    return-object p0
.end method

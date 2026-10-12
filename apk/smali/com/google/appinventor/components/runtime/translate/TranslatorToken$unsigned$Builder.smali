.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsignedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;",
        ">;",
        "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsignedOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private generation_:J

.field private huuid_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 450
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 589
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 451
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 456
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 589
    const-string p1, ""

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 457
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 439
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->g()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 461
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->access$000()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 0

    .line 537
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .locals 2

    .line 485
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 487
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .locals 6

    .line 493
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;-><init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;)V

    .line 494
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 499
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->d(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;Ljava/lang/Object;)V

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 503
    :cond_1
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->version_:J

    invoke-static {v0, v4, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->e(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;J)V

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 507
    :cond_2
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->generation_:J

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->c(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;J)V

    .line 508
    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->b(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;I)V

    .line 509
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 3

    .line 465
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 466
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 467
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 468
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->version_:J

    .line 470
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->generation_:J

    and-int/lit8 v0, v0, -0x8

    .line 471
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 0

    .line 523
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearGeneration()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 2

    .line 763
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 764
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->generation_:J

    .line 765
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHuuid()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 1

    .line 666
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 667
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getHuuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 668
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 0

    .line 527
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearVersion()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 2

    .line 731
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 732
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->version_:J

    .line 733
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 1

    .line 514
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

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

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .locals 1

    .line 481
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 477
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->g()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getGeneration()J
    .locals 2

    .line 748
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->generation_:J

    return-wide v0
.end method

.method public getHuuid()Ljava/lang/String;
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 609
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 610
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 612
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 618
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHuuidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 631
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 632
    check-cast v0, Ljava/lang/String;

    .line 633
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 635
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    return-object v0

    .line 638
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 708
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->version_:J

    return-wide v0
.end method

.method public hasGeneration()Z
    .locals 2

    .line 742
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasHuuid()Z
    .locals 2

    .line 598
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasVersion()Z
    .locals 2

    .line 698
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 444
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->h()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    const-class v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    .line 445
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 2

    .line 549
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 550
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasHuuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 552
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->a(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 553
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    .line 555
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 556
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->setVersion(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    .line 558
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasGeneration()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 559
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getGeneration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->setGeneration(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    .line 561
    :cond_3
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->access$100(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    .line 562
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 576
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 582
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 578
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
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

    .line 582
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    .line 584
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 1

    .line 540
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    if-eqz v0, :cond_0

    .line 541
    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1

    .line 543
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

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

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

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

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

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

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

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 0

    .line 775
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 0

    .line 519
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setGeneration(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 1

    .line 754
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 755
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->generation_:J

    .line 756
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    return-object p0
.end method

.method public setHuuid(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 1

    .line 651
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 653
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 654
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 655
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    return-object p0
.end method

.method public setHuuidBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 1

    .line 681
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 683
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 684
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 685
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 0

    .line 532
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 0

    .line 770
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVersion(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .locals 1

    .line 718
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 719
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->version_:J

    .line 720
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    return-object p0
.end method

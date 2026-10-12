.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/translate/TranslatorToken$responseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;",
        ">;",
        "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$responseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private status_:J

.field private translated_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3375
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-wide/16 v0, 0x1

    .line 3514
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->version_:J

    .line 3594
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3376
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 2

    .line 3381
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-wide/16 v0, 0x1

    .line 3514
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->version_:J

    .line 3594
    const-string p1, ""

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3382
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3364
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 3386
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->access$600()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 0

    .line 3462
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .locals 2

    .line 3410
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    .line 3411
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3412
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .locals 6

    .line 3418
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;-><init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;)V

    .line 3419
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3424
    :goto_0
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->version_:J

    invoke-static {v0, v4, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->e(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;J)V

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 3428
    :cond_1
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->status_:J

    invoke-static {v0, v4, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->c(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;J)V

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 3432
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->d(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;Ljava/lang/Object;)V

    .line 3433
    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->b(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;I)V

    .line 3434
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 3

    .line 3390
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x1

    .line 3391
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->version_:J

    .line 3392
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 3393
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->status_:J

    .line 3395
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x8

    .line 3396
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 0

    .line 3448
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 0

    .line 3452
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearStatus()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 2

    .line 3588
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 3589
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->status_:J

    .line 3590
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTranslated()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 1

    .line 3651
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3652
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getTranslated()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3653
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 2

    .line 3540
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    const-wide/16 v0, 0x1

    .line 3541
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->version_:J

    .line 3542
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 1

    .line 3439
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

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

    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .locals 1

    .line 3406
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3402
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()J
    .locals 2

    .line 3565
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->status_:J

    return-wide v0
.end method

.method public getTranslated()Ljava/lang/String;
    .locals 2

    .line 3605
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3606
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3607
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3609
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3610
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3611
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 3615
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3623
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3624
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3625
    check-cast v0, Ljava/lang/String;

    .line 3626
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3628
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    return-object v0

    .line 3631
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 3525
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->version_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .locals 2

    .line 3555
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasTranslated()Z
    .locals 2

    .line 3599
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

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

    .line 3519
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

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

    .line 3369
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    const-class v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    .line 3370
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 2

    .line 3474
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3475
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3476
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->setVersion(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    .line 3478
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3479
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getStatus()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->setStatus(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    .line 3481
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasTranslated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3482
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3483
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->a(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3484
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    .line 3486
    :cond_3
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->access$700(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    .line 3487
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3501
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3507
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3503
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3504
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

    .line 3507
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    .line 3509
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 1

    .line 3465
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    if-eqz v0, :cond_0

    .line 3466
    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1

    .line 3468
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

    .line 3358
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

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

    .line 3358
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

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

    .line 3358
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

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

    .line 3358
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 0

    .line 3676
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 0

    .line 3444
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 0

    .line 3457
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setStatus(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 1

    .line 3575
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3576
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->status_:J

    .line 3577
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    return-object p0
.end method

.method public setTranslated(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 1

    .line 3640
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3642
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3643
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3644
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    return-object p0
.end method

.method public setTranslatedBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 1

    .line 3662
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3664
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3665
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3666
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 0

    .line 3671
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVersion(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 1

    .line 3531
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3532
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->version_:J

    .line 3533
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    return-object p0
.end method

.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;",
        ">;",
        "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private generation_:J

.field private keyid_:J

.field private signature_:Lcom/google/protobuf/ByteString;

.field private unsigned_:Lcom/google/protobuf/ByteString;

.field private version_:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1271
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-wide/16 v0, 0x1

    .line 1426
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->version_:J

    .line 1458
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->keyid_:J

    .line 1522
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 1557
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 1272
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 2

    .line 1277
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-wide/16 v0, 0x1

    .line 1426
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->version_:J

    .line 1458
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->keyid_:J

    .line 1522
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 1557
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 1278
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1260
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->e()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1282
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->access$200()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 0

    .line 1370
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .locals 2

    .line 1310
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    .line 1311
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1312
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .locals 6

    .line 1318
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;-><init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;)V

    .line 1319
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1324
    :goto_0
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->version_:J

    invoke-static {v0, v4, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->f(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;J)V

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 1328
    :cond_1
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->keyid_:J

    invoke-static {v0, v4, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->c(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;J)V

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 1332
    :cond_2
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->generation_:J

    invoke-static {v0, v4, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->b(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;J)V

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 1336
    :cond_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->unsigned_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->e(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;Lcom/google/protobuf/ByteString;)V

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 1340
    :cond_4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->signature_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->d(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;Lcom/google/protobuf/ByteString;)V

    .line 1341
    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->a(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;I)V

    .line 1342
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 3

    .line 1286
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x1

    .line 1287
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->version_:J

    .line 1288
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1289
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->keyid_:J

    const-wide/16 v0, 0x0

    .line 1291
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->generation_:J

    and-int/lit8 v0, v2, -0x8

    .line 1292
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1293
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 1294
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1295
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 1296
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 0

    .line 1356
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearGeneration()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 2

    .line 1516
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 1517
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->generation_:J

    .line 1518
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    return-object p0
.end method

.method public clearKeyid()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 2

    .line 1484
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    const-wide/16 v0, 0x1

    .line 1485
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->keyid_:J

    .line 1486
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 0

    .line 1360
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearSignature()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 1

    .line 1586
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1587
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 1588
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUnsigned()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 1

    .line 1551
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1552
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getUnsigned()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 1553
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 2

    .line 1452
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    const-wide/16 v0, 0x1

    .line 1453
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->version_:J

    .line 1454
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 1

    .line 1347
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

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

    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .locals 1

    .line 1306
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1302
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->e()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getGeneration()J
    .locals 2

    .line 1501
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->generation_:J

    return-wide v0
.end method

.method public getKeyid()J
    .locals 2

    .line 1469
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->keyid_:J

    return-wide v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1568
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getUnsigned()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1533
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->unsigned_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 1437
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->version_:J

    return-wide v0
.end method

.method public hasGeneration()Z
    .locals 2

    .line 1495
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasKeyid()Z
    .locals 2

    .line 1463
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSignature()Z
    .locals 2

    .line 1562
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasUnsigned()Z
    .locals 2

    .line 1527
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    const/16 v1, 0x8

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

    .line 1431
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

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

    .line 1265
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->f()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    const-class v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1266
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 2

    .line 1382
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1383
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1384
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setVersion(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1386
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasKeyid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1387
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getKeyid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setKeyid(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1389
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasGeneration()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1390
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getGeneration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setGeneration(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1392
    :cond_3
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasUnsigned()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1393
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getUnsigned()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setUnsigned(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1395
    :cond_4
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1396
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1398
    :cond_5
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->access$300(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1399
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1413
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1419
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1415
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1416
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

    .line 1419
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1421
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 1

    .line 1373
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-eqz v0, :cond_0

    .line 1374
    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1

    .line 1376
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

    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

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

    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

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

    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

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

    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 0

    .line 1598
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 0

    .line 1352
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setGeneration(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 1

    .line 1507
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1508
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->generation_:J

    .line 1509
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    return-object p0
.end method

.method public setKeyid(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 1

    .line 1475
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1476
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->keyid_:J

    .line 1477
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 0

    .line 1365
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 1

    .line 1575
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1577
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1578
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 1579
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 0

    .line 1593
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUnsigned(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 1

    .line 1540
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1542
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1543
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 1544
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 1

    .line 1443
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1444
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->version_:J

    .line 1445
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    return-object p0
.end method

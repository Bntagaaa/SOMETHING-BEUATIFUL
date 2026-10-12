.class public final Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$requestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;,
        Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    }
.end annotation


# static fields
.field public static final APIKEY_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

.field public static final MASK_FIELD_NUMBER:I = 0x6

.field public static final OPERATION_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROMPT_FIELD_NUMBER:I = 0x4

.field public static final SIZE_FIELD_NUMBER:I = 0x8

.field public static final SOURCE_FIELD_NUMBER:I = 0x5

.field public static final TOKEN_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile apikey_:Ljava/lang/Object;

.field private bitField0_:I

.field private mask_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private operation_:I

.field private volatile prompt_:Ljava/lang/Object;

.field private volatile size_:Ljava/lang/Object;

.field private source_:Lcom/google/protobuf/ByteString;

.field private token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

.field private version_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3143
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    .line 3151
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1746
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2164
    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedIsInitialized:B

    const-wide/16 v0, 0x1

    .line 1747
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->version_:J

    const/4 v0, 0x0

    .line 1748
    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    .line 1749
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    .line 1750
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->source_:Lcom/google/protobuf/ByteString;

    .line 1751
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->mask_:Lcom/google/protobuf/ByteString;

    .line 1752
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    .line 1753
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1765
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;-><init>()V

    .line 1768
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_d

    .line 1772
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/16 v4, 0x8

    if-eq v2, v4, :cond_c

    const/16 v5, 0x10

    if-eq v2, v5, :cond_a

    const/16 v6, 0x1a

    if-eq v2, v6, :cond_7

    const/16 v6, 0x22

    if-eq v2, v6, :cond_6

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_5

    const/16 v4, 0x32

    if-eq v2, v4, :cond_4

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x42

    if-eq v2, v4, :cond_2

    .line 1778
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    .line 1836
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1837
    iget v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    .line 1838
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    goto :goto_0

    .line 1830
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1831
    iget v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    .line 1832
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    goto :goto_0

    .line 1825
    :cond_4
    iget v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    .line 1826
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->mask_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 1820
    :cond_5
    iget v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    .line 1821
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->source_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 1814
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1815
    iget v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    .line 1816
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    goto :goto_0

    .line 1802
    :cond_7
    iget v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_8

    .line 1803
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    move-result-object v2

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    .line 1805
    :goto_1
    sget-object v4, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    if-eqz v2, :cond_9

    .line 1807
    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    .line 1808
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 1810
    :cond_9
    iget v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    goto/16 :goto_0

    .line 1790
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 1791
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->valueOf(I)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_b

    .line 1793
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 1795
    :cond_b
    iget v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    .line 1796
    iput v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    goto/16 :goto_0

    .line 1785
    :cond_c
    iget v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    .line 1786
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->version_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1846
    :goto_2
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1847
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1844
    :goto_3
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1849
    :goto_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1850
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->makeExtensionsImmutable()V

    .line 1851
    throw p1

    .line 1849
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1850
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 1744
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 2164
    iput-byte p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedIsInitialized:B

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400()Z
    .locals 1

    .line 1738
    sget-boolean v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$500(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1738
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Lcom/google/protobuf/ByteString;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->mask_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .locals 1

    .line 3147
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1855
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic i(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic j(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Lcom/google/protobuf/ByteString;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->source_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static bridge synthetic k(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    return-void
.end method

.method public static bridge synthetic l(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->version_:J

    return-void
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2407
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2410
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2381
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2382
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2388
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2389
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2349
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2355
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2394
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2395
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2401
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2402
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2369
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2370
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2376
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2377
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2359
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2365
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;",
            ">;"
        }
    .end annotation

    .line 3161
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2252
    :cond_0
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    if-nez v1, :cond_1

    .line 2253
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2255
    :cond_1
    check-cast p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    .line 2258
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasVersion()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasVersion()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 2259
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 2260
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getVersion()J

    move-result-wide v1

    .line 2261
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getVersion()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 2263
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasOperation()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasOperation()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 2264
    :goto_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasOperation()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 2265
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    iget v2, p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 2267
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasToken()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasToken()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 2268
    :goto_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasToken()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 2269
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v1

    .line 2270
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 2272
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasPrompt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasPrompt()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 2273
    :goto_6
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasPrompt()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 2274
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getPrompt()Ljava/lang/String;

    move-result-object v1

    .line 2275
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getPrompt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 2277
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSource()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSource()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 2278
    :goto_8
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSource()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 2279
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getSource()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2280
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getSource()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 2282
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasMask()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasMask()Z

    move-result v2

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 2283
    :goto_a
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasMask()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    .line 2284
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getMask()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2285
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getMask()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_b
    if-eqz v1, :cond_14

    .line 2287
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasApikey()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasApikey()Z

    move-result v2

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    .line 2288
    :goto_c
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasApikey()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v1, :cond_15

    .line 2289
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getApikey()Ljava/lang/String;

    move-result-object v1

    .line 2290
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getApikey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_d
    if-eqz v1, :cond_17

    .line 2292
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSize()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSize()Z

    move-result v2

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_e

    :cond_17
    const/4 v1, 0x0

    .line 2293
    :goto_e
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSize()Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v1, :cond_18

    .line 2294
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getSize()Ljava/lang/String;

    move-result-object v1

    .line 2295
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    :cond_19
    :goto_f
    if-eqz v1, :cond_1a

    .line 2297
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return v0

    :cond_1a
    return v3
.end method

.method public getApikey()Ljava/lang/String;
    .locals 2

    .line 2092
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    .line 2093
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2094
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2096
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2098
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2099
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2100
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getApikeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    .line 2111
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2112
    check-cast v0, Ljava/lang/String;

    .line 2113
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2115
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    return-object v0

    .line 2118
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .locals 1

    .line 3170
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1738
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1738
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public getMask()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2077
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->mask_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOperation()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;
    .locals 1

    .line 1983
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->valueOf(I)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1984
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->CREATE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    :cond_0
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;",
            ">;"
        }
    .end annotation

    .line 3166
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 2

    .line 2020
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    .line 2021
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2022
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2024
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2026
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2027
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2028
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getPromptBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2038
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    .line 2039
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2040
    check-cast v0, Ljava/lang/String;

    .line 2041
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2043
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    return-object v0

    .line 2046
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 2208
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2212
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2213
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->version_:J

    .line 2214
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2216
    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 2217
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    .line 2218
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2220
    :cond_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 2222
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2224
    :cond_3
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 2225
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2227
    :cond_4
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 2228
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->source_:Lcom/google/protobuf/ByteString;

    .line 2229
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2231
    :cond_5
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 2232
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->mask_:Lcom/google/protobuf/ByteString;

    .line 2233
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2235
    :cond_6
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 2236
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2238
    :cond_7
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 2239
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2241
    :cond_8
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2242
    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedSize:I

    return v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 2

    .line 2134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    .line 2135
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2136
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2138
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2140
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2141
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2142
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSizeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    .line 2153
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2154
    check-cast v0, Ljava/lang/String;

    .line 2155
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2157
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    return-object v0

    .line 2160
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSource()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2062
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->source_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getToken()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .locals 1

    .line 1999
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTokenOrBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$tokenOrBuilder;
    .locals 1

    .line 2005
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1759
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 1968
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->version_:J

    return-wide v0
.end method

.method public hasApikey()Z
    .locals 2

    .line 2086
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

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

    .line 2071
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

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

    .line 1977
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

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

    .line 2014
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

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

    .line 2128
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

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

    .line 2056
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

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

    .line 1993
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

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

    .line 1962
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 2303
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 2304
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedHashCode:I

    return v0

    .line 2307
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 2308
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasVersion()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    const/4 v3, 0x1

    .line 2309
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 2311
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getVersion()J

    move-result-wide v3

    .line 2310
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 2313
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasOperation()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x25

    const/4 v3, 0x2

    .line 2314
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 2315
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    add-int/2addr v0, v1

    .line 2317
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasToken()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x25

    const/4 v3, 0x3

    .line 2318
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 2319
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2321
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasPrompt()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x25

    const/4 v3, 0x4

    .line 2322
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 2323
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getPrompt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2325
    :cond_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x25

    const/4 v3, 0x5

    .line 2326
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 2327
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getSource()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2329
    :cond_5
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasMask()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x25

    const/4 v3, 0x6

    .line 2330
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 2331
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getMask()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2333
    :cond_6
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasApikey()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x25

    const/4 v3, 0x7

    .line 2334
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 2335
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getApikey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2337
    :cond_7
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSize()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x25

    const/16 v3, 0x8

    .line 2338
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 2339
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    mul-int/lit8 v0, v0, 0x1d

    .line 2341
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2342
    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedHashCode:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1860
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    const-class v2, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    .line 1861
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 2166
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2170
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasOperation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2171
    iput-byte v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedIsInitialized:B

    return v2

    .line 2174
    :cond_2
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 1

    .line 2405
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->newBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 2

    .line 2420
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;I)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1738
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->newBuilderForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1738
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1738
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->newBuilderForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .locals 2

    .line 2413
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 2414
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1738
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1738
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2180
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2181
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->version_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 2183
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2184
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2186
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 2187
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2189
    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 2190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2192
    :cond_3
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 2193
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->source_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2195
    :cond_4
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 2196
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->mask_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2198
    :cond_5
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 2199
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2201
    :cond_6
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 2202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    invoke-static {p1, v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2204
    :cond_7
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

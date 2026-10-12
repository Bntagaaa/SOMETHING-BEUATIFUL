.class public final Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$responseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

.field public static final IMAGE_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private image_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private status_:J

.field private version_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3820
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    .line 3828
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 3225
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 3352
    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->memoizedIsInitialized:B

    const-wide/16 v0, 0x1

    .line 3226
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->version_:J

    const-wide/16 v0, 0x0

    .line 3227
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->status_:J

    .line 3228
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->image_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3240
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;-><init>()V

    .line 3243
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 3247
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/16 v4, 0x8

    if-eq v2, v4, :cond_4

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_2

    .line 3253
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    .line 3270
    :cond_2
    iget v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->bitField0_:I

    .line 3271
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->image_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 3265
    :cond_3
    iget v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->bitField0_:I

    .line 3266
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->status_:J

    goto :goto_0

    .line 3260
    :cond_4
    iget v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->bitField0_:I

    .line 3261
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->version_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3279
    :goto_1
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3280
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3277
    :goto_2
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3282
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3283
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->makeExtensionsImmutable()V

    .line 3284
    throw p1

    .line 3282
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3283
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3223
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 3352
    iput-byte p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->memoizedIsInitialized:B

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->bitField0_:I

    return-void
.end method

.method public static synthetic access$600()Z
    .locals 1

    .line 3217
    sget-boolean v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$700(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 3217
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;Lcom/google/protobuf/ByteString;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->image_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->status_:J

    return-void
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->version_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .locals 1

    .line 3824
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3288
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 1

    .line 3516
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 1

    .line 3519
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3490
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3491
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3497
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3498
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3458
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3464
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3503
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3504
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3510
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3511
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3478
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3479
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3485
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3486
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3468
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3474
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;",
            ">;"
        }
    .end annotation

    .line 3838
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3404
    :cond_0
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    if-nez v1, :cond_1

    .line 3405
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3407
    :cond_1
    check-cast p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    .line 3410
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->hasVersion()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->hasVersion()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 3411
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 3412
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getVersion()J

    move-result-wide v1

    .line 3413
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getVersion()J

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

    .line 3415
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->hasStatus()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->hasStatus()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 3416
    :goto_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 3417
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getStatus()J

    move-result-wide v1

    .line 3418
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getStatus()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 3420
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->hasImage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->hasImage()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 3421
    :goto_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 3422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 3423
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 3425
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v0

    :cond_b
    return v3
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .locals 1

    .line 3847
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3217
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3217
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3349
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->image_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;",
            ">;"
        }
    .end annotation

    .line 3843
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 3377
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3381
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3382
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->version_:J

    .line 3383
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3385
    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 3386
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->status_:J

    .line 3387
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3389
    :cond_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 3390
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->image_:Lcom/google/protobuf/ByteString;

    .line 3391
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3393
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3394
    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->memoizedSize:I

    return v0
.end method

.method public getStatus()J
    .locals 2

    .line 3334
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->status_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 3234
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 3311
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->version_:J

    return-wide v0
.end method

.method public hasImage()Z
    .locals 2

    .line 3343
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasStatus()Z
    .locals 2

    .line 3324
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->bitField0_:I

    const/4 v1, 0x2

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

    .line 3305
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->bitField0_:I

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

    .line 3431
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 3432
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->memoizedHashCode:I

    return v0

    .line 3435
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 3436
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->hasVersion()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    const/4 v3, 0x1

    .line 3437
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 3439
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getVersion()J

    move-result-wide v3

    .line 3438
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 3441
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x25

    const/4 v3, 0x2

    .line 3442
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 3444
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getStatus()J

    move-result-wide v3

    .line 3443
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 3446
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x25

    const/4 v3, 0x3

    .line 3447
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 3448
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 3450
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3451
    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->memoizedHashCode:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3293
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    const-class v2, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    .line 3294
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3354
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3358
    :cond_1
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 1

    .line 3514
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->newBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 2

    .line 3529
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;I)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3217
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->newBuilderForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3217
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3217
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->newBuilderForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 2

    .line 3522
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 3523
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3217
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3217
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

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

    .line 3364
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3365
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->version_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 3367
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3368
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->status_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 3370
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 3371
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->image_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3373
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

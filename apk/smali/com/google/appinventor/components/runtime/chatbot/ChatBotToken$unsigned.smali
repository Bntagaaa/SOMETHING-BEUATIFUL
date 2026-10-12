.class public final Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsignedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "unsigned"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

.field public static final GENERATION_FIELD_NUMBER:I = 0x3

.field public static final HUUID_FIELD_NUMBER:I = 0x1

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private generation_:J

.field private volatile huuid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private version_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 785
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    .line 793
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 251
    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->memoizedIsInitialized:B

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->huuid_:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->version_:J

    .line 87
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->generation_:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;-><init>()V

    .line 102
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 106
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/16 v4, 0xa

    if-eq v2, v4, :cond_4

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3

    const/16 v4, 0x18

    if-eq v2, v4, :cond_2

    .line 112
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

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

    .line 130
    :cond_2
    iget v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->bitField0_:I

    .line 131
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->generation_:J

    goto :goto_0

    .line 125
    :cond_3
    iget v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->bitField0_:I

    .line 126
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->version_:J

    goto :goto_0

    .line 119
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 120
    iget v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->bitField0_:I

    .line 121
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->huuid_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 139
    :goto_1
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 140
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 137
    :goto_2
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 143
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->makeExtensionsImmutable()V

    .line 144
    throw p1

    .line 142
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 143
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 82
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 251
    iput-byte p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->memoizedIsInitialized:B

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->huuid_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$000()Z
    .locals 1

    .line 76
    sget-boolean v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$100(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->generation_:J

    return-void
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->huuid_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->version_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    .locals 1

    .line 789
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 148
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->g()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 1

    .line 414
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 1

    .line 417
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 389
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 396
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 356
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 362
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 402
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 409
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 377
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 384
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 366
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 372
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;",
            ">;"
        }
    .end annotation

    .line 803
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 302
    :cond_0
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    if-nez v1, :cond_1

    .line 303
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 305
    :cond_1
    check-cast p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    .line 308
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->hasHuuid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->hasHuuid()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 309
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->hasHuuid()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 310
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getHuuid()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getHuuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 313
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->hasVersion()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->hasVersion()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 314
    :goto_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 315
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getVersion()J

    move-result-wide v1

    .line 316
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getVersion()J

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

    .line 318
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->hasGeneration()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->hasGeneration()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 319
    :goto_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->hasGeneration()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 320
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getGeneration()J

    move-result-wide v1

    .line 321
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getGeneration()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 323
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v0

    :cond_b
    return v3
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    .locals 1

    .line 812
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public getGeneration()J
    .locals 2

    .line 248
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->generation_:J

    return-wide v0
.end method

.method public getHuuid()Ljava/lang/String;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->huuid_:Ljava/lang/Object;

    .line 180
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 181
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 183
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 185
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->huuid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getHuuidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->huuid_:Ljava/lang/Object;

    .line 202
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 203
    check-cast v0, Ljava/lang/String;

    .line 204
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 206
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->huuid_:Ljava/lang/Object;

    return-object v0

    .line 209
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;",
            ">;"
        }
    .end annotation

    .line 808
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 276
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 280
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 281
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->huuid_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 283
    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 284
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->version_:J

    .line 285
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 287
    :cond_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 288
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->generation_:J

    .line 289
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 291
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 292
    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 233
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->version_:J

    return-wide v0
.end method

.method public hasGeneration()Z
    .locals 2

    .line 242
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->bitField0_:I

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

    .line 169
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->bitField0_:I

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

    .line 223
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 329
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 330
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->memoizedHashCode:I

    return v0

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 334
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->hasHuuid()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    const/4 v3, 0x1

    .line 335
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 336
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getHuuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 338
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x25

    const/4 v3, 0x2

    .line 339
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 341
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getVersion()J

    move-result-wide v3

    .line 340
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 343
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->hasGeneration()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x25

    const/4 v3, 0x3

    .line 344
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 346
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getGeneration()J

    move-result-wide v1

    .line 345
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 348
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->memoizedHashCode:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 153
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->h()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    const-class v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 253
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 257
    :cond_1
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 1

    .line 412
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->newBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 2

    .line 427
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;I)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 2

    .line 420
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 421
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

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

    .line 263
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->huuid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 266
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 267
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->version_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 269
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 270
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->generation_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

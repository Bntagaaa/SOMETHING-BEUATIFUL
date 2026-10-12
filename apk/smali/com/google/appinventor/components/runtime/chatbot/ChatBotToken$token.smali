.class public final Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

.field public static final GENERATION_FIELD_NUMBER:I = 0x3

.field public static final KEYID_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x5

.field public static final UNSIGNED_FIELD_NUMBER:I = 0x4

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private generation_:J

.field private keyid_:J

.field private memoizedIsInitialized:B

.field private signature_:Lcom/google/protobuf/ByteString;

.field private unsigned_:Lcom/google/protobuf/ByteString;

.field private version_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1608
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 1616
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 877
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1038
    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->memoizedIsInitialized:B

    const-wide/16 v0, 0x1

    .line 878
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->version_:J

    .line 879
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->keyid_:J

    const-wide/16 v0, 0x0

    .line 880
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->generation_:J

    .line 881
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 882
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->signature_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 894
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;-><init>()V

    .line 897
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 901
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/16 v4, 0x8

    if-eq v2, v4, :cond_6

    const/16 v5, 0x10

    if-eq v2, v5, :cond_5

    const/16 v6, 0x18

    if-eq v2, v6, :cond_4

    const/16 v6, 0x22

    if-eq v2, v6, :cond_3

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_2

    .line 907
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

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

    .line 934
    :cond_2
    iget v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    .line 935
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->signature_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 929
    :cond_3
    iget v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    .line 930
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 924
    :cond_4
    iget v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    .line 925
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->generation_:J

    goto :goto_0

    .line 919
    :cond_5
    iget v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    .line 920
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->keyid_:J

    goto :goto_0

    .line 914
    :cond_6
    iget v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    .line 915
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->version_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 943
    :goto_1
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 944
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 941
    :goto_2
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 946
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 947
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->makeExtensionsImmutable()V

    .line 948
    throw p1

    .line 946
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 947
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 875
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1038
    iput-byte p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->memoizedIsInitialized:B

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    return-void
.end method

.method public static synthetic access$200()Z
    .locals 1

    .line 869
    sget-boolean v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$300(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 869
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->generation_:J

    return-void
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->keyid_:J

    return-void
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;Lcom/google/protobuf/ByteString;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->signature_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;Lcom/google/protobuf/ByteString;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->version_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .locals 1

    .line 1612
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 952
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->e()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;
    .locals 1

    .line 1235
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;
    .locals 1

    .line 1238
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1209
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1210
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1216
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1217
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1177
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1183
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1222
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1223
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1229
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1230
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1197
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1198
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1204
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1205
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1187
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1193
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;",
            ">;"
        }
    .end annotation

    .line 1626
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1104
    :cond_0
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    if-nez v1, :cond_1

    .line 1105
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1107
    :cond_1
    check-cast p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 1110
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasVersion()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasVersion()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1111
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 1112
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getVersion()J

    move-result-wide v1

    .line 1113
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getVersion()J

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

    .line 1115
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasKeyid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasKeyid()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 1116
    :goto_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasKeyid()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 1117
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getKeyid()J

    move-result-wide v1

    .line 1118
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getKeyid()J

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

    .line 1120
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasGeneration()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasGeneration()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 1121
    :goto_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasGeneration()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 1122
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getGeneration()J

    move-result-wide v1

    .line 1123
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getGeneration()J

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

    .line 1125
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasUnsigned()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasUnsigned()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 1126
    :goto_6
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasUnsigned()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 1127
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getUnsigned()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 1128
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getUnsigned()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 1130
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasSignature()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasSignature()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 1131
    :goto_8
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasSignature()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 1132
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 1133
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getSignature()Lcom/google/protobuf/ByteString;

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

    .line 1135
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    return v0

    :cond_11
    return v3
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .locals 1

    .line 1635
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    return-object v0
.end method

.method public getGeneration()J
    .locals 2

    .line 1005
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->generation_:J

    return-wide v0
.end method

.method public getKeyid()J
    .locals 2

    .line 990
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->keyid_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;",
            ">;"
        }
    .end annotation

    .line 1631
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1069
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1073
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1074
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->version_:J

    .line 1075
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1077
    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 1078
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->keyid_:J

    .line 1079
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1081
    :cond_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 1082
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->generation_:J

    .line 1083
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1085
    :cond_3
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 1086
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 1087
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1089
    :cond_4
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 1090
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->signature_:Lcom/google/protobuf/ByteString;

    .line 1091
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1093
    :cond_5
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1094
    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->memoizedSize:I

    return v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUnsigned()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 975
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->version_:J

    return-wide v0
.end method

.method public hasGeneration()Z
    .locals 2

    .line 999
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

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

    .line 984
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

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

    .line 1029
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

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

    .line 1014
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

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

    .line 969
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

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

    .line 1141
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1142
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->memoizedHashCode:I

    return v0

    .line 1145
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 1146
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasVersion()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    const/4 v3, 0x1

    .line 1147
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 1149
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getVersion()J

    move-result-wide v3

    .line 1148
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 1151
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasKeyid()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x25

    const/4 v3, 0x2

    .line 1152
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 1154
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getKeyid()J

    move-result-wide v3

    .line 1153
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 1156
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasGeneration()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x25

    const/4 v3, 0x3

    .line 1157
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 1159
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getGeneration()J

    move-result-wide v3

    .line 1158
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 1161
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasUnsigned()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x25

    const/4 v3, 0x4

    .line 1162
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 1163
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getUnsigned()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1165
    :cond_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hasSignature()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x25

    const/4 v3, 0x5

    .line 1166
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 1167
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    .line 1169
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1170
    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->memoizedHashCode:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 957
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->f()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    const-class v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    .line 958
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1040
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1044
    :cond_1
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;
    .locals 1

    .line 1233
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->newBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;
    .locals 2

    .line 1248
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;I)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 869
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;
    .locals 2

    .line 1241
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1242
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

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

    .line 1050
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1051
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->version_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1053
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1054
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->keyid_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1056
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 1057
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->generation_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1059
    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 1060
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1062
    :cond_3
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 1063
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->signature_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1065
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

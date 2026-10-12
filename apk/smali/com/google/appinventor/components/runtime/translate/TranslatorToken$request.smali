.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/translate/TranslatorToken$requestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/translate/TranslatorToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

.field public static final LANGUAGECODE_FIELD_NUMBER:I = 0x4

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOURCELANGUAGE_FIELD_NUMBER:I = 0x5

.field public static final TARGETLANGUAGE_FIELD_NUMBER:I = 0x6

.field public static final TOKEN_FIELD_NUMBER:I = 0x2

.field public static final TOTRANSLATE_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile languagecode_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile sourcelanguage_:Ljava/lang/Object;

.field private volatile targetlanguage_:Ljava/lang/Object;

.field private token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

.field private volatile totranslate_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2934
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2942
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1733
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2040
    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedIsInitialized:B

    const-wide/16 v0, 0x1

    .line 1734
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J

    .line 1735
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    .line 1736
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    .line 1737
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    .line 1738
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1750
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;-><init>()V

    .line 1753
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 1757
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/16 v4, 0x8

    if-eq v2, v4, :cond_9

    const/16 v5, 0x12

    if-eq v2, v5, :cond_6

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_5

    const/16 v5, 0x22

    if-eq v2, v5, :cond_4

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x32

    if-eq v2, v4, :cond_2

    .line 1763
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

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

    goto :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    .line 1806
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1807
    iget v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    .line 1808
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    goto :goto_0

    .line 1800
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1801
    iget v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    .line 1802
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    goto :goto_0

    .line 1794
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1795
    iget v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    .line 1796
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    goto :goto_0

    .line 1788
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1789
    iget v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    .line 1790
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    goto :goto_0

    .line 1776
    :cond_6
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_7

    .line 1777
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v2

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    .line 1779
    :goto_1
    sget-object v4, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-eqz v2, :cond_8

    .line 1781
    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1782
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1784
    :cond_8
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    goto/16 :goto_0

    .line 1770
    :cond_9
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    .line 1771
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1816
    :goto_2
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1817
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1814
    :goto_3
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1819
    :goto_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1820
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->makeExtensionsImmutable()V

    .line 1821
    throw p1

    .line 1819
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1820
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1731
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 2040
    iput-byte p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedIsInitialized:B

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400()Z
    .locals 1

    .line 1725
    sget-boolean v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$500(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1725
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .locals 1

    .line 2938
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1825
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic i(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    return-void
.end method

.method public static bridge synthetic j(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic k(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J

    return-void
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1

    .line 2247
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1

    .line 2250
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2221
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2222
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2228
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2229
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2189
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2195
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2234
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2235
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2241
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2242
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2209
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2210
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2216
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2217
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2199
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2205
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;",
            ">;"
        }
    .end annotation

    .line 2952
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2109
    :cond_0
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    if-nez v1, :cond_1

    .line 2110
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2112
    :cond_1
    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2115
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasVersion()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasVersion()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 2116
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 2117
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getVersion()J

    move-result-wide v1

    .line 2118
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getVersion()J

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

    .line 2120
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasToken()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasToken()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 2121
    :goto_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasToken()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 2122
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v1

    .line 2123
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 2125
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTotranslate()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTotranslate()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 2126
    :goto_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTotranslate()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 2127
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTotranslate()Ljava/lang/String;

    move-result-object v1

    .line 2128
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTotranslate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 2130
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasLanguagecode()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasLanguagecode()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 2131
    :goto_6
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasLanguagecode()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 2132
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getLanguagecode()Ljava/lang/String;

    move-result-object v1

    .line 2133
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getLanguagecode()Ljava/lang/String;

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

    .line 2135
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasSourcelanguage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasSourcelanguage()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 2136
    :goto_8
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasSourcelanguage()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 2137
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getSourcelanguage()Ljava/lang/String;

    move-result-object v1

    .line 2138
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getSourcelanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 2140
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTargetlanguage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTargetlanguage()Z

    move-result v2

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 2141
    :goto_a
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTargetlanguage()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    .line 2142
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTargetlanguage()Ljava/lang/String;

    move-result-object v1

    .line 2143
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTargetlanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_b
    if-eqz v1, :cond_14

    .line 2145
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    return v0

    :cond_14
    return v3
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .locals 1

    .line 2961
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public getLanguagecode()Ljava/lang/String;
    .locals 2

    .line 1926
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    .line 1927
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1928
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1930
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1932
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1933
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1934
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getLanguagecodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1944
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    .line 1945
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1946
    check-cast v0, Ljava/lang/String;

    .line 1947
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1949
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    return-object v0

    .line 1952
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
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;",
            ">;"
        }
    .end annotation

    .line 2957
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 2074
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2078
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2079
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J

    .line 2080
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2082
    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 2084
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2086
    :cond_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 2087
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2089
    :cond_3
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 2090
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2092
    :cond_4
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 2093
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2095
    :cond_5
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 2096
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2098
    :cond_6
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2099
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedSize:I

    return v0
.end method

.method public getSourcelanguage()Ljava/lang/String;
    .locals 2

    .line 1968
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    .line 1969
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1970
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1972
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1974
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1975
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1976
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSourcelanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1986
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    .line 1987
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1988
    check-cast v0, Ljava/lang/String;

    .line 1989
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1991
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    return-object v0

    .line 1994
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTargetlanguage()Ljava/lang/String;
    .locals 2

    .line 2010
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    .line 2011
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2012
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2014
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2016
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2017
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2018
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getTargetlanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2028
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    .line 2029
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2030
    check-cast v0, Ljava/lang/String;

    .line 2031
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2033
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    return-object v0

    .line 2036
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .locals 1

    .line 1863
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTokenOrBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;
    .locals 1

    .line 1869
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTotranslate()Ljava/lang/String;
    .locals 2

    .line 1884
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    .line 1885
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1886
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1888
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1890
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1891
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1892
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getTotranslateBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1902
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    .line 1903
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1904
    check-cast v0, Ljava/lang/String;

    .line 1905
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1907
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    return-object v0

    .line 1910
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1744
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 1848
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J

    return-wide v0
.end method

.method public hasLanguagecode()Z
    .locals 2

    .line 1920
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSourcelanguage()Z
    .locals 2

    .line 1962
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasTargetlanguage()Z
    .locals 2

    .line 2004
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/16 v1, 0x20

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

    .line 1857
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasTotranslate()Z
    .locals 2

    .line 1878
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

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

    .line 1842
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

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

    .line 2151
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 2152
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedHashCode:I

    return v0

    .line 2155
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 2156
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasVersion()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    const/4 v3, 0x1

    .line 2157
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 2159
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getVersion()J

    move-result-wide v3

    .line 2158
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 2161
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasToken()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x25

    const/4 v3, 0x2

    .line 2162
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 2163
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2165
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTotranslate()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x25

    const/4 v3, 0x3

    .line 2166
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 2167
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTotranslate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2169
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasLanguagecode()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x25

    const/4 v3, 0x4

    .line 2170
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 2171
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getLanguagecode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2173
    :cond_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasSourcelanguage()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x25

    const/4 v3, 0x5

    .line 2174
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 2175
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getSourcelanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2177
    :cond_5
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTargetlanguage()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x25

    const/4 v3, 0x6

    .line 2178
    invoke-static {v0, v1, v3, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    .line 2179
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTargetlanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x1d

    .line 2181
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2182
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedHashCode:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1830
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    const-class v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    .line 1831
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 2042
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2046
    :cond_1
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1

    .line 2245
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->newBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 2

    .line 2260
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;I)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1725
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 2

    .line 2253
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 2254
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

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

    .line 2052
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2053
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 2055
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2056
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2058
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 2059
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2061
    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 2062
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2064
    :cond_3
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 2065
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2067
    :cond_4
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 2068
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2070
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

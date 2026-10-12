.class public final Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$responseOrBuilder;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$requestOrBuilder;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsignedOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_unsigned_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 4241
    const-string v0, "\n\nchat.proto\"D\n\u0008unsigned\u0012\r\n\u0005huuid\u0018\u0001 \u0001(\t\u0012\u0012\n\u0007version\u0018\u0002 \u0001(\u0004:\u00010\u0012\u0015\n\ngeneration\u0018\u0003 \u0001(\u0004:\u00010\"i\n\u0005token\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0010\n\u0005keyid\u0018\u0002 \u0001(\u0004:\u00011\u0012\u0015\n\ngeneration\u0018\u0003 \u0001(\u0004:\u00010\u0012\u0010\n\u0008unsigned\u0018\u0004 \u0001(\u000c\u0012\u0011\n\tsignature\u0018\u0005 \u0001(\u000c\"\u009e\u0001\n\u0007request\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0015\n\u0005token\u0018\u0002 \u0001(\u000b2\u0006.token\u0012\u000c\n\u0004uuid\u0018\u0003 \u0001(\t\u0012\u0010\n\u0008question\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006system\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006apikey\u0018\u0006 \u0001(\t\u0012\u0019\n\u0008provider\u0018\u0007 \u0001(\t:\u0007chatgpt\u0012\r\n\u0005model\u0018\u0008 \u0001(\t\"O\n\u0008response\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0011\n\u0006status\u0018\u0002 \u0001(\u0004:\u0001"

    const-string v1, "0\u0012\u000c\n\u0004uuid\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006answer\u0018\u0004 \u0001(\tBA\n1com.google.appinventor.components.runtime.chatbotB\u000cChatBotToken"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 4256
    new-instance v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$1;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$1;-><init>()V

    const/4 v2, 0x0

    .line 4264
    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4265
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 4269
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4270
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Huuid"

    const-string v3, "Version"

    const-string v4, "Generation"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_unsigned_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4275
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4276
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Unsigned"

    const-string v5, "Signature"

    const-string v6, "Keyid"

    filled-new-array {v3, v6, v4, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4281
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4282
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v10, "Provider"

    const-string v11, "Model"

    const-string v4, "Version"

    const-string v5, "Token"

    const-string v6, "Uuid"

    const-string v7, "Question"

    const-string v8, "System"

    const-string v9, "Apikey"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4287
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4288
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Uuid"

    const-string v4, "Answer"

    const-string v5, "Status"

    filled-new-array {v3, v5, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static bridge synthetic b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static bridge synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static bridge synthetic d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static bridge synthetic e()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static bridge synthetic f()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static bridge synthetic g()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 4236
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static bridge synthetic h()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_unsigned_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static bridge synthetic i(Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 0

    sput-object p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    return-void
.end method

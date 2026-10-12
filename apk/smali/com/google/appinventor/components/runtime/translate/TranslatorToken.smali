.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;,
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$responseOrBuilder;,
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;,
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$requestOrBuilder;,
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;,
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;,
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;,
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsignedOrBuilder;
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
    .locals 10

    .line 3746
    const-string v0, "\n\u0008tr.proto\"D\n\u0008unsigned\u0012\r\n\u0005huuid\u0018\u0001 \u0001(\t\u0012\u0012\n\u0007version\u0018\u0002 \u0001(\u0004:\u00010\u0012\u0015\n\ngeneration\u0018\u0003 \u0001(\u0004:\u00010\"i\n\u0005token\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0010\n\u0005keyid\u0018\u0002 \u0001(\u0004:\u00011\u0012\u0015\n\ngeneration\u0018\u0003 \u0001(\u0004:\u00010\u0012\u0010\n\u0008unsigned\u0018\u0004 \u0001(\u000c\u0012\u0011\n\tsignature\u0018\u0005 \u0001(\u000c\"\u008f\u0001\n\u0007request\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0015\n\u0005token\u0018\u0002 \u0001(\u000b2\u0006.token\u0012\u0013\n\u000btotranslate\u0018\u0003 \u0001(\t\u0012\u0014\n\u000clanguagecode\u0018\u0004 \u0001(\t\u0012\u0016\n\u000esourcelanguage\u0018\u0005 \u0001(\t\u0012\u0016\n\u000etargetlanguage\u0018\u0006 \u0001(\t\"E\n\u0008response\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0011\n\u0006status\u0018\u0002 \u0001(\u0004:\u00010\u0012\u0012\n\ntranslated\u0018\u0003"

    const-string v1, " \u0001(\tBF\n3com.google.appinventor.components.runtime.translateB\u000fTranslatorToken"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 3760
    new-instance v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;-><init>()V

    const/4 v2, 0x0

    .line 3768
    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3769
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 3773
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3774
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Huuid"

    const-string v3, "Version"

    const-string v4, "Generation"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_unsigned_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 3779
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3780
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Unsigned"

    const-string v5, "Signature"

    const-string v6, "Keyid"

    filled-new-array {v3, v6, v4, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 3785
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3786
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v8, "Sourcelanguage"

    const-string v9, "Targetlanguage"

    const-string v4, "Version"

    const-string v5, "Token"

    const-string v6, "Totranslate"

    const-string v7, "Languagecode"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 3791
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3792
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Status"

    const-string v4, "Translated"

    filled-new-array {v3, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

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

    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static bridge synthetic b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static bridge synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static bridge synthetic d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static bridge synthetic e()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static bridge synthetic f()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static bridge synthetic g()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 3741
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static bridge synthetic h()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_unsigned_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static bridge synthetic i(Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 0

    sput-object p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    return-void
.end method

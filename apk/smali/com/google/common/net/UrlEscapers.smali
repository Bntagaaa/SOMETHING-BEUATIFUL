.class public final Lcom/google/common/net/UrlEscapers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field public static final a:Lcom/google/common/net/PercentEscaper;

.field public static final b:Lcom/google/common/net/PercentEscaper;

.field public static final c:Lcom/google/common/net/PercentEscaper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 78
    new-instance v0, Lcom/google/common/net/PercentEscaper;

    const-string v1, "-_.*"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/net/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/common/net/UrlEscapers;->a:Lcom/google/common/net/PercentEscaper;

    .line 114
    new-instance v0, Lcom/google/common/net/PercentEscaper;

    const-string v1, "-._~!$\'()*,;&=@:+"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/net/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/common/net/UrlEscapers;->b:Lcom/google/common/net/PercentEscaper;

    .line 146
    new-instance v0, Lcom/google/common/net/PercentEscaper;

    const-string v1, "-._~!$\'()*,;&=@:+/?"

    invoke-direct {v0, v1, v2}, Lcom/google/common/net/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/common/net/UrlEscapers;->c:Lcom/google/common/net/PercentEscaper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static urlFormParameterEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .line 75
    sget-object v0, Lcom/google/common/net/UrlEscapers;->a:Lcom/google/common/net/PercentEscaper;

    return-object v0
.end method

.method public static urlFragmentEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .line 143
    sget-object v0, Lcom/google/common/net/UrlEscapers;->c:Lcom/google/common/net/PercentEscaper;

    return-object v0
.end method

.method public static urlPathSegmentEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .line 111
    sget-object v0, Lcom/google/common/net/UrlEscapers;->b:Lcom/google/common/net/PercentEscaper;

    return-object v0
.end method

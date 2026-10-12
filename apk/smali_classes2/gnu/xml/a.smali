.class final Lgnu/xml/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lgnu/xml/a;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lgnu/mapping/Symbol;

.field public g:Lgnu/xml/NamespaceBinding;

.field public h:Lgnu/xml/XName;

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1640
    iput v0, p0, Lgnu/xml/a;->i:I

    return-void
.end method

.method public static a(Ljava/lang/String;[CII)Z
    .locals 4

    .line 1702
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p3, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int v2, p2, v0

    .line 1705
    aget-char v2, p1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

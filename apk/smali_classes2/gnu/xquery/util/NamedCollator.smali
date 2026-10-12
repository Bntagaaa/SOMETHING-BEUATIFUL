.class public Lgnu/xquery/util/NamedCollator;
.super Ljava/text/Collator;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final UNICODE_CODEPOINT_COLLATION:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions/collation/codepoint"

.field public static final codepointCollation:Lgnu/xquery/util/NamedCollator;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lgnu/xquery/util/NamedCollator;

    invoke-direct {v0}, Lgnu/xquery/util/NamedCollator;-><init>()V

    sput-object v0, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    .line 38
    const-string v1, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    iput-object v1, v0, Lgnu/xquery/util/NamedCollator;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/text/Collator;-><init>()V

    return-void
.end method

.method public static codepointCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    const/4 v5, -0x1

    if-ne v3, v0, :cond_2

    if-ne v4, v1, :cond_1

    return v2

    :cond_1
    return v5

    :cond_2
    const/4 v6, 0x1

    if-ne v4, v1, :cond_3

    return v6

    :cond_3
    add-int/lit8 v7, v3, 0x1

    .line 64
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/high16 v9, 0x10000

    const v10, 0xdc00

    const v11, 0xd800

    if-lt v8, v11, :cond_4

    if-ge v8, v10, :cond_4

    if-ge v7, v0, :cond_4

    sub-int/2addr v8, v11

    mul-int/lit16 v8, v8, 0x400

    add-int/lit8 v3, v3, 0x2

    .line 66
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sub-int/2addr v7, v10

    add-int/2addr v7, v8

    add-int v8, v7, v9

    goto :goto_0

    :cond_4
    move v3, v7

    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 68
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v11, :cond_5

    if-ge v12, v10, :cond_5

    if-ge v7, v1, :cond_5

    sub-int/2addr v12, v11

    mul-int/lit16 v12, v12, 0x400

    add-int/lit8 v4, v4, 0x2

    .line 70
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sub-int/2addr v7, v10

    add-int/2addr v7, v12

    add-int v12, v7, v9

    goto :goto_1

    :cond_5
    move v4, v7

    :goto_1
    if-eq v8, v12, :cond_0

    if-ge v8, v12, :cond_6

    return v5

    :cond_6
    return v6
.end method

.method public static find(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;
    .locals 0

    .line 34
    invoke-static {p0}, Lgnu/xquery/util/NamedCollator;->make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;

    move-result-object p0

    return-object p0
.end method

.method public static make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;
    .locals 1

    .line 21
    new-instance v0, Lgnu/xquery/util/NamedCollator;

    invoke-direct {v0}, Lgnu/xquery/util/NamedCollator;-><init>()V

    .line 22
    iput-object p0, v0, Lgnu/xquery/util/NamedCollator;->a:Ljava/lang/String;

    .line 23
    invoke-virtual {v0}, Lgnu/xquery/util/NamedCollator;->resolve()V

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 83
    invoke-static {p1, p2}, Lgnu/xquery/util/NamedCollator;->codepointCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .locals 0

    const/4 p1, 0x0

    .line 89
    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgnu/xquery/util/NamedCollator;->a:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lgnu/xquery/util/NamedCollator;->resolve()V

    return-void
.end method

.method public resolve()V
    .locals 3

    .line 42
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown collation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lgnu/xquery/util/NamedCollator;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.class public Lgnu/text/URIPath;
.super Lgnu/text/Path;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/text/Path;",
        "Ljava/lang/Comparable<",
        "Lgnu/text/URIPath;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lgnu/text/Path;-><init>()V

    iput-object p1, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    return-void
.end method

.method public static coerceToURIPathOrNull(Ljava/lang/Object;)Lgnu/text/URIPath;
    .locals 1

    .line 34
    instance-of v0, p0, Lgnu/text/URIPath;

    if-eqz v0, :cond_0

    .line 35
    check-cast p0, Lgnu/text/URIPath;

    return-object p0

    .line 36
    :cond_0
    instance-of v0, p0, Ljava/net/URL;

    if-eqz v0, :cond_1

    .line 37
    check-cast p0, Ljava/net/URL;

    invoke-static {p0}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object p0

    return-object p0

    .line 39
    :cond_1
    instance-of v0, p0, Ljava/net/URI;

    if-eqz v0, :cond_2

    .line 40
    check-cast p0, Ljava/net/URI;

    invoke-static {p0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object p0

    return-object p0

    .line 43
    :cond_2
    instance-of v0, p0, Ljava/io/File;

    if-nez v0, :cond_5

    instance-of v0, p0, Lgnu/text/Path;

    if-nez v0, :cond_5

    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 45
    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 46
    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_5
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 49
    :goto_1
    invoke-static {p0}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object p0

    return-object p0
.end method

.method public static encodeForUri(Ljava/lang/String;C)Ljava/lang/String;
    .locals 13

    .line 323
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 324
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_d

    add-int/lit8 v4, v3, 0x1

    .line 327
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_0

    const v7, 0xdc00

    if-ge v5, v7, :cond_0

    if-ge v4, v1, :cond_0

    sub-int/2addr v5, v6

    mul-int/lit16 v5, v5, 0x400

    add-int/lit8 v3, v3, 0x2

    .line 330
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v7

    add-int/2addr v4, v5

    const/high16 v5, 0x10000

    add-int/2addr v5, v4

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    const/16 v4, 0x48

    const/16 v6, 0x25

    const/16 v7, 0x7e

    if-ne p1, v4, :cond_1

    const/16 v4, 0x20

    if-lt v5, v4, :cond_5

    if-gt v5, v7, :cond_5

    goto/16 :goto_6

    :cond_1
    const/16 v4, 0x61

    if-lt v5, v4, :cond_2

    const/16 v4, 0x7a

    if-le v5, v4, :cond_c

    :cond_2
    const/16 v4, 0x41

    if-lt v5, v4, :cond_3

    const/16 v4, 0x5a

    if-le v5, v4, :cond_c

    :cond_3
    const/16 v4, 0x30

    if-lt v5, v4, :cond_4

    const/16 v4, 0x39

    if-le v5, v4, :cond_c

    :cond_4
    const/16 v4, 0x2d

    if-eq v5, v4, :cond_c

    const/16 v4, 0x5f

    if-eq v5, v4, :cond_c

    const/16 v4, 0x2e

    if-eq v5, v4, :cond_c

    if-eq v5, v7, :cond_c

    const/16 v4, 0x49

    if-ne p1, v4, :cond_5

    const/16 v4, 0x3b

    if-eq v5, v4, :cond_c

    const/16 v4, 0x2f

    if-eq v5, v4, :cond_c

    const/16 v4, 0x3f

    if-eq v5, v4, :cond_c

    const/16 v4, 0x3a

    if-eq v5, v4, :cond_c

    const/16 v4, 0x2a

    if-eq v5, v4, :cond_c

    const/16 v4, 0x27

    if-eq v5, v4, :cond_c

    const/16 v4, 0x28

    if-eq v5, v4, :cond_c

    const/16 v4, 0x29

    if-eq v5, v4, :cond_c

    const/16 v4, 0x40

    if-eq v5, v4, :cond_c

    const/16 v4, 0x26

    if-eq v5, v4, :cond_c

    const/16 v4, 0x3d

    if-eq v5, v4, :cond_c

    const/16 v4, 0x2b

    if-eq v5, v4, :cond_c

    const/16 v4, 0x24

    if-eq v5, v4, :cond_c

    const/16 v4, 0x2c

    if-eq v5, v4, :cond_c

    const/16 v4, 0x5b

    if-eq v5, v4, :cond_c

    const/16 v4, 0x5d

    if-eq v5, v4, :cond_c

    const/16 v4, 0x23

    if-eq v5, v4, :cond_c

    const/16 v4, 0x21

    if-eq v5, v4, :cond_c

    if-ne v5, v6, :cond_5

    goto :goto_6

    .line 345
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/4 v7, 0x0

    :cond_6
    if-nez v7, :cond_7

    const/4 v8, 0x7

    goto :goto_2

    :cond_7
    rsub-int/lit8 v8, v7, 0x6

    :goto_2
    const/4 v9, 0x1

    shl-int v8, v9, v8

    if-ge v5, v8, :cond_9

    if-lez v7, :cond_8

    const v8, 0xff80

    shr-int/2addr v8, v7

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    :cond_8
    move v8, v5

    const/4 v5, 0x0

    goto :goto_3

    :cond_9
    and-int/lit8 v8, v5, 0x3f

    or-int/lit16 v8, v8, 0x80

    shr-int/lit8 v5, v5, 0x6

    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x0

    :goto_4
    if-gt v10, v9, :cond_b

    and-int/lit8 v11, v8, 0xf

    const/16 v12, 0x9

    if-gt v11, v12, :cond_a

    add-int/lit8 v11, v11, 0x30

    goto :goto_5

    :cond_a
    add-int/lit8 v11, v11, 0x37

    :goto_5
    int-to-char v11, v11

    .line 373
    invoke-virtual {v0, v4, v11}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    shr-int/lit8 v8, v8, 0x4

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 377
    :cond_b
    invoke-virtual {v0, v4, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    if-nez v5, :cond_6

    goto/16 :goto_0

    :cond_c
    :goto_6
    int-to-char v4, v5

    .line 342
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 382
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;
    .locals 4

    .line 54
    invoke-static {p0}, Lgnu/text/URIPath;->coerceToURIPathOrNull(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x4

    const-string v2, "URI"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, p0, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/text/URIPath;
    .locals 3

    .line 70
    :try_start_0
    new-instance v0, Lgnu/text/b;

    new-instance v1, Ljava/net/URI;

    const/16 v2, 0x49

    invoke-static {p0, v2}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lgnu/text/b;-><init>(Ljava/net/URI;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 74
    invoke-static {p0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static valueOf(Ljava/net/URI;)Lgnu/text/URIPath;
    .locals 1

    .line 62
    new-instance v0, Lgnu/text/URIPath;

    invoke-direct {v0, p0}, Lgnu/text/URIPath;-><init>(Ljava/net/URI;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lgnu/text/URIPath;)I
    .locals 1

    .line 190
    iget-object v0, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    iget-object p1, p1, Lgnu/text/URIPath;->b:Ljava/net/URI;

    invoke-virtual {v0, p1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lgnu/text/URIPath;

    invoke-virtual {p0, p1}, Lgnu/text/URIPath;->compareTo(Lgnu/text/URIPath;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 202
    instance-of v0, p1, Lgnu/text/URIPath;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/text/URIPath;

    iget-object p1, p1, Lgnu/text/URIPath;->b:Ljava/net/URI;

    iget-object v0, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    invoke-virtual {v0, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public exists()Z
    .locals 7

    const/4 v0, 0x0

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 95
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 96
    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    return v0

    .line 99
    :cond_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_2

    return v3

    :catchall_0
    :cond_2
    return v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCanonical()Lgnu/text/Path;
    .locals 2

    .line 306
    invoke-virtual {p0}, Lgnu/text/URIPath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-object p0

    .line 312
    :cond_0
    invoke-static {v1}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v0

    return-object v0

    .line 318
    :cond_1
    invoke-virtual {p0}, Lgnu/text/Path;->getAbsolute()Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/Path;->getCanonical()Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 114
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->getContentLength(Ljava/net/URL;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 109
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->getLastModified(Ljava/net/URL;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 270
    iget-object v0, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 207
    iget-object v0, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->openInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->openOutputStream(Ljava/net/URL;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lgnu/text/Path;
    .locals 6

    .line 127
    invoke-static {p1}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p1}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object p1

    return-object p1

    .line 129
    :cond_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_4

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_3

    .line 137
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object p1

    return-object p1

    .line 139
    :cond_3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 145
    :cond_4
    :try_start_0
    iget-object v0, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    new-instance v1, Ljava/net/URI;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-static {p1}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 149
    invoke-static {p1}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURIString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURIString()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 1

    .line 217
    iget-object v0, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/Path;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 1

    .line 118
    iget-object v0, p0, Lgnu/text/URIPath;->b:Ljava/net/URI;

    return-object v0
.end method

.class public Lcom/google/common/reflect/ClassPath$ResourceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceInfo"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->a:Ljava/lang/String;

    .line 195
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->b:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final asByteSource()Lcom/google/common/io/ByteSource;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/google/common/reflect/ClassPath$ResourceInfo;->url()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/Resources;->asByteSource(Ljava/net/URL;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method public final asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/google/common/reflect/ClassPath$ResourceInfo;->url()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/io/Resources;->asCharSource(Ljava/net/URL;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 249
    instance-of v0, p1, Lcom/google/common/reflect/ClassPath$ResourceInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 250
    check-cast p1, Lcom/google/common/reflect/ClassPath$ResourceInfo;

    .line 251
    iget-object v0, p1, Lcom/google/common/reflect/ClassPath$ResourceInfo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->b:Ljava/lang/ClassLoader;

    iget-object p1, p1, Lcom/google/common/reflect/ClassPath$ResourceInfo;->b:Ljava/lang/ClassLoader;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final getResourceName()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final url()Ljava/net/URL;
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->b:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 209
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

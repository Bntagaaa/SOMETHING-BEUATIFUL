.class Landroidx/versionedparcelable/b;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/versionedparcelable/c;


# direct methods
.method public constructor <init>(Landroidx/versionedparcelable/c;Ljava/io/InputStream;)V
    .locals 0

    .line 85
    iput-object p1, p0, Landroidx/versionedparcelable/b;->a:Landroidx/versionedparcelable/c;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Landroidx/versionedparcelable/b;->a:Landroidx/versionedparcelable/c;

    iget v1, v0, Landroidx/versionedparcelable/c;->i:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v2, v0, Landroidx/versionedparcelable/c;->g:I

    if-ge v2, v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 91
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v1

    .line 92
    iget v2, v0, Landroidx/versionedparcelable/c;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/versionedparcelable/c;->g:I

    return v1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroidx/versionedparcelable/b;->a:Landroidx/versionedparcelable/c;

    iget v1, v0, Landroidx/versionedparcelable/c;->i:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v2, v0, Landroidx/versionedparcelable/c;->g:I

    if-ge v2, v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 101
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_2

    .line 103
    iget p2, v0, Landroidx/versionedparcelable/c;->g:I

    add-int/2addr p2, p1

    iput p2, v0, Landroidx/versionedparcelable/c;->g:I

    :cond_2
    return p1
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Landroidx/versionedparcelable/b;->a:Landroidx/versionedparcelable/c;

    iget v1, v0, Landroidx/versionedparcelable/c;->i:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v2, v0, Landroidx/versionedparcelable/c;->g:I

    if-ge v2, v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 113
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_2

    .line 115
    iget v1, v0, Landroidx/versionedparcelable/c;->g:I

    long-to-int v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/versionedparcelable/c;->g:I

    :cond_2
    return-wide p1
.end method

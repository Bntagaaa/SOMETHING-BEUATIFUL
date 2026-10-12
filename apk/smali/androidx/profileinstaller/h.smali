.class Landroidx/profileinstaller/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation


# static fields
.field public static final a:[B

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    .line 66
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/profileinstaller/h;->a:[B

    .line 67
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/profileinstaller/h;->b:[B

    return-void

    :array_0
    .array-data 1
        0x70t
        0x72t
        0x6ft
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x70t
        0x72t
        0x6dt
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Landroidx/profileinstaller/c;[B)[B
    .locals 11

    .line 562
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p0, v2

    .line 569
    iget-object v5, v4, Landroidx/profileinstaller/c;->a:Ljava/lang/String;

    iget-object v6, v4, Landroidx/profileinstaller/c;->b:Ljava/lang/String;

    invoke-static {v5, v6, p1}, Landroidx/profileinstaller/h;->b(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    .line 46
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x10

    .line 571
    iget v6, v4, Landroidx/profileinstaller/c;->e:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget v5, v4, Landroidx/profileinstaller/c;->f:I

    add-int/2addr v6, v5

    .line 612
    iget v4, v4, Landroidx/profileinstaller/c;->g:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x7

    and-int/lit8 v4, v4, -0x8

    .line 613
    div-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 583
    sget-object v2, Landroidx/profileinstaller/ProfileVersion;->c:[B

    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 585
    array-length v2, p0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    aget-object v5, p0, v4

    .line 586
    iget-object v6, v5, Landroidx/profileinstaller/c;->a:Ljava/lang/String;

    iget-object v7, v5, Landroidx/profileinstaller/c;->b:Ljava/lang/String;

    invoke-static {v6, v7, p1}, Landroidx/profileinstaller/h;->b(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v6

    .line 587
    invoke-static {v0, v5, v6}, Landroidx/profileinstaller/h;->j(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;Ljava/lang/String;)V

    .line 671
    invoke-static {v0, v5}, Landroidx/profileinstaller/h;->l(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V

    .line 717
    iget-object v6, v5, Landroidx/profileinstaller/c;->h:[I

    array-length v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v8, v7, :cond_1

    aget v10, v6, v8

    sub-int v9, v10, v9

    .line 719
    invoke-static {v0, v9}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    add-int/lit8 v8, v8, 0x1

    move v9, v10

    goto :goto_2

    .line 673
    :cond_1
    invoke-static {v0, v5}, Landroidx/profileinstaller/h;->k(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 593
    :cond_2
    array-length v2, p0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_3

    aget-object v5, p0, v4

    .line 594
    iget-object v6, v5, Landroidx/profileinstaller/c;->a:Ljava/lang/String;

    iget-object v7, v5, Landroidx/profileinstaller/c;->b:Ljava/lang/String;

    invoke-static {v6, v7, p1}, Landroidx/profileinstaller/h;->b(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v6

    .line 595
    invoke-static {v0, v5, v6}, Landroidx/profileinstaller/h;->j(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 599
    :cond_3
    array-length p1, p0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_5

    aget-object v4, p0, v2

    .line 671
    invoke-static {v0, v4}, Landroidx/profileinstaller/h;->l(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V

    .line 717
    iget-object v5, v4, Landroidx/profileinstaller/c;->h:[I

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_5
    if-ge v7, v6, :cond_4

    aget v9, v5, v7

    sub-int v8, v9, v8

    .line 719
    invoke-static {v0, v8}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    add-int/lit8 v7, v7, 0x1

    move v8, v9

    goto :goto_5

    .line 673
    :cond_4
    invoke-static {v0, v4}, Landroidx/profileinstaller/h;->k(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 604
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-ne p0, v3, :cond_6

    .line 608
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 605
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "The bytes saved do not match expectation. actual="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " expected="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 196
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 605
    throw p1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6

    .line 40
    sget-object v0, Landroidx/profileinstaller/ProfileVersion;->e:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    sget-object v2, Landroidx/profileinstaller/ProfileVersion;->d:[B

    const-string v3, "!"

    const-string v4, ":"

    if-eqz v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move-object v1, v4

    goto :goto_1

    :cond_1
    move-object v1, v3

    .line 1037
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_3

    .line 1050
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1051
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1052
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 1053
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1038
    :cond_3
    const-string v5, "classes.dex"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    return-object p0

    .line 1039
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    .line 1042
    :cond_5
    const-string v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    .line 0
    :cond_6
    invoke-static {p0}, L_COROUTINE/a;->p(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 40
    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 42
    :cond_7
    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_8

    :goto_2
    move-object v3, v4

    .line 0
    :cond_8
    invoke-static {p0, v3, p1}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1050
    :cond_9
    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 1051
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1052
    :cond_a
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 1053
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_4
    return-object p1
.end method

.method public static c(Ljava/io/ByteArrayInputStream;I)[I
    .locals 5

    .line 1193
    new-array v0, p1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/4 v3, 0x2

    .line 106
    invoke-static {p0, v3}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v3

    long-to-int v4, v3

    add-int/2addr v2, v4

    .line 1198
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static d(Ljava/io/FileInputStream;[B[B[Landroidx/profileinstaller/c;)[Landroidx/profileinstaller/c;
    .locals 6

    .line 819
    sget-object v0, Landroidx/profileinstaller/ProfileVersion;->f:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const-string v2, "Unsupported meta version"

    const-string v3, "Content found after the end of file"

    const/4 v4, 0x4

    if-eqz v1, :cond_3

    .line 820
    sget-object v1, Landroidx/profileinstaller/ProfileVersion;->a:[B

    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_2

    .line 850
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 102
    invoke-static {p0, p1}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide p1

    long-to-int p2, p1

    .line 110
    invoke-static {p0, v4}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v0

    .line 110
    invoke-static {p0, v4}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v4

    long-to-int p1, v4

    long-to-int v1, v0

    .line 859
    invoke-static {p0, p1, v1}, Landroidx/profileinstaller/d;->c(Ljava/io/FileInputStream;II)[B

    move-result-object p1

    .line 864
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-gtz p0, :cond_0

    .line 866
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 867
    :try_start_0
    invoke-static {p0, p2, p3}, Landroidx/profileinstaller/h;->e(Ljava/io/ByteArrayInputStream;I[Landroidx/profileinstaller/c;)[Landroidx/profileinstaller/c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 866
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    .line 196
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 864
    throw p0

    .line 196
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 851
    throw p0

    .line 196
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 824
    throw p0

    .line 829
    :cond_3
    sget-object v0, Landroidx/profileinstaller/ProfileVersion;->g:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    .line 106
    invoke-static {p0, p1}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v0

    long-to-int p1, v0

    .line 110
    invoke-static {p0, v4}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v0

    .line 110
    invoke-static {p0, v4}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v4

    long-to-int v2, v4

    long-to-int v1, v0

    .line 894
    invoke-static {p0, v2, v1}, Landroidx/profileinstaller/d;->c(Ljava/io/FileInputStream;II)[B

    move-result-object v0

    .line 899
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-gtz p0, :cond_4

    .line 900
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 901
    :try_start_2
    invoke-static {p0, p2, p1, p3}, Landroidx/profileinstaller/h;->f(Ljava/io/ByteArrayInputStream;[BI[Landroidx/profileinstaller/c;)[Landroidx/profileinstaller/c;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 907
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_2
    move-exception p1

    .line 900
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    .line 196
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 899
    throw p0

    .line 196
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 832
    throw p0
.end method

.method public static e(Ljava/io/ByteArrayInputStream;I[Landroidx/profileinstaller/c;)[Landroidx/profileinstaller/c;
    .locals 7

    .line 986
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 987
    new-array p0, v1, [Landroidx/profileinstaller/c;

    return-object p0

    .line 989
    :cond_0
    array-length v0, p2

    if-ne p1, v0, :cond_4

    .line 993
    new-array v0, p1, [Ljava/lang/String;

    .line 994
    new-array v2, p1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    const/4 v4, 0x2

    .line 106
    invoke-static {p0, v4}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v5

    long-to-int v6, v5

    .line 106
    invoke-static {p0, v4}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v4

    long-to-int v5, v4

    .line 997
    aput v5, v2, v3

    .line 114
    new-instance v4, Ljava/lang/String;

    invoke-static {p0, v6}, Landroidx/profileinstaller/d;->b(Ljava/io/InputStream;I)[B

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 998
    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, p1, :cond_3

    .line 1003
    aget-object v3, p2, v1

    .line 1004
    iget-object v4, v3, Landroidx/profileinstaller/c;->b:Ljava/lang/String;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1007
    aget v4, v2, v1

    iput v4, v3, Landroidx/profileinstaller/c;->e:I

    .line 1009
    invoke-static {p0, v4}, Landroidx/profileinstaller/h;->c(Ljava/io/ByteArrayInputStream;I)[I

    move-result-object v4

    iput-object v4, v3, Landroidx/profileinstaller/c;->h:[I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Order of dexfiles in metadata did not match baseline"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1005
    throw p0

    :cond_3
    return-object p2

    .line 196
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Mismatched number of dex files found in metadata"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 990
    throw p0
.end method

.method public static f(Ljava/io/ByteArrayInputStream;[BI[Landroidx/profileinstaller/c;)[Landroidx/profileinstaller/c;
    .locals 10

    .line 918
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 919
    new-array p0, v1, [Landroidx/profileinstaller/c;

    return-object p0

    .line 921
    :cond_0
    array-length v0, p3

    if-ne p2, v0, :cond_9

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_8

    const/4 v2, 0x2

    .line 106
    invoke-static {p0, v2}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    .line 106
    invoke-static {p0, v2}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v3

    long-to-int v4, v3

    .line 114
    new-instance v3, Ljava/lang/String;

    invoke-static {p0, v4}, Landroidx/profileinstaller/d;->b(Ljava/io/InputStream;I)[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v4, 0x4

    .line 110
    invoke-static {p0, v4}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v4

    .line 106
    invoke-static {p0, v2}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v6

    long-to-int v2, v6

    .line 959
    array-length v6, p3

    const/4 v7, 0x0

    if-gtz v6, :cond_1

    goto :goto_3

    .line 1061
    :cond_1
    const-string v6, "!"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_2

    .line 1063
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    :cond_2
    if-lez v6, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 1067
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v3

    :goto_1
    const/4 v8, 0x0

    .line 965
    :goto_2
    array-length v9, p3

    if-ge v8, v9, :cond_5

    .line 966
    aget-object v9, p3, v8

    iget-object v9, v9, Landroidx/profileinstaller/c;->b:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 967
    aget-object v7, p3, v8

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v7, :cond_7

    .line 939
    iput-wide v4, v7, Landroidx/profileinstaller/c;->d:J

    .line 943
    invoke-static {p0, v2}, Landroidx/profileinstaller/h;->c(Ljava/io/ByteArrayInputStream;I)[I

    move-result-object v3

    .line 946
    sget-object v4, Landroidx/profileinstaller/ProfileVersion;->e:[B

    invoke-static {p1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 947
    iput v2, v7, Landroidx/profileinstaller/c;->e:I

    .line 948
    iput-object v3, v7, Landroidx/profileinstaller/c;->h:[I

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 936
    :cond_7
    const-string p0, "Missing profile key: "

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 196
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 936
    throw p1

    :cond_8
    return-object p3

    .line 196
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Mismatched number of dex files found in metadata"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 922
    throw p0
.end method

.method public static g(Ljava/io/FileInputStream;[BLjava/lang/String;)[Landroidx/profileinstaller/c;
    .locals 5

    .line 791
    sget-object v0, Landroidx/profileinstaller/ProfileVersion;->b:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 102
    invoke-static {p0, p1}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v0

    long-to-int p1, v0

    const/4 v0, 0x4

    .line 110
    invoke-static {p0, v0}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v1

    .line 110
    invoke-static {p0, v0}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v3

    long-to-int v0, v3

    long-to-int v2, v1

    .line 800
    invoke-static {p0, v0, v2}, Landroidx/profileinstaller/d;->c(Ljava/io/FileInputStream;II)[B

    move-result-object v0

    .line 805
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-gtz p0, :cond_0

    .line 807
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 808
    :try_start_0
    invoke-static {p0, p2, p1}, Landroidx/profileinstaller/h;->h(Ljava/io/ByteArrayInputStream;Ljava/lang/String;I)[Landroidx/profileinstaller/c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 807
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    .line 196
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Content found after the end of file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 805
    throw p0

    .line 196
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unsupported version"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 792
    throw p0
.end method

.method public static h(Ljava/io/ByteArrayInputStream;Ljava/lang/String;I)[Landroidx/profileinstaller/c;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1085
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1086
    new-array v0, v3, [Landroidx/profileinstaller/c;

    return-object v0

    .line 1089
    :cond_0
    new-array v2, v1, [Landroidx/profileinstaller/c;

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v1, :cond_1

    .line 106
    invoke-static {v0, v5}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v6

    long-to-int v7, v6

    .line 106
    invoke-static {v0, v5}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v5

    long-to-int v13, v5

    const/4 v5, 0x4

    .line 110
    invoke-static {v0, v5}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v8

    .line 110
    invoke-static {v0, v5}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v11

    .line 110
    invoke-static {v0, v5}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v5

    .line 1097
    new-instance v10, Landroidx/profileinstaller/c;

    move-object v14, v10

    .line 114
    new-instance v10, Ljava/lang/String;

    invoke-static {v0, v7}, Landroidx/profileinstaller/d;->b(Ljava/io/InputStream;I)[B

    move-result-object v7

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v7, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    long-to-int v7, v8

    long-to-int v15, v5

    .line 1099
    new-array v5, v13, [I

    new-instance v17, Ljava/util/TreeMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v9, p1

    move-object/from16 v16, v5

    move-object v8, v14

    move v14, v7

    invoke-direct/range {v8 .. v17}, Landroidx/profileinstaller/c;-><init>(Ljava/lang/String;Ljava/lang/String;JIII[ILjava/util/TreeMap;)V

    move-object v14, v8

    aput-object v14, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_e

    .line 1113
    aget-object v6, v2, v4

    .line 1133
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v7

    iget v8, v6, Landroidx/profileinstaller/c;->f:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    .line 1137
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v9

    iget-object v10, v6, Landroidx/profileinstaller/c;->i:Ljava/util/TreeMap;

    const/4 v11, 0x7

    if-le v9, v7, :cond_7

    .line 106
    invoke-static {v0, v5}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v12

    long-to-int v9, v12

    add-int/2addr v8, v9

    .line 1143
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v9, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {v0, v5}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v9

    long-to-int v10, v9

    :goto_2
    if-lez v10, :cond_2

    .line 106
    invoke-static {v0, v5}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    .line 102
    invoke-static {v0, v12}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v13

    long-to-int v9, v13

    const/4 v13, 0x6

    if-ne v9, v13, :cond_3

    goto :goto_5

    :cond_3
    if-ne v9, v11, :cond_4

    goto :goto_5

    :cond_4
    :goto_3
    if-lez v9, :cond_6

    .line 102
    invoke-static {v0, v12}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    .line 102
    invoke-static {v0, v12}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    move-result-wide v13

    long-to-int v14, v13

    :goto_4
    if-lez v14, :cond_5

    .line 106
    invoke-static {v0, v5}, Landroidx/profileinstaller/d;->d(Ljava/io/InputStream;I)J

    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_6
    :goto_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 1156
    :cond_7
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v8

    if-ne v8, v7, :cond_d

    .line 1118
    iget v7, v6, Landroidx/profileinstaller/c;->e:I

    invoke-static {v0, v7}, Landroidx/profileinstaller/h;->c(Ljava/io/ByteArrayInputStream;I)[I

    move-result-object v7

    iput-object v7, v6, Landroidx/profileinstaller/c;->h:[I

    .line 1208
    iget v6, v6, Landroidx/profileinstaller/c;->g:I

    mul-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v11

    and-int/lit8 v7, v7, -0x8

    .line 75
    div-int/lit8 v7, v7, 0x8

    .line 1209
    invoke-static {v0, v7}, Landroidx/profileinstaller/d;->b(Ljava/io/InputStream;I)[B

    move-result-object v7

    .line 1210
    invoke-static {v7}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v7

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v6, :cond_c

    .line 1223
    invoke-virtual {v7, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x2

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    :goto_7
    add-int v11, v8, v6

    .line 1226
    invoke-virtual {v7, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_9

    or-int/lit8 v9, v9, 0x4

    :cond_9
    if-eqz v9, :cond_b

    .line 1214
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-nez v11, :cond_a

    .line 1215
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1216
    :cond_a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    or-int/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v12, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 196
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Read too much data during profile line parse"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1157
    throw v0

    :cond_e
    return-object v2
.end method

.method public static i(Ljava/io/ByteArrayOutputStream;[B[Landroidx/profileinstaller/c;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 98
    sget-object v3, Landroidx/profileinstaller/ProfileVersion;->a:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_b

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 288
    :try_start_0
    array-length v9, v2

    invoke-static {v4, v9}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x2

    .line 289
    :goto_0
    array-length v12, v2

    if-ge v10, v12, :cond_0

    .line 290
    aget-object v12, v2, v10

    .line 293
    iget-wide v13, v12, Landroidx/profileinstaller/c;->c:J

    .line 67
    invoke-static {v4, v13, v14, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 299
    iget-wide v13, v12, Landroidx/profileinstaller/c;->d:J

    .line 67
    invoke-static {v4, v13, v14, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 302
    iget v13, v12, Landroidx/profileinstaller/c;->g:I

    int-to-long v13, v13

    .line 67
    invoke-static {v4, v13, v14, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 304
    iget-object v13, v12, Landroidx/profileinstaller/c;->a:Ljava/lang/String;

    iget-object v12, v12, Landroidx/profileinstaller/c;->b:Ljava/lang/String;

    invoke-static {v13, v12, v3}, Landroidx/profileinstaller/h;->b(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v11, v11, 0xe

    .line 46
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    array-length v14, v14

    .line 311
    invoke-static {v4, v14}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    add-int/2addr v11, v14

    .line 71
    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :goto_1
    move-object v1, v0

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 315
    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 316
    array-length v10, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, ", does not match actual size "

    const-string v13, "Expected size "

    if-ne v11, v10, :cond_a

    .line 322
    :try_start_1
    new-instance v10, Landroidx/profileinstaller/i;

    sget-object v11, Landroidx/profileinstaller/e;->b:Landroidx/profileinstaller/e;

    invoke-direct {v10, v11, v3, v6}, Landroidx/profileinstaller/i;-><init>(Landroidx/profileinstaller/e;[BZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 239
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 336
    :goto_2
    :try_start_2
    array-length v11, v2

    if-ge v4, v11, :cond_2

    .line 337
    aget-object v11, v2, v4

    .line 340
    invoke-static {v3, v4}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    add-int/lit8 v10, v10, 0x4

    .line 343
    iget v14, v11, Landroidx/profileinstaller/c;->e:I

    invoke-static {v3, v14}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    .line 345
    iget v14, v11, Landroidx/profileinstaller/c;->e:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v10, v14

    .line 717
    iget-object v11, v11, Landroidx/profileinstaller/c;->h:[I

    array-length v14, v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_3
    if-ge v15, v14, :cond_1

    aget v17, v11, v15

    const/16 p1, 0x2

    sub-int v9, v17, v16

    .line 719
    invoke-static {v3, v9}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v17

    const/4 v9, 0x2

    goto :goto_3

    :cond_1
    const/16 p1, 0x2

    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x2

    goto :goto_2

    :goto_4
    move-object v1, v0

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_2
    const/16 p1, 0x2

    .line 348
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 349
    array-length v9, v4

    if-ne v10, v9, :cond_9

    .line 355
    new-instance v9, Landroidx/profileinstaller/i;

    sget-object v10, Landroidx/profileinstaller/e;->c:Landroidx/profileinstaller/e;

    invoke-direct {v9, v10, v4, v7}, Landroidx/profileinstaller/i;-><init>(Landroidx/profileinstaller/e;[BZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 361
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 240
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 369
    :goto_5
    :try_start_3
    array-length v10, v2

    if-ge v4, v10, :cond_4

    .line 370
    aget-object v10, v2, v4

    .line 427
    iget-object v11, v10, Landroidx/profileinstaller/c;->i:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v14, 0x0

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 428
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    or-int/2addr v14, v15

    goto :goto_6

    .line 410
    :cond_3
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 411
    :try_start_4
    invoke-static {v11, v10}, Landroidx/profileinstaller/h;->k(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V

    .line 412
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 413
    :try_start_5
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 419
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 420
    :try_start_6
    invoke-static {v11, v10}, Landroidx/profileinstaller/h;->l(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V

    .line 421
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 422
    :try_start_7
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 379
    invoke-static {v3, v4}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    .line 381
    array-length v11, v15

    add-int/lit8 v11, v11, 0x2

    array-length v6, v10

    add-int/2addr v11, v6

    add-int/lit8 v9, v9, 0x6

    move-object/from16 v17, v8

    int-to-long v7, v11

    .line 67
    invoke-static {v3, v7, v8, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 386
    invoke-static {v3, v14}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    .line 387
    invoke-virtual {v3, v15}, Ljava/io/OutputStream;->write([B)V

    .line 388
    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    add-int/2addr v9, v11

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v8, v17

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_d

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 419
    :try_start_8
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    :try_start_9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 410
    :try_start_a
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception v0

    :try_start_b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v1

    :cond_4
    move-object/from16 v17, v8

    .line 391
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 392
    array-length v4, v2

    if-ne v9, v4, :cond_8

    .line 398
    new-instance v4, Landroidx/profileinstaller/i;

    sget-object v7, Landroidx/profileinstaller/e;->d:Landroidx/profileinstaller/e;

    const/4 v6, 0x1

    invoke-direct {v4, v7, v2, v6}, Landroidx/profileinstaller/i;-><init>(Landroidx/profileinstaller/e;[BZ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 404
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 241
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-long v2, v5

    add-long/2addr v2, v2

    const-wide/16 v7, 0x4

    add-long/2addr v2, v7

    .line 248
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    int-to-long v7, v4

    add-long/2addr v2, v7

    .line 249
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v7, v4

    .line 67
    invoke-static {v0, v7, v8, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    const/4 v4, 0x0

    .line 250
    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    .line 251
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/profileinstaller/i;

    .line 253
    iget-object v8, v7, Landroidx/profileinstaller/i;->a:Landroidx/profileinstaller/e;

    invoke-virtual {v8}, Landroidx/profileinstaller/e;->getValue()J

    move-result-wide v8

    .line 67
    invoke-static {v0, v8, v9, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 67
    invoke-static {v0, v2, v3, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 257
    iget-object v8, v7, Landroidx/profileinstaller/i;->b:[B

    iget-boolean v7, v7, Landroidx/profileinstaller/i;->c:Z

    if-eqz v7, :cond_5

    .line 258
    array-length v7, v8

    int-to-long v9, v7

    .line 259
    invoke-static {v8}, Landroidx/profileinstaller/d;->a([B)[B

    move-result-object v7

    move-object/from16 v11, v17

    .line 260
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    array-length v8, v7

    int-to-long v12, v8

    .line 67
    invoke-static {v0, v12, v13, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 67
    invoke-static {v0, v9, v10, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 265
    array-length v7, v7

    :goto_a
    int-to-long v7, v7

    add-long/2addr v2, v7

    goto :goto_b

    :cond_5
    move-object/from16 v11, v17

    .line 267
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    array-length v7, v8

    int-to-long v9, v7

    .line 67
    invoke-static {v0, v9, v10, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    const-wide/16 v9, 0x0

    .line 67
    invoke-static {v0, v9, v10, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 272
    array-length v7, v8

    goto :goto_a

    :goto_b
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v17, v11

    goto :goto_9

    :cond_6
    move-object/from16 v11, v17

    const/4 v1, 0x0

    .line 276
    :goto_c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 277
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_7
    const/4 v6, 0x1

    goto/16 :goto_1a

    .line 393
    :cond_8
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 393
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 368
    :goto_d
    :try_start_d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_e

    :catchall_7
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v1

    .line 350
    :cond_9
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 350
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 335
    :goto_f
    :try_start_f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_10

    :catchall_8
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10
    throw v1

    .line 317
    :cond_a
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 317
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 285
    :goto_11
    :try_start_11
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_12

    :catchall_9
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw v1

    .line 103
    :cond_b
    sget-object v3, Landroidx/profileinstaller/ProfileVersion;->b:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 473
    invoke-static {v2, v3}, Landroidx/profileinstaller/h;->a([Landroidx/profileinstaller/c;[B)[B

    move-result-object v1

    .line 474
    array-length v2, v2

    int-to-long v2, v2

    const/4 v6, 0x1

    .line 59
    invoke-static {v0, v2, v3, v6}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 170
    array-length v2, v1

    int-to-long v2, v2

    .line 67
    invoke-static {v0, v2, v3, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 171
    invoke-static {v1}, Landroidx/profileinstaller/d;->a([B)[B

    move-result-object v1

    .line 172
    array-length v2, v1

    int-to-long v2, v2

    .line 67
    invoke-static {v0, v2, v3, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 173
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :goto_13
    const/4 v6, 0x1

    return v6

    :cond_c
    const/4 v6, 0x1

    .line 108
    sget-object v3, Landroidx/profileinstaller/ProfileVersion;->d:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 521
    array-length v1, v2

    int-to-long v7, v1

    .line 59
    invoke-static {v0, v7, v8, v6}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 522
    array-length v1, v2

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v1, :cond_7

    aget-object v7, v2, v4

    .line 523
    iget-object v8, v7, Landroidx/profileinstaller/c;->i:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    .line 526
    iget-object v9, v7, Landroidx/profileinstaller/c;->b:Ljava/lang/String;

    iget-object v10, v7, Landroidx/profileinstaller/c;->a:Ljava/lang/String;

    invoke-static {v10, v9, v3}, Landroidx/profileinstaller/h;->b(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v9

    .line 46
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    .line 527
    invoke-static {v0, v11}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    .line 528
    iget-object v11, v7, Landroidx/profileinstaller/c;->h:[I

    array-length v11, v11

    invoke-static {v0, v11}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    int-to-long v11, v8

    .line 67
    invoke-static {v0, v11, v12, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 67
    iget-wide v11, v7, Landroidx/profileinstaller/c;->c:J

    invoke-static {v0, v11, v12, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 71
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 533
    iget-object v8, v7, Landroidx/profileinstaller/c;->i:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 534
    invoke-static {v0, v9}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    const/4 v9, 0x0

    .line 536
    invoke-static {v0, v9}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    goto :goto_15

    .line 539
    :cond_d
    iget-object v7, v7, Landroidx/profileinstaller/c;->h:[I

    array-length v8, v7

    const/4 v9, 0x0

    :goto_16
    if-ge v9, v8, :cond_e

    aget v10, v7, v9

    .line 540
    invoke-static {v0, v10}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 113
    :cond_f
    sget-object v3, Landroidx/profileinstaller/ProfileVersion;->c:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 482
    invoke-static {v2, v3}, Landroidx/profileinstaller/h;->a([Landroidx/profileinstaller/c;[B)[B

    move-result-object v1

    .line 483
    array-length v2, v2

    int-to-long v2, v2

    const/4 v6, 0x1

    .line 59
    invoke-static {v0, v2, v3, v6}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 170
    array-length v2, v1

    int-to-long v2, v2

    .line 67
    invoke-static {v0, v2, v3, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 171
    invoke-static {v1}, Landroidx/profileinstaller/d;->a([B)[B

    move-result-object v1

    .line 172
    array-length v2, v1

    int-to-long v2, v2

    .line 67
    invoke-static {v0, v2, v3, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 173
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_13

    .line 118
    :cond_10
    sget-object v3, Landroidx/profileinstaller/ProfileVersion;->e:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 145
    array-length v1, v2

    invoke-static {v0, v1}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    .line 146
    array-length v1, v2

    const/4 v9, 0x0

    :goto_17
    if-ge v9, v1, :cond_7

    aget-object v4, v2, v9

    .line 147
    iget-object v7, v4, Landroidx/profileinstaller/c;->a:Ljava/lang/String;

    iget-object v8, v4, Landroidx/profileinstaller/c;->b:Ljava/lang/String;

    invoke-static {v7, v8, v3}, Landroidx/profileinstaller/h;->b(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v7

    .line 46
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    .line 148
    invoke-static {v0, v10}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    .line 149
    iget-object v10, v4, Landroidx/profileinstaller/c;->i:Ljava/util/TreeMap;

    invoke-virtual {v10}, Ljava/util/TreeMap;->size()I

    move-result v11

    invoke-static {v0, v11}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    .line 150
    iget-object v11, v4, Landroidx/profileinstaller/c;->h:[I

    array-length v11, v11

    invoke-static {v0, v11}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    .line 67
    iget-wide v11, v4, Landroidx/profileinstaller/c;->c:J

    invoke-static {v0, v11, v12, v5}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 71
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    .line 154
    invoke-virtual {v10}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 155
    invoke-static {v0, v8}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    goto :goto_18

    .line 158
    :cond_11
    iget-object v4, v4, Landroidx/profileinstaller/c;->h:[I

    array-length v7, v4

    const/4 v8, 0x0

    :goto_19
    if-ge v8, v7, :cond_12

    aget v10, v4, v8

    .line 159
    invoke-static {v0, v10}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :goto_1a
    return v6

    :cond_13
    const/16 v16, 0x0

    return v16
.end method

.method public static j(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;Ljava/lang/String;)V
    .locals 4

    .line 46
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    .line 651
    invoke-static {p0, v1}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    .line 652
    iget v1, p1, Landroidx/profileinstaller/c;->e:I

    invoke-static {p0, v1}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    .line 653
    iget v1, p1, Landroidx/profileinstaller/c;->f:I

    int-to-long v1, v1

    const/4 v3, 0x4

    .line 67
    invoke-static {p0, v1, v2, v3}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 67
    iget-wide v1, p1, Landroidx/profileinstaller/c;->c:J

    invoke-static {p0, v1, v2, v3}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 655
    iget p1, p1, Landroidx/profileinstaller/c;->g:I

    int-to-long v1, p1

    .line 67
    invoke-static {p0, v1, v2, v3}, Landroidx/profileinstaller/d;->e(Ljava/io/ByteArrayOutputStream;JI)V

    .line 71
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static k(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V
    .locals 8

    .line 733
    iget v0, p1, Landroidx/profileinstaller/c;->g:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, -0x8

    .line 613
    div-int/lit8 v0, v0, 0x8

    .line 733
    new-array v0, v0, [B

    .line 734
    iget-object v1, p1, Landroidx/profileinstaller/c;->i:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 735
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 736
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v4, v2, 0x2

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 635
    div-int/lit8 v4, v3, 0x8

    .line 636
    aget-byte v6, v0, v4

    rem-int/lit8 v7, v3, 0x8

    shl-int v7, v5, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .line 637
    aput-byte v6, v0, v4

    :cond_1
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 1241
    iget v2, p1, Landroidx/profileinstaller/c;->g:I

    add-int/2addr v3, v2

    .line 635
    div-int/lit8 v2, v3, 0x8

    .line 636
    aget-byte v4, v0, v2

    rem-int/lit8 v3, v3, 0x8

    shl-int v3, v5, v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 637
    aput-byte v3, v0, v2

    goto :goto_0

    .line 746
    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static l(Ljava/io/ByteArrayOutputStream;Landroidx/profileinstaller/c;)V
    .locals 4

    .line 689
    iget-object p1, p1, Landroidx/profileinstaller/c;->i:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 690
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 691
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int v1, v3, v1

    .line 696
    invoke-static {p0, v1}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    .line 697
    invoke-static {p0, v0}, Landroidx/profileinstaller/d;->f(Ljava/io/ByteArrayOutputStream;I)V

    move v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.class public final Lkotlin/io/encoding/Base64Kt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "",
        "symbol",
        "",
        "isInMimeAlphabet",
        "(I)Z",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBase64.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Base64.kt\nkotlin/io/encoding/Base64Kt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,826:1\n13477#2,3:827\n13477#2,3:830\n*S KotlinDebug\n*F\n+ 1 Base64.kt\nkotlin/io/encoding/Base64Kt\n*L\n762#1:827,3\n779#1:830,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:[B

.field public static final b:[I

.field public static final c:[B

.field public static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x40

    .line 755
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 751
    sput-object v1, Lkotlin/io/encoding/Base64Kt;->a:[B

    const/16 v2, 0x100

    .line 759
    new-array v3, v2, [I

    .line 760
    invoke-static {v3}, Lkotlin/collections/ArraysKt;->e([I)V

    const/16 v4, 0x3d

    const/4 v5, -0x2

    .line 761
    aput v5, v3, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v0, :cond_0

    .line 828
    aget-byte v9, v1, v7

    add-int/lit8 v10, v8, 0x1

    .line 763
    aput v8, v3, v9

    add-int/lit8 v7, v7, 0x1

    move v8, v10

    goto :goto_0

    .line 759
    :cond_0
    sput-object v3, Lkotlin/io/encoding/Base64Kt;->b:[I

    .line 772
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    .line 768
    sput-object v1, Lkotlin/io/encoding/Base64Kt;->c:[B

    .line 776
    new-array v2, v2, [I

    .line 777
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->e([I)V

    .line 778
    aput v5, v2, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v6, v0, :cond_1

    .line 831
    aget-byte v4, v1, v6

    add-int/lit8 v5, v3, 0x1

    .line 780
    aput v3, v2, v4

    add-int/lit8 v6, v6, 0x1

    move v3, v5

    goto :goto_1

    .line 776
    :cond_1
    sput-object v2, Lkotlin/io/encoding/Base64Kt;->d:[I

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public static final synthetic access$getBase64DecodeMap$p()[I
    .locals 1

    .line 1
    sget-object v0, Lkotlin/io/encoding/Base64Kt;->b:[I

    return-object v0
.end method

.method public static final synthetic access$getBase64EncodeMap$p()[B
    .locals 1

    .line 1
    sget-object v0, Lkotlin/io/encoding/Base64Kt;->a:[B

    return-object v0
.end method

.method public static final synthetic access$getBase64UrlDecodeMap$p()[I
    .locals 1

    .line 1
    sget-object v0, Lkotlin/io/encoding/Base64Kt;->d:[I

    return-object v0
.end method

.method public static final synthetic access$getBase64UrlEncodeMap$p()[B
    .locals 1

    .line 1
    sget-object v0, Lkotlin/io/encoding/Base64Kt;->c:[B

    return-object v0
.end method

.method public static final isInMimeAlphabet(I)Z
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.8"
    .end annotation

    .annotation build Lkotlin/io/encoding/ExperimentalEncodingApi;
    .end annotation

    if-ltz p0, :cond_0

    .line 788
    sget-object v0, Lkotlin/io/encoding/Base64Kt;->b:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

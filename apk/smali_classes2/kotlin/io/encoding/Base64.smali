.class public Lkotlin/io/encoding/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/io/encoding/Base64$Default;,
        Lkotlin/io/encoding/Base64$PaddingOption;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0002\u0008\u0012\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0017\u0018\u0000 @2\u00020\u0001:\u0002A@J\u0017\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J)\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ;\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J)\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J?\u0010\u0017\u001a\u00028\u0000\"\u000c\u0008\u0000\u0010\u0016*\u00060\u0014j\u0002`\u00152\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00028\u00002\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J)\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0019\u0010\u000cJ;\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001a\u0010\u0010J)\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0019\u0010\u001cJ;\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001a\u0010\u001dJ\'\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u000cJ7\u0010!\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008 \u0010\u0010J\u0017\u0010%\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008#\u0010$J\'\u0010(\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008&\u0010\'J\'\u0010*\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u001b2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008)\u0010\u001cJ\u0017\u0010-\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0006H\u0000\u00a2\u0006\u0004\u0008+\u0010,J\'\u00101\u001a\u00020.2\u0006\u0010\"\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008/\u00100R\u001a\u00107\u001a\u0002028\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106R\u001a\u0010:\u001a\u0002028\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u00088\u00104\u001a\u0004\u00089\u00106R\u001a\u0010?\u001a\u00020\u00028\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\u00a8\u0006B"
    }
    d2 = {
        "Lkotlin/io/encoding/Base64;",
        "",
        "Lkotlin/io/encoding/Base64$PaddingOption;",
        "option",
        "withPadding",
        "(Lkotlin/io/encoding/Base64$PaddingOption;)Lkotlin/io/encoding/Base64;",
        "",
        "source",
        "",
        "startIndex",
        "endIndex",
        "encodeToByteArray",
        "([BII)[B",
        "destination",
        "destinationOffset",
        "encodeIntoByteArray",
        "([B[BIII)I",
        "",
        "encode",
        "([BII)Ljava/lang/String;",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "A",
        "encodeToAppendable",
        "([BLjava/lang/Appendable;II)Ljava/lang/Appendable;",
        "decode",
        "decodeIntoByteArray",
        "",
        "(Ljava/lang/CharSequence;II)[B",
        "(Ljava/lang/CharSequence;[BIII)I",
        "encodeToByteArrayImpl$kotlin_stdlib",
        "encodeToByteArrayImpl",
        "encodeIntoByteArrayImpl$kotlin_stdlib",
        "encodeIntoByteArrayImpl",
        "sourceSize",
        "encodeSize$kotlin_stdlib",
        "(I)I",
        "encodeSize",
        "decodeSize$kotlin_stdlib",
        "([BII)I",
        "decodeSize",
        "charsToBytesImpl$kotlin_stdlib",
        "charsToBytesImpl",
        "bytesToStringImpl$kotlin_stdlib",
        "([B)Ljava/lang/String;",
        "bytesToStringImpl",
        "",
        "checkSourceBounds$kotlin_stdlib",
        "(III)V",
        "checkSourceBounds",
        "",
        "a",
        "Z",
        "isUrlSafe$kotlin_stdlib",
        "()Z",
        "isUrlSafe",
        "b",
        "isMimeScheme$kotlin_stdlib",
        "isMimeScheme",
        "c",
        "Lkotlin/io/encoding/Base64$PaddingOption;",
        "getPaddingOption$kotlin_stdlib",
        "()Lkotlin/io/encoding/Base64$PaddingOption;",
        "paddingOption",
        "Default",
        "PaddingOption",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.8"
.end annotation

.annotation build Lkotlin/io/encoding/ExperimentalEncodingApi;
.end annotation


# static fields
.field public static final Default:Lkotlin/io/encoding/Base64$Default;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final bytesPerGroup:I = 0x3

.field public static final d:[B

.field public static final e:Lkotlin/io/encoding/Base64;

.field public static final f:Lkotlin/io/encoding/Base64;

.field public static final mimeLineLength:I = 0x4c

.field public static final padSymbol:B = 0x3dt

.field public static final symbolsPerGroup:I = 0x4


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Lkotlin/io/encoding/Base64$PaddingOption;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/io/encoding/Base64$Default;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/io/encoding/Base64$Default;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    const/4 v0, 0x2

    .line 711
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lkotlin/io/encoding/Base64;->d:[B

    .line 728
    new-instance v0, Lkotlin/io/encoding/Base64;

    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lkotlin/io/encoding/Base64;-><init>(ZZLkotlin/io/encoding/Base64$PaddingOption;)V

    sput-object v0, Lkotlin/io/encoding/Base64;->e:Lkotlin/io/encoding/Base64;

    .line 745
    new-instance v0, Lkotlin/io/encoding/Base64;

    invoke-direct {v0, v3, v2, v1}, Lkotlin/io/encoding/Base64;-><init>(ZZLkotlin/io/encoding/Base64$PaddingOption;)V

    sput-object v0, Lkotlin/io/encoding/Base64;->f:Lkotlin/io/encoding/Base64;

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(ZZLkotlin/io/encoding/Base64$PaddingOption;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean p1, p0, Lkotlin/io/encoding/Base64;->a:Z

    .line 59
    iput-boolean p2, p0, Lkotlin/io/encoding/Base64;->b:Z

    .line 60
    iput-object p3, p0, Lkotlin/io/encoding/Base64;->c:Lkotlin/io/encoding/Base64$PaddingOption;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(ZZLkotlin/io/encoding/Base64$PaddingOption;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;-><init>(ZZLkotlin/io/encoding/Base64$PaddingOption;)V

    return-void
.end method

.method public static a(III)V
    .locals 4

    .line 669
    const-string v0, ", destination size: "

    if-ltz p1, :cond_1

    if-gt p1, p0, :cond_1

    add-int v1, p1, p2

    if-ltz v1, :cond_0

    if-gt v1, p0, :cond_0

    return-void

    .line 675
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 676
    const-string v2, "The destination array does not have enough capacity, destination offset: "

    .line 677
    const-string v3, ", capacity needed: "

    .line 0
    invoke-static {p1, p0, v2, v0, v3}, L_COROUTINE/a;->n(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 676
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 675
    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 670
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "destination offset: "

    .line 0
    invoke-static {p1, p0, v1, v0}, L_COROUTINE/a;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 670
    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final synthetic access$getMime$cp()Lkotlin/io/encoding/Base64;
    .locals 1

    .line 55
    sget-object v0, Lkotlin/io/encoding/Base64;->f:Lkotlin/io/encoding/Base64;

    return-object v0
.end method

.method public static final synthetic access$getMimeLineSeparatorSymbols$cp()[B
    .locals 1

    .line 55
    sget-object v0, Lkotlin/io/encoding/Base64;->d:[B

    return-object v0
.end method

.method public static final synthetic access$getUrlSafe$cp()Lkotlin/io/encoding/Base64;
    .locals 1

    .line 55
    sget-object v0, Lkotlin/io/encoding/Base64;->e:Lkotlin/io/encoding/Base64;

    return-object v0
.end method

.method public static synthetic decode$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;IIILjava/lang/Object;)[B
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 349
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->decode(Ljava/lang/CharSequence;II)[B

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic decode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)[B
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 279
    array-length p3, p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->decode([BII)[B

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic decodeIntoByteArray$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;[BIIIILjava/lang/Object;)I
    .locals 1

    if-nez p7, :cond_3

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_1

    const/4 p4, 0x0

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    .line 383
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p5

    .line 378
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lkotlin/io/encoding/Base64;->decodeIntoByteArray(Ljava/lang/CharSequence;[BIII)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decodeIntoByteArray"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic decodeIntoByteArray$default(Lkotlin/io/encoding/Base64;[B[BIIIILjava/lang/Object;)I
    .locals 1

    if-nez p7, :cond_3

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_1

    const/4 p4, 0x0

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    .line 321
    array-length p5, p1

    .line 316
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lkotlin/io/encoding/Base64;->decodeIntoByteArray([B[BIII)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decodeIntoByteArray"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic encode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 226
    array-length p3, p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->encode([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: encode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic encodeIntoByteArray$default(Lkotlin/io/encoding/Base64;[B[BIIIILjava/lang/Object;)I
    .locals 1

    if-nez p7, :cond_3

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_1

    const/4 p4, 0x0

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    .line 202
    array-length p5, p1

    .line 197
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lkotlin/io/encoding/Base64;->encodeIntoByteArray([B[BIII)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: encodeIntoByteArray"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic encodeToAppendable$default(Lkotlin/io/encoding/Base64;[BLjava/lang/Appendable;IIILjava/lang/Object;)Ljava/lang/Appendable;
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 252
    array-length p4, p1

    .line 248
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/io/encoding/Base64;->encodeToAppendable([BLjava/lang/Appendable;II)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: encodeToAppendable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic encodeToByteArray$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)[B
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 172
    array-length p3, p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->encodeToByteArray([BII)[B

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: encodeToByteArray"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b([B[BIII)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 490
    iget-boolean v2, v0, Lkotlin/io/encoding/Base64;->a:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64UrlDecodeMap$p()[I

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64DecodeMap$p()[I

    move-result-object v2

    :goto_0
    const/4 v4, -0x8

    move/from16 v8, p3

    move/from16 v5, p4

    const/4 v6, -0x8

    const/4 v7, 0x0

    .line 497
    :goto_1
    iget-boolean v12, v0, Lkotlin/io/encoding/Base64;->b:Z

    iget-object v13, v0, Lkotlin/io/encoding/Base64;->c:Lkotlin/io/encoding/Base64$PaddingOption;

    const-string v15, ") at index "

    const-string v3, "toString(...)"

    const/16 p4, 0x8

    const-string v11, "\'("

    if-ge v5, v1, :cond_11

    if-ne v6, v4, :cond_1

    const/16 v17, 0x1

    add-int/lit8 v14, v5, 0x3

    if-ge v14, v1, :cond_2

    add-int/lit8 v18, v5, 0x1

    .line 499
    aget-byte v9, p1, v5

    and-int/lit16 v9, v9, 0xff

    aget v9, v2, v9

    add-int/lit8 v19, v5, 0x2

    .line 500
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    aget v4, v2, v4

    .line 501
    aget-byte v10, p1, v19

    and-int/lit16 v10, v10, 0xff

    aget v10, v2, v10

    add-int/lit8 v19, v5, 0x4

    .line 502
    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    aget v14, v2, v14

    shl-int/lit8 v9, v9, 0x12

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v4, v9

    shl-int/lit8 v9, v10, 0x6

    or-int/2addr v4, v9

    or-int/2addr v4, v14

    if-ltz v4, :cond_2

    add-int/lit8 v3, v8, 0x1

    shr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    .line 505
    aput-byte v5, p2, v8

    add-int/lit8 v5, v8, 0x2

    shr-int/lit8 v9, v4, 0x8

    int-to-byte v9, v9

    .line 506
    aput-byte v9, p2, v3

    add-int/lit8 v8, v8, 0x3

    int-to-byte v3, v4

    .line 507
    aput-byte v3, p2, v5

    move/from16 v5, v19

    :goto_2
    const/4 v4, -0x8

    goto :goto_1

    :cond_1
    const/16 v17, 0x1

    .line 513
    :cond_2
    aget-byte v4, p1, v5

    and-int/lit16 v4, v4, 0xff

    .line 514
    aget v9, v2, v4

    if-gez v9, :cond_f

    const/4 v10, -0x2

    if-ne v9, v10, :cond_d

    const/4 v9, -0x8

    if-eq v6, v9, :cond_c

    const/4 v2, -0x6

    .line 619
    const-string v4, "The padding option is set to ABSENT, but the input has a pad character at index "

    if-eq v6, v2, :cond_a

    const/4 v2, -0x4

    if-eq v6, v2, :cond_4

    if-ne v6, v10, :cond_3

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 634
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 637
    const-string v2, "Unreachable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 642
    :cond_4
    sget-object v2, Lkotlin/io/encoding/Base64$PaddingOption;->ABSENT:Lkotlin/io/encoding/Base64$PaddingOption;

    if-eq v13, v2, :cond_9

    add-int/lit8 v5, v5, 0x1

    if-nez v12, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    if-ge v5, v1, :cond_7

    .line 655
    aget-byte v2, p1, v5

    and-int/lit16 v2, v2, 0xff

    .line 656
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64DecodeMap$p()[I

    move-result-object v4

    aget v2, v4, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    if-eq v5, v1, :cond_8

    .line 627
    aget-byte v2, p1, v5

    const/16 v4, 0x3d

    if-ne v2, v4, :cond_8

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 628
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing one pad character at index "

    .line 0
    invoke-static {v5, v2}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 628
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 643
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 0
    invoke-static {v5, v4}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 643
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 642
    :cond_a
    sget-object v2, Lkotlin/io/encoding/Base64$PaddingOption;->ABSENT:Lkotlin/io/encoding/Base64$PaddingOption;

    if-eq v13, v2, :cond_b

    goto :goto_3

    :goto_6
    const/16 v16, 0x1

    :goto_7
    const/4 v10, -0x2

    goto :goto_8

    .line 643
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 0
    invoke-static {v5, v4}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 643
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 621
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Redundant pad character at index "

    .line 0
    invoke-static {v5, v2}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 621
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    if-eqz v12, :cond_e

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 524
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Invalid symbol \'"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v6, v4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    add-int/lit8 v5, v5, 0x1

    shl-int/lit8 v3, v7, 0x6

    or-int v7, v3, v9

    add-int/lit8 v9, v6, 0x6

    if-ltz v9, :cond_10

    add-int/lit8 v3, v8, 0x1

    ushr-int v4, v7, v9

    int-to-byte v4, v4

    .line 534
    aput-byte v4, p2, v8

    shl-int v4, v17, v9

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v7, v4

    add-int/lit8 v6, v6, -0x2

    move v8, v3

    goto/16 :goto_2

    :cond_10
    move v6, v9

    goto/16 :goto_2

    :cond_11
    const/16 v17, 0x1

    const/16 v16, 0x0

    goto :goto_7

    :goto_8
    if-eq v6, v10, :cond_19

    const/4 v9, -0x8

    if-eq v6, v9, :cond_13

    if-nez v16, :cond_13

    .line 546
    sget-object v2, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    if-eq v13, v2, :cond_12

    goto :goto_9

    .line 547
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The padding option is set to PRESENT, but the input is not properly padded"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    :goto_9
    if-nez v7, :cond_18

    if-nez v12, :cond_14

    goto :goto_b

    :cond_14
    :goto_a
    if-ge v5, v1, :cond_16

    .line 655
    aget-byte v2, p1, v5

    and-int/lit16 v2, v2, 0xff

    .line 656
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64DecodeMap$p()[I

    move-result-object v4

    aget v2, v4, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_15

    goto :goto_b

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_16
    :goto_b
    if-lt v5, v1, :cond_17

    sub-int v8, v8, p3

    return v8

    .line 555
    :cond_17
    aget-byte v1, p1, v5

    and-int/lit16 v1, v1, 0xff

    .line 556
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Symbol \'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is prohibited after the pad character"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 550
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The pad bits must be zeros"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 544
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The last unit of input does not have enough bits"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final bytesToStringImpl$kotlin_stdlib([B)Ljava/lang/String;
    .locals 4
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 612
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    int-to-char v3, v3

    .line 613
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 615
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final charsToBytesImpl$kotlin_stdlib(Ljava/lang/CharSequence;II)[B
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    sub-int v0, p3, p2

    .line 595
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 598
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xff

    if-gt v2, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    .line 600
    aput-byte v2, v0, v1

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x3f

    .line 604
    aput-byte v3, v0, v1

    move v1, v2

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final checkSourceBounds$kotlin_stdlib(III)V
    .locals 1

    .line 665
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {v0, p2, p3, p1}, Lkotlin/collections/AbstractList$Companion;->checkBoundsIndexes$kotlin_stdlib(III)V

    return-void
.end method

.method public final decode(Ljava/lang/CharSequence;II)[B
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "substring(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string p3, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "getBytes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->charsToBytesImpl$kotlin_stdlib(Ljava/lang/CharSequence;II)[B

    move-result-object p1

    goto :goto_0

    :goto_1
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 351
    invoke-static/range {v0 .. v5}, Lkotlin/io/encoding/Base64;->decode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public final decode([BII)[B
    .locals 7
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    array-length v0, p1

    invoke-virtual {p0, v0, p2, p3}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 282
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->decodeSize$kotlin_stdlib([BII)I

    move-result v0

    .line 283
    new-array v3, v0, [B

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    .line 285
    invoke-virtual/range {v1 .. v6}, Lkotlin/io/encoding/Base64;->b([B[BIII)I

    move-result p1

    if-ne p1, v0, :cond_0

    return-object v3

    .line 287
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final decodeIntoByteArray(Ljava/lang/CharSequence;[BIII)I
    .locals 8
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0, p4, p5}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    invoke-virtual {p1, p4, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p4, "substring(...)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string p5, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p4, "getBytes(...)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p4, p5}, Lkotlin/io/encoding/Base64;->charsToBytesImpl$kotlin_stdlib(Ljava/lang/CharSequence;II)[B

    move-result-object p1

    goto :goto_0

    :goto_1
    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    .line 386
    invoke-static/range {v0 .. v7}, Lkotlin/io/encoding/Base64;->decodeIntoByteArray$default(Lkotlin/io/encoding/Base64;[B[BIIIILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final decodeIntoByteArray([B[BIII)I
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    array-length v0, p1

    invoke-virtual {p0, v0, p4, p5}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 324
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p5}, Lkotlin/io/encoding/Base64;->decodeSize$kotlin_stdlib([BII)I

    move-result v1

    invoke-static {v0, p3, v1}, Lkotlin/io/encoding/Base64;->a(III)V

    .line 326
    invoke-virtual/range {p0 .. p5}, Lkotlin/io/encoding/Base64;->b([B[BIII)I

    move-result p1

    return p1
.end method

.method public final decodeSize$kotlin_stdlib([BII)I
    .locals 3
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int v0, p3, p2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 571
    iget-boolean v1, p0, Lkotlin/io/encoding/Base64;->b:Z

    if-eqz v1, :cond_3

    :goto_0
    if-ge p2, p3, :cond_5

    .line 573
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    .line 574
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64DecodeMap$p()[I

    move-result-object v2

    aget v1, v2, v1

    if-gez v1, :cond_2

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    sub-int/2addr p3, p2

    sub-int/2addr v0, p3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 p2, p3, -0x1

    .line 583
    aget-byte p2, p1, p2

    const/16 v1, 0x3d

    if-ne p2, v1, :cond_5

    add-int/lit8 p2, v0, -0x1

    add-int/lit8 p3, p3, -0x2

    .line 585
    aget-byte p1, p1, p3

    if-ne p1, v1, :cond_4

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_4
    move v0, p2

    :cond_5
    :goto_1
    int-to-long p1, v0

    const/4 p3, 0x6

    int-to-long v0, p3

    mul-long p1, p1, v0

    const/16 p3, 0x8

    int-to-long v0, p3

    .line 589
    div-long/2addr p1, v0

    long-to-int p2, p1

    return p2

    .line 569
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input should have at least 2 symbols for Base64 decoding, startIndex: "

    const-string v1, ", endIndex: "

    .line 0
    invoke-static {p2, p3, v0, v1}, L_COROUTINE/a;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 569
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final encode([BII)Ljava/lang/String;
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->encodeToByteArrayImpl$kotlin_stdlib([BII)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    sget-object p3, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2
.end method

.method public final encodeIntoByteArray([B[BIII)I
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p0 .. p5}, Lkotlin/io/encoding/Base64;->encodeIntoByteArrayImpl$kotlin_stdlib([B[BIII)I

    move-result p1

    return p1
.end method

.method public final encodeIntoByteArrayImpl$kotlin_stdlib([B[BIII)I
    .locals 17
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    const-string v6, "source"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "destination"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    array-length v6, v1

    invoke-virtual {v0, v6, v4, v5}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 408
    array-length v6, v2

    sub-int v7, v5, v4

    invoke-virtual {v0, v7}, Lkotlin/io/encoding/Base64;->encodeSize$kotlin_stdlib(I)I

    move-result v7

    invoke-static {v6, v3, v7}, Lkotlin/io/encoding/Base64;->a(III)V

    .line 410
    iget-boolean v6, v0, Lkotlin/io/encoding/Base64;->a:Z

    if-eqz v6, :cond_0

    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64UrlEncodeMap$p()[B

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64EncodeMap$p()[B

    move-result-object v6

    .line 413
    :goto_0
    iget-boolean v7, v0, Lkotlin/io/encoding/Base64;->b:Z

    if-eqz v7, :cond_1

    const/16 v7, 0x13

    goto :goto_1

    :cond_1
    const v7, 0x7fffffff

    :goto_1
    move v8, v3

    :cond_2
    :goto_2
    add-int/lit8 v9, v4, 0x2

    const/4 v10, 0x1

    if-ge v9, v5, :cond_4

    sub-int v9, v5, v4

    .line 416
    div-int/lit8 v9, v9, 0x3

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v9, :cond_3

    add-int/lit8 v13, v4, 0x1

    .line 418
    aget-byte v14, v1, v4

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v15, v4, 0x2

    .line 419
    aget-byte v13, v1, v13

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v4, v4, 0x3

    .line 420
    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v14, v14, 0x10

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v13, v14

    or-int/2addr v13, v15

    add-int/lit8 v14, v8, 0x1

    ushr-int/lit8 v15, v13, 0x12

    .line 422
    aget-byte v15, v6, v15

    aput-byte v15, v2, v8

    add-int/lit8 v15, v8, 0x2

    ushr-int/lit8 v16, v13, 0xc

    and-int/lit8 v16, v16, 0x3f

    .line 423
    aget-byte v16, v6, v16

    aput-byte v16, v2, v14

    add-int/lit8 v14, v8, 0x3

    ushr-int/lit8 v16, v13, 0x6

    and-int/lit8 v16, v16, 0x3f

    .line 424
    aget-byte v16, v6, v16

    aput-byte v16, v2, v15

    add-int/lit8 v8, v8, 0x4

    and-int/lit8 v13, v13, 0x3f

    .line 425
    aget-byte v13, v6, v13

    aput-byte v13, v2, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    if-ne v9, v7, :cond_2

    if-eq v4, v5, :cond_2

    add-int/lit8 v9, v8, 0x1

    .line 428
    sget-object v12, Lkotlin/io/encoding/Base64;->d:[B

    aget-byte v11, v12, v11

    aput-byte v11, v2, v8

    add-int/lit8 v8, v8, 0x2

    .line 429
    aget-byte v10, v12, v10

    aput-byte v10, v2, v9

    goto :goto_2

    :cond_4
    sub-int v7, v5, v4

    .line 433
    iget-object v11, v0, Lkotlin/io/encoding/Base64;->c:Lkotlin/io/encoding/Base64$PaddingOption;

    const/16 v12, 0x3d

    if-eq v7, v10, :cond_8

    const/4 v10, 0x2

    if-eq v7, v10, :cond_5

    goto/16 :goto_7

    :cond_5
    add-int/lit8 v7, v4, 0x1

    .line 445
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    .line 446
    aget-byte v1, v1, v7

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v4, v4, 0xa

    shl-int/2addr v1, v10

    or-int/2addr v1, v4

    add-int/lit8 v4, v8, 0x1

    ushr-int/lit8 v7, v1, 0xc

    .line 448
    aget-byte v7, v6, v7

    aput-byte v7, v2, v8

    add-int/lit8 v7, v8, 0x2

    ushr-int/lit8 v10, v1, 0x6

    and-int/lit8 v10, v10, 0x3f

    .line 449
    aget-byte v10, v6, v10

    aput-byte v10, v2, v4

    add-int/lit8 v4, v8, 0x3

    and-int/lit8 v1, v1, 0x3f

    .line 450
    aget-byte v1, v6, v1

    aput-byte v1, v2, v7

    .line 481
    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    if-eq v11, v1, :cond_7

    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;

    if-ne v11, v1, :cond_6

    goto :goto_5

    :cond_6
    move v8, v4

    :goto_4
    move v4, v9

    goto :goto_7

    :cond_7
    :goto_5
    add-int/lit8 v8, v8, 0x4

    .line 452
    aput-byte v12, v2, v4

    goto :goto_4

    :cond_8
    add-int/lit8 v7, v4, 0x1

    .line 435
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v4, v8, 0x1

    ushr-int/lit8 v9, v1, 0x6

    .line 437
    aget-byte v9, v6, v9

    aput-byte v9, v2, v8

    add-int/lit8 v9, v8, 0x2

    and-int/lit8 v1, v1, 0x3f

    .line 438
    aget-byte v1, v6, v1

    aput-byte v1, v2, v4

    .line 481
    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    if-eq v11, v1, :cond_a

    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;

    if-ne v11, v1, :cond_9

    goto :goto_6

    :cond_9
    move v4, v7

    move v8, v9

    goto :goto_7

    :cond_a
    :goto_6
    add-int/lit8 v1, v8, 0x3

    .line 440
    aput-byte v12, v2, v9

    add-int/lit8 v8, v8, 0x4

    .line 441
    aput-byte v12, v2, v1

    move v4, v7

    :goto_7
    if-ne v4, v5, :cond_b

    sub-int/2addr v8, v3

    return v8

    .line 457
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final encodeSize$kotlin_stdlib(I)I
    .locals 4

    .line 465
    div-int/lit8 v0, p1, 0x3

    .line 466
    rem-int/lit8 p1, p1, 0x3

    const/4 v1, 0x4

    mul-int/lit8 v0, v0, 0x4

    if-eqz p1, :cond_2

    .line 481
    sget-object v2, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    iget-object v3, p0, Lkotlin/io/encoding/Base64;->c:Lkotlin/io/encoding/Base64$PaddingOption;

    if-eq v3, v2, :cond_1

    sget-object v2, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    :cond_1
    :goto_0
    add-int/2addr v0, v1

    .line 471
    :cond_2
    iget-boolean p1, p0, Lkotlin/io/encoding/Base64;->b:Z

    if-eqz p1, :cond_3

    add-int/lit8 p1, v0, -0x1

    .line 472
    div-int/lit8 p1, p1, 0x4c

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    :cond_3
    if-ltz v0, :cond_4

    return v0

    .line 475
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input is too big"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final encodeToAppendable([BLjava/lang/Appendable;II)Ljava/lang/Appendable;
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Appendable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">([BTA;II)TA;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, p1, p3, p4}, Lkotlin/io/encoding/Base64;->encodeToByteArrayImpl$kotlin_stdlib([BII)[B

    move-result-object p1

    new-instance p3, Ljava/lang/String;

    sget-object p4, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p3, p1, p4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 255
    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-object p2
.end method

.method public final encodeToByteArray([BII)[B
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->encodeToByteArrayImpl$kotlin_stdlib([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public final encodeToByteArrayImpl$kotlin_stdlib([BII)[B
    .locals 7
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    array-length v0, p1

    invoke-virtual {p0, v0, p2, p3}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    sub-int v0, p3, p2

    .line 394
    invoke-virtual {p0, v0}, Lkotlin/io/encoding/Base64;->encodeSize$kotlin_stdlib(I)I

    move-result v0

    .line 395
    new-array v3, v0, [B

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    .line 396
    invoke-virtual/range {v1 .. v6}, Lkotlin/io/encoding/Base64;->encodeIntoByteArrayImpl$kotlin_stdlib([B[BIII)I

    return-object v3
.end method

.method public final getPaddingOption$kotlin_stdlib()Lkotlin/io/encoding/Base64$PaddingOption;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 60
    iget-object v0, p0, Lkotlin/io/encoding/Base64;->c:Lkotlin/io/encoding/Base64$PaddingOption;

    return-object v0
.end method

.method public final isMimeScheme$kotlin_stdlib()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lkotlin/io/encoding/Base64;->b:Z

    return v0
.end method

.method public final isUrlSafe$kotlin_stdlib()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lkotlin/io/encoding/Base64;->a:Z

    return v0
.end method

.method public final withPadding(Lkotlin/io/encoding/Base64$PaddingOption;)Lkotlin/io/encoding/Base64;
    .locals 3
    .param p1    # Lkotlin/io/encoding/Base64$PaddingOption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "2.0"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lkotlin/io/encoding/Base64;->c:Lkotlin/io/encoding/Base64$PaddingOption;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 148
    :cond_0
    new-instance v0, Lkotlin/io/encoding/Base64;

    iget-boolean v1, p0, Lkotlin/io/encoding/Base64;->a:Z

    iget-boolean v2, p0, Lkotlin/io/encoding/Base64;->b:Z

    invoke-direct {v0, v1, v2, p1}, Lkotlin/io/encoding/Base64;-><init>(ZZLkotlin/io/encoding/Base64$PaddingOption;)V

    return-object v0
.end method

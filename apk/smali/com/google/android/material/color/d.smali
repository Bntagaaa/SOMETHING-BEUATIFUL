.class final Lcom/google/android/material/color/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/d$b;,
        Lcom/google/android/material/color/d$d;,
        Lcom/google/android/material/color/d$f;,
        Lcom/google/android/material/color/d$j;,
        Lcom/google/android/material/color/d$k;,
        Lcom/google/android/material/color/d$c;,
        Lcom/google/android/material/color/d$i;,
        Lcom/google/android/material/color/d$h;,
        Lcom/google/android/material/color/d$e;,
        Lcom/google/android/material/color/d$g;
    }
.end annotation


# static fields
.field public static a:B

.field public static final b:Lcom/google/android/material/color/d$d;

.field public static final c:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Lcom/google/android/material/color/d$d;

    const/4 v1, 0x1

    const-string v2, "android"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/color/d$d;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/material/color/d;->b:Lcom/google/android/material/color/d$d;

    .line 59
    new-instance v0, Lcom/google/android/material/color/d$a;

    invoke-direct {v0}, Lcom/google/android/material/color/d$a;-><init>()V

    sput-object v0, Lcom/google/android/material/color/d;->c:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)[B
    .locals 5

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v3, 0x4

    .line 588
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p0, v3, v0

    return-object v3
.end method

.method public static b(C)[B
    .locals 3

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x2

    .line 582
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p0, v1, v0

    return-object v1
.end method

.method public static c(Landroid/content/Context;Ljava/util/HashMap;)[B
    .locals 13

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 68
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 71
    new-instance v5, Lcom/google/android/material/color/d$d;

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x7f

    invoke-direct {v5, v7, v6}, Lcom/google/android/material/color/d$d;-><init>(ILjava/lang/String;)V

    .line 74
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 76
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v8, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 77
    new-instance v9, Lcom/google/android/material/color/d$b;

    .line 79
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v11

    .line 81
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v9, v10, v12, v11}, Lcom/google/android/material/color/d$b;-><init>(IILjava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 84
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "color"

    .line 85
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 93
    iget-byte v8, v9, Lcom/google/android/material/color/d$b;->a:B

    if-ne v8, v4, :cond_0

    .line 94
    sget-object v8, Lcom/google/android/material/color/d;->b:Lcom/google/android/material/color/d$d;

    goto :goto_1

    :cond_0
    if-ne v8, v7, :cond_2

    move-object v8, v5

    .line 101
    :goto_1
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 102
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_1
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v9

    goto :goto_0

    .line 98
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not supported with unknown package id: "

    .line 0
    invoke-static {v8, p1}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non color resource found: name="

    .line 88
    const-string v0, ", typeId="

    .line 0
    invoke-static {p1, v11, v0}, L_COROUTINE/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 90
    iget-byte v0, v9, Lcom/google/android/material/color/d$b;->b:B

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 556
    :cond_4
    iget-byte p0, v8, Lcom/google/android/material/color/d$b;->b:B

    .line 109
    sput-byte p0, Lcom/google/android/material/color/d;->a:B

    if-eqz p0, :cond_b

    .line 113
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 114
    new-instance p1, Lcom/google/android/material/color/d$g;

    invoke-direct {p1, v6}, Lcom/google/android/material/color/d$g;-><init>(Ljava/util/HashMap;)V

    .line 146
    iget-object v5, p1, Lcom/google/android/material/color/d$g;->a:Lcom/google/android/material/color/d$e;

    invoke-virtual {v5, p0}, Lcom/google/android/material/color/d$e;->a(Ljava/io/ByteArrayOutputStream;)V

    .line 147
    iget v5, p1, Lcom/google/android/material/color/d$g;->b:I

    invoke-static {v5}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 148
    iget-object v5, p1, Lcom/google/android/material/color/d$g;->c:Lcom/google/android/material/color/d$h;

    invoke-virtual {v5, p0}, Lcom/google/android/material/color/d$h;->a(Ljava/io/ByteArrayOutputStream;)V

    .line 149
    iget-object p1, p1, Lcom/google/android/material/color/d$g;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/color/d$c;

    .line 354
    iget-object v6, v5, Lcom/google/android/material/color/d$c;->a:Lcom/google/android/material/color/d$e;

    .line 354
    invoke-virtual {v6, p0}, Lcom/google/android/material/color/d$e;->a(Ljava/io/ByteArrayOutputStream;)V

    .line 542
    iget-object v6, v5, Lcom/google/android/material/color/d$c;->b:Lcom/google/android/material/color/d$d;

    iget v7, v6, Lcom/google/android/material/color/d$d;->a:I

    .line 355
    invoke-static {v7}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/OutputStream;->write([B)V

    .line 356
    iget-object v6, v6, Lcom/google/android/material/color/d$d;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    const/16 v8, 0x80

    if-ge v7, v8, :cond_7

    .line 358
    array-length v8, v6

    if-ge v7, v8, :cond_6

    .line 359
    aget-char v8, v6, v7

    .line 40
    invoke-static {v8}, Lcom/google/android/material/color/d;->b(C)[B

    move-result-object v8

    .line 359
    invoke-virtual {p0, v8}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 40
    :cond_6
    invoke-static {v2}, Lcom/google/android/material/color/d;->b(C)[B

    move-result-object v8

    .line 361
    invoke-virtual {p0, v8}, Ljava/io/OutputStream;->write([B)V

    :goto_3
    add-int/2addr v7, v4

    goto :goto_2

    :cond_7
    const/16 v6, 0x120

    .line 364
    invoke-static {v6}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/OutputStream;->write([B)V

    .line 365
    invoke-static {v2}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/OutputStream;->write([B)V

    .line 293
    iget-object v7, v5, Lcom/google/android/material/color/d$c;->c:Lcom/google/android/material/color/d$h;

    iget v8, v7, Lcom/google/android/material/color/d$h;->l:I

    add-int/2addr v8, v6

    .line 367
    invoke-static {v8}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v6

    .line 366
    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 368
    invoke-static {v2}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 369
    invoke-static {v2}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 370
    invoke-virtual {v7, p0}, Lcom/google/android/material/color/d$h;->a(Ljava/io/ByteArrayOutputStream;)V

    .line 371
    iget-object v6, v5, Lcom/google/android/material/color/d$c;->d:Lcom/google/android/material/color/d$h;

    invoke-virtual {v6, p0}, Lcom/google/android/material/color/d$h;->a(Ljava/io/ByteArrayOutputStream;)V

    .line 421
    iget-object v5, v5, Lcom/google/android/material/color/d$c;->e:Lcom/google/android/material/color/d$k;

    iget-object v6, v5, Lcom/google/android/material/color/d$k;->a:Lcom/google/android/material/color/d$e;

    .line 421
    invoke-virtual {v6, p0}, Lcom/google/android/material/color/d$e;->a(Ljava/io/ByteArrayOutputStream;)V

    .line 422
    new-array v6, v1, [B

    sget-byte v7, Lcom/google/android/material/color/d;->a:B

    aput-byte v7, v6, v2

    aput-byte v2, v6, v4

    aput-byte v2, v6, v3

    aput-byte v2, v6, v0

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 423
    iget v6, v5, Lcom/google/android/material/color/d$k;->b:I

    invoke-static {v6}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 424
    iget-object v6, v5, Lcom/google/android/material/color/d$k;->c:[I

    array-length v7, v6

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_8

    aget v9, v6, v8

    .line 425
    invoke-static {v9}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/OutputStream;->write([B)V

    add-int/2addr v8, v4

    goto :goto_4

    .line 483
    :cond_8
    iget-object v5, v5, Lcom/google/android/material/color/d$k;->d:Lcom/google/android/material/color/d$j;

    iget-object v6, v5, Lcom/google/android/material/color/d$j;->a:Lcom/google/android/material/color/d$e;

    .line 483
    invoke-virtual {v6, p0}, Lcom/google/android/material/color/d$e;->a(Ljava/io/ByteArrayOutputStream;)V

    .line 484
    new-array v6, v1, [B

    sget-byte v7, Lcom/google/android/material/color/d;->a:B

    aput-byte v7, v6, v2

    aput-byte v2, v6, v4

    aput-byte v2, v6, v3

    aput-byte v2, v6, v0

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 485
    iget v6, v5, Lcom/google/android/material/color/d$j;->b:I

    invoke-static {v6}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 505
    iget-object v6, v5, Lcom/google/android/material/color/d$j;->d:[I

    array-length v7, v6

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0x54

    .line 486
    invoke-static {v7}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/OutputStream;->write([B)V

    .line 487
    iget-object v7, v5, Lcom/google/android/material/color/d$j;->c:[B

    invoke-virtual {p0, v7}, Ljava/io/OutputStream;->write([B)V

    .line 488
    array-length v7, v6

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_9

    aget v9, v6, v8

    .line 489
    invoke-static {v9}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/OutputStream;->write([B)V

    add-int/2addr v8, v4

    goto :goto_5

    .line 491
    :cond_9
    iget-object v5, v5, Lcom/google/android/material/color/d$j;->e:[Lcom/google/android/material/color/d$f;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    .line 492
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v9, 0x8

    .line 40
    invoke-static {v9}, Lcom/google/android/material/color/d;->d(S)[B

    move-result-object v10

    .line 532
    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 40
    invoke-static {v3}, Lcom/google/android/material/color/d;->d(S)[B

    move-result-object v10

    .line 533
    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 534
    iget v10, v8, Lcom/google/android/material/color/d$f;->a:I

    invoke-static {v10}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 40
    invoke-static {v9}, Lcom/google/android/material/color/d;->d(S)[B

    move-result-object v9

    .line 535
    invoke-virtual {p0, v9}, Ljava/io/OutputStream;->write([B)V

    .line 536
    new-array v9, v3, [B

    fill-array-data v9, :array_0

    invoke-virtual {p0, v9}, Ljava/io/OutputStream;->write([B)V

    .line 537
    iget v8, v8, Lcom/google/android/material/color/d$f;->b:I

    invoke-static {v8}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/io/OutputStream;->write([B)V

    add-int/2addr v7, v4

    goto :goto_6

    .line 115
    :cond_a
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 111
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No color resources found for harmonization."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No color resources provided for harmonization."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 1
        0x0t
        0x1ct
    .end array-data
.end method

.method public static d(S)[B
    .locals 3

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x2

    .line 576
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p0, v1, v0

    return-object v1
.end method

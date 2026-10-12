.class Lcom/google/android/material/color/d$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/color/d$e;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public final j:Z

.field public final k:I

.field public final l:I


# direct methods
.method public varargs constructor <init>(Z[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 219
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/google/android/material/color/d$h;->f:Ljava/util/ArrayList;

    .line 207
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/google/android/material/color/d$h;->g:Ljava/util/ArrayList;

    .line 208
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/google/android/material/color/d$h;->h:Ljava/util/ArrayList;

    .line 209
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/google/android/material/color/d$h;->i:Ljava/util/ArrayList;

    move/from16 v4, p1

    .line 220
    iput-boolean v4, v0, Lcom/google/android/material/color/d$h;->j:Z

    .line 222
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v8, v1, v6

    .line 298
    new-instance v9, Landroid/util/Pair;

    .line 299
    iget-boolean v10, v0, Lcom/google/android/material/color/d$h;->j:Z

    if-eqz v10, :cond_0

    sget-byte v10, Lcom/google/android/material/color/d;->a:B

    .line 613
    const-string v10, "UTF-8"

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 614
    array-length v10, v8

    int-to-byte v10, v10

    .line 615
    array-length v11, v8

    add-int/lit8 v12, v11, 0x3

    new-array v12, v12, [B

    .line 616
    invoke-static {v8, v5, v12, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    aput-byte v10, v12, v2

    aput-byte v10, v12, v5

    add-int/2addr v11, v3

    .line 618
    aput-byte v5, v12, v11

    goto :goto_2

    .line 299
    :cond_0
    sget-byte v10, Lcom/google/android/material/color/d;->a:B

    .line 597
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 598
    array-length v10, v8

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v11, v10, 0x4

    new-array v12, v11, [B

    .line 599
    array-length v11, v8

    int-to-short v11, v11

    invoke-static {v11}, Lcom/google/android/material/color/d;->d(S)[B

    move-result-object v11

    .line 600
    aget-byte v13, v11, v5

    aput-byte v13, v12, v5

    .line 601
    aget-byte v11, v11, v2

    aput-byte v11, v12, v2

    const/4 v11, 0x0

    .line 602
    :goto_1
    array-length v13, v8

    if-ge v11, v13, :cond_1

    .line 603
    aget-char v13, v8, v11

    invoke-static {v13}, Lcom/google/android/material/color/d;->b(C)[B

    move-result-object v13

    mul-int/lit8 v14, v11, 0x2

    add-int/lit8 v15, v14, 0x2

    .line 604
    aget-byte v16, v13, v5

    aput-byte v16, v12, v15

    add-int/lit8 v14, v14, 0x3

    .line 605
    aget-byte v13, v13, v2

    aput-byte v13, v12, v14

    add-int/2addr v11, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v10, 0x2

    .line 607
    aput-byte v5, v12, v8

    add-int/lit8 v10, v10, 0x3

    .line 608
    aput-byte v5, v12, v10

    .line 300
    :goto_2
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v9, v12, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    iget-object v8, v0, Lcom/google/android/material/color/d$h;->f:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v8, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v10, v8

    check-cast v10, [B

    array-length v10, v10

    add-int/2addr v7, v10

    .line 226
    iget-object v10, v0, Lcom/google/android/material/color/d$h;->h:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v8, v0, Lcom/google/android/material/color/d$h;->i:Ljava/util/ArrayList;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v2

    goto/16 :goto_0

    .line 230
    :cond_2
    iget-object v3, v0, Lcom/google/android/material/color/d$h;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 231
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 236
    iget-object v8, v0, Lcom/google/android/material/color/d$h;->g:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0xc

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v4, v6

    goto :goto_3

    .line 231
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/color/d$i;

    .line 232
    iget-object v2, v0, Lcom/google/android/material/color/d$h;->f:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    .line 233
    throw v1

    .line 242
    :cond_4
    rem-int/lit8 v3, v7, 0x4

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    rsub-int/lit8 v3, v3, 0x4

    .line 243
    :goto_4
    iput v3, v0, Lcom/google/android/material/color/d$h;->k:I

    .line 244
    iget-object v6, v0, Lcom/google/android/material/color/d$h;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, v0, Lcom/google/android/material/color/d$h;->b:I

    .line 245
    iget-object v8, v0, Lcom/google/android/material/color/d$h;->h:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v1

    sub-int/2addr v8, v9

    iput v8, v0, Lcom/google/android/material/color/d$h;->c:I

    .line 247
    iget-object v8, v0, Lcom/google/android/material/color/d$h;->h:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v1, v1

    sub-int/2addr v8, v1

    if-lez v8, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    if-nez v1, :cond_7

    .line 250
    iget-object v8, v0, Lcom/google/android/material/color/d$h;->g:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v8, v0, Lcom/google/android/material/color/d$h;->i:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :cond_7
    mul-int/lit8 v6, v6, 0x4

    const/16 v8, 0x1c

    add-int/2addr v6, v8

    .line 255
    iget-object v9, v0, Lcom/google/android/material/color/d$h;->g:Ljava/util/ArrayList;

    .line 258
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v9, v6

    iput v9, v0, Lcom/google/android/material/color/d$h;->d:I

    add-int/2addr v7, v3

    if-eqz v1, :cond_8

    add-int v3, v9, v7

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    .line 260
    :goto_6
    iput v3, v0, Lcom/google/android/material/color/d$h;->e:I

    add-int/2addr v9, v7

    if-eqz v1, :cond_9

    move v5, v4

    :cond_9
    add-int/2addr v9, v5

    .line 261
    iput v9, v0, Lcom/google/android/material/color/d$h;->l:I

    .line 262
    new-instance v1, Lcom/google/android/material/color/d$e;

    invoke-direct {v1, v2, v8, v9}, Lcom/google/android/material/color/d$e;-><init>(SSI)V

    iput-object v1, v0, Lcom/google/android/material/color/d$h;->a:Lcom/google/android/material/color/d$e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/ByteArrayOutputStream;)V
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/google/android/material/color/d$h;->a:Lcom/google/android/material/color/d$e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/d$e;->a(Ljava/io/ByteArrayOutputStream;)V

    .line 267
    iget v0, p0, Lcom/google/android/material/color/d$h;->b:I

    invoke-static {v0}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 268
    iget v0, p0, Lcom/google/android/material/color/d$h;->c:I

    invoke-static {v0}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 269
    iget-boolean v0, p0, Lcom/google/android/material/color/d$h;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 270
    iget v0, p0, Lcom/google/android/material/color/d$h;->d:I

    invoke-static {v0}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 271
    iget v0, p0, Lcom/google/android/material/color/d$h;->e:I

    invoke-static {v0}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 272
    iget-object v0, p0, Lcom/google/android/material/color/d$h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 273
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/color/d$h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 276
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/color/d$h;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 279
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 281
    :cond_3
    iget v0, p0, Lcom/google/android/material/color/d$h;->k:I

    if-lez v0, :cond_4

    .line 282
    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/color/d$h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 285
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/color/d$i;

    .line 286
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    invoke-static {v1}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 314
    invoke-static {v1}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 315
    invoke-static {v1}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5

    :cond_5
    const/4 v2, -0x1

    .line 288
    invoke-static {v2}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_4

    :cond_6
    return-void
.end method

.class Landroidx/versionedparcelable/c;
.super Landroidx/versionedparcelable/VersionedParcel;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/versionedparcelable/c$a;
    }
.end annotation


# static fields
.field public static final j:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Ljava/io/DataInputStream;

.field public final b:Ljava/io/DataOutputStream;

.field public final c:Ljava/io/DataInputStream;

.field public d:Ljava/io/DataOutputStream;

.field public e:Landroidx/versionedparcelable/c$a;

.field public f:Z

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "UTF-16"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroidx/versionedparcelable/c;->j:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6

    .line 76
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v5, Landroidx/collection/ArrayMap;

    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/versionedparcelable/c;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 84
    invoke-direct {p0, p3, p4, p5}, Landroidx/versionedparcelable/VersionedParcel;-><init>(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    const/4 p3, 0x0

    .line 71
    iput p3, p0, Landroidx/versionedparcelable/c;->g:I

    const/4 p3, -0x1

    .line 72
    iput p3, p0, Landroidx/versionedparcelable/c;->h:I

    .line 73
    iput p3, p0, Landroidx/versionedparcelable/c;->i:I

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 85
    new-instance p4, Ljava/io/DataInputStream;

    new-instance p5, Landroidx/versionedparcelable/b;

    invoke-direct {p5, p0, p1}, Landroidx/versionedparcelable/b;-><init>(Landroidx/versionedparcelable/c;Ljava/io/InputStream;)V

    invoke-direct {p4, p5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    move-object p4, p3

    :goto_0
    iput-object p4, p0, Landroidx/versionedparcelable/c;->a:Ljava/io/DataInputStream;

    if-eqz p2, :cond_1

    .line 120
    new-instance p3, Ljava/io/DataOutputStream;

    invoke-direct {p3, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :cond_1
    iput-object p3, p0, Landroidx/versionedparcelable/c;->b:Ljava/io/DataOutputStream;

    .line 121
    iput-object p4, p0, Landroidx/versionedparcelable/c;->c:Ljava/io/DataInputStream;

    .line 122
    iput-object p3, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    return-void
.end method


# virtual methods
.method public closeField()V
    .locals 6

    .line 142
    iget-object v0, p0, Landroidx/versionedparcelable/c;->e:Landroidx/versionedparcelable/c$a;

    if-eqz v0, :cond_3

    .line 144
    :try_start_0
    iget-object v0, v0, Landroidx/versionedparcelable/c$a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Landroidx/versionedparcelable/c;->e:Landroidx/versionedparcelable/c$a;

    .line 555
    iget-object v1, v0, Landroidx/versionedparcelable/c$a;->b:Ljava/io/DataOutputStream;

    .line 555
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 556
    iget-object v1, v0, Landroidx/versionedparcelable/c$a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    .line 557
    iget v3, v0, Landroidx/versionedparcelable/c$a;->c:I

    shl-int/lit8 v3, v3, 0x10

    const v4, 0xffff

    if-lt v2, v4, :cond_0

    const v5, 0xffff

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    or-int/2addr v3, v5

    .line 558
    iget-object v0, v0, Landroidx/versionedparcelable/c$a;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-lt v2, v4, :cond_1

    .line 560
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 562
    :cond_1
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Landroidx/versionedparcelable/c;->e:Landroidx/versionedparcelable/c$a;

    return-void

    .line 148
    :goto_2
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    return-void
.end method

.method public createSubParcel()Landroidx/versionedparcelable/VersionedParcel;
    .locals 6

    .line 156
    new-instance v0, Landroidx/versionedparcelable/c;

    iget-object v2, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    iget-object v4, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    iget-object v5, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    iget-object v1, p0, Landroidx/versionedparcelable/c;->c:Ljava/io/DataInputStream;

    invoke-direct/range {v0 .. v5}, Landroidx/versionedparcelable/c;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    return-object v0
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 443
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/c;->writeInt(I)V

    return-void

    .line 444
    :cond_0
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 445
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/c;->writeInt(I)V

    .line 446
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/c;->writeBundle(Landroid/os/Bundle;)V

    return-void

    .line 447
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 448
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/c;->writeInt(I)V

    .line 449
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/c;->writeString(Ljava/lang/String;)V

    return-void

    .line 450
    :cond_2
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 451
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/c;->writeInt(I)V

    .line 452
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeArray([Ljava/lang/Object;)V

    return-void

    .line 453
    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 454
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/c;->writeInt(I)V

    .line 455
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/c;->writeBoolean(Z)V

    return-void

    .line 456
    :cond_4
    instance-of v0, p1, [Z

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 457
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/c;->writeInt(I)V

    .line 458
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBooleanArray([Z)V

    return-void

    .line 459
    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 460
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/c;->writeInt(I)V

    .line 461
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/c;->writeDouble(D)V

    return-void

    .line 462
    :cond_6
    instance-of v0, p1, [D

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 463
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/c;->writeInt(I)V

    .line 464
    check-cast p1, [D

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeDoubleArray([D)V

    return-void

    .line 465
    :cond_7
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 466
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/c;->writeInt(I)V

    .line 467
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/c;->writeInt(I)V

    return-void

    .line 468
    :cond_8
    instance-of v0, p1, [I

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 469
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/c;->writeInt(I)V

    .line 470
    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeIntArray([I)V

    return-void

    .line 471
    :cond_9
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    .line 472
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/c;->writeInt(I)V

    .line 473
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/c;->writeLong(J)V

    return-void

    .line 474
    :cond_a
    instance-of v0, p1, [J

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    .line 475
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/c;->writeInt(I)V

    .line 476
    check-cast p1, [J

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeLongArray([J)V

    return-void

    .line 477
    :cond_b
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    .line 478
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/c;->writeInt(I)V

    .line 479
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/c;->writeFloat(F)V

    return-void

    .line 480
    :cond_c
    instance-of v0, p1, [F

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    .line 481
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/c;->writeInt(I)V

    .line 482
    check-cast p1, [F

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeFloatArray([F)V

    return-void

    .line 484
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isStream()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readBoolean()Z
    .locals 2

    .line 402
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/c;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 404
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readBundle()Landroid/os/Bundle;
    .locals 8

    .line 429
    invoke-virtual {p0}, Landroidx/versionedparcelable/c;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    .line 433
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 435
    invoke-virtual {p0}, Landroidx/versionedparcelable/c;->readString()Ljava/lang/String;

    move-result-object v5

    .line 436
    invoke-virtual {p0}, Landroidx/versionedparcelable/c;->readInt()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 536
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown type "

    .line 0
    invoke-static {v6, v1}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :pswitch_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloatArray()[F

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_1

    .line 530
    :pswitch_1
    invoke-virtual {p0}, Landroidx/versionedparcelable/c;->readFloat()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_1

    .line 527
    :pswitch_2
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readLongArray()[J

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_1

    .line 524
    :pswitch_3
    invoke-virtual {p0}, Landroidx/versionedparcelable/c;->readLong()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 521
    :pswitch_4
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readIntArray()[I

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_1

    .line 518
    :pswitch_5
    invoke-virtual {p0}, Landroidx/versionedparcelable/c;->readInt()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 515
    :pswitch_6
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readDoubleArray()[D

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_1

    .line 512
    :pswitch_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/c;->readDouble()D

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 509
    :pswitch_8
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBooleanArray()[Z

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_1

    .line 506
    :pswitch_9
    invoke-virtual {p0}, Landroidx/versionedparcelable/c;->readBoolean()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 503
    :pswitch_a
    new-array v6, v3, [Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroidx/versionedparcelable/VersionedParcel;->readArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 500
    :pswitch_b
    invoke-virtual {p0}, Landroidx/versionedparcelable/c;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 497
    :pswitch_c
    invoke-virtual {p0}, Landroidx/versionedparcelable/c;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 494
    :pswitch_d
    invoke-virtual {p0}, Landroidx/versionedparcelable/c;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 491
    :pswitch_e
    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readByteArray()[B
    .locals 2

    .line 381
    iget-object v0, p0, Landroidx/versionedparcelable/c;->c:Ljava/io/DataInputStream;

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-lez v1, :cond_0

    .line 383
    new-array v1, v1, [B

    .line 384
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 390
    :goto_0
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readCharSequence()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public readDouble()D
    .locals 2

    .line 356
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/c;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 358
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readField(I)Z
    .locals 5

    :goto_0
    const/4 v0, 0x0

    .line 164
    :try_start_0
    iget v1, p0, Landroidx/versionedparcelable/c;->h:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 167
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    return v0

    .line 170
    :cond_1
    iget v1, p0, Landroidx/versionedparcelable/c;->g:I

    iget v2, p0, Landroidx/versionedparcelable/c;->i:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Landroidx/versionedparcelable/c;->a:Ljava/io/DataInputStream;

    if-ge v1, v2, :cond_2

    sub-int/2addr v2, v1

    int-to-long v1, v2

    .line 171
    :try_start_1
    invoke-virtual {v3, v1, v2}, Ljava/io/InputStream;->skip(J)J

    :cond_2
    const/4 v1, -0x1

    .line 173
    iput v1, p0, Landroidx/versionedparcelable/c;->i:I

    .line 174
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 175
    iput v0, p0, Landroidx/versionedparcelable/c;->g:I

    const v2, 0xffff

    and-int v4, v1, v2

    if-ne v4, v2, :cond_3

    .line 178
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    :cond_3
    shr-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v2

    .line 181
    iput v1, p0, Landroidx/versionedparcelable/c;->h:I

    .line 182
    iput v4, p0, Landroidx/versionedparcelable/c;->i:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    return v0
.end method

.method public readFloat()F
    .locals 2

    .line 347
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/c;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 349
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readInt()I
    .locals 2

    .line 329
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/c;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 331
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readLong()J
    .locals 2

    .line 338
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/c;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 340
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readParcelable()Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 3

    .line 365
    iget-object v0, p0, Landroidx/versionedparcelable/c;->c:Ljava/io/DataInputStream;

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-lez v1, :cond_0

    .line 367
    new-array v1, v1, [B

    .line 368
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 369
    new-instance v0, Ljava/lang/String;

    sget-object v2, Landroidx/versionedparcelable/c;->j:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 374
    :goto_0
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readStrongBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setOutputField(I)V
    .locals 2

    .line 191
    invoke-virtual {p0}, Landroidx/versionedparcelable/c;->closeField()V

    .line 192
    new-instance v0, Landroidx/versionedparcelable/c$a;

    iget-object v1, p0, Landroidx/versionedparcelable/c;->b:Ljava/io/DataOutputStream;

    invoke-direct {v0, p1, v1}, Landroidx/versionedparcelable/c$a;-><init>(ILjava/io/DataOutputStream;)V

    iput-object v0, p0, Landroidx/versionedparcelable/c;->e:Landroidx/versionedparcelable/c$a;

    .line 193
    iget-object p1, v0, Landroidx/versionedparcelable/c$a;->b:Ljava/io/DataOutputStream;

    iput-object p1, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    return-void
.end method

.method public setSerializationFlags(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 137
    iput-boolean p2, p0, Landroidx/versionedparcelable/c;->f:Z

    return-void

    .line 135
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serialization of this object is not allowed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeBoolean(Z)V
    .locals 1

    .line 288
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 290
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeBundle(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 412
    :try_start_0
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 413
    iget-object v1, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 414
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 415
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/c;->writeString(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 417
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/c;->h(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    return-void

    .line 420
    :cond_1
    iget-object p1, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 423
    :goto_1
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeByteArray([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 200
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 201
    iget-object v0, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 206
    :goto_0
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeByteArray([BII)V
    .locals 1

    if-eqz p1, :cond_0

    .line 214
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 215
    iget-object v0, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 220
    :goto_0
    new-instance p2, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {p2, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeCharSequence(Ljava/lang/CharSequence;)V
    .locals 1

    .line 226
    iget-boolean p1, p0, Landroidx/versionedparcelable/c;->f:Z

    if-eqz p1, :cond_0

    return-void

    .line 227
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "CharSequence cannot be written to an OutputStream"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeDouble(D)V
    .locals 1

    .line 263
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 265
    new-instance p2, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {p2, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeFloat(F)V
    .locals 1

    .line 253
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 255
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeInt(I)V
    .locals 1

    .line 234
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 236
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeLong(J)V
    .locals 1

    .line 243
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 245
    new-instance p2, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {p2, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeParcelable(Landroid/os/Parcelable;)V
    .locals 1

    .line 303
    iget-boolean p1, p0, Landroidx/versionedparcelable/c;->f:Z

    if-eqz p1, :cond_0

    return-void

    .line 304
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Parcelables cannot be written to an OutputStream"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 274
    :try_start_0
    sget-object v0, Landroidx/versionedparcelable/c;->j:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 275
    iget-object v0, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 276
    iget-object v0, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 278
    :cond_0
    iget-object p1, p0, Landroidx/versionedparcelable/c;->d:Ljava/io/DataOutputStream;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 281
    :goto_0
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeStrongBinder(Landroid/os/IBinder;)V
    .locals 1

    .line 296
    iget-boolean p1, p0, Landroidx/versionedparcelable/c;->f:Z

    if-eqz p1, :cond_0

    return-void

    .line 297
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Binders cannot be written to an OutputStream"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeStrongInterface(Landroid/os/IInterface;)V
    .locals 1

    .line 310
    iget-boolean p1, p0, Landroidx/versionedparcelable/c;->f:Z

    if-eqz p1, :cond_0

    return-void

    .line 311
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Binders cannot be written to an OutputStream"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

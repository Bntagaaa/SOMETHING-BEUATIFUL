.class public Lcom/google/appinventor/components/runtime/Ev3Motors;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides both high- and low-level interfaces to a LEGO MINDSTORMS EV3 robot, with functions that can control the motors."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_MOTOR_PORTS:Ljava/lang/String; = "ABC"

.field private static final DEFAULT_WHEEL_DIAMETER:D = 4.32

.field private static final DELAY_MILLISECONDS:I = 0x32


# instance fields
.field private directionReversed:Z

.field private eventHandler:Landroid/os/Handler;

.field private ifReset:Z

.field private motorPortBitField:I

.field private previousValue:I

.field private regulationEnabled:Z

.field private final sensorValueChecker:Ljava/lang/Runnable;

.field private stopBeforeDisconnect:Z

.field private tachoCountChangedEventEnabled:Z

.field private wheelDiameter:D


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 59
    const-string v0, "Ev3Motors"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 44
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const-wide v0, 0x401147ae147ae148L    # 4.32

    .line 45
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    const/4 v2, 0x0

    .line 46
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z

    .line 47
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    .line 48
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopBeforeDisconnect:Z

    .line 49
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->tachoCountChangedEventEnabled:Z

    .line 52
    iput v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->previousValue:I

    .line 53
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->ifReset:Z

    .line 60
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->eventHandler:Landroid/os/Handler;

    .line 61
    new-instance v3, Lcom/google/appinventor/components/runtime/Ev3Motors$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/Ev3Motors$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3Motors;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->sensorValueChecker:Ljava/lang/Runnable;

    .line 82
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    const-string v3, "ABC"

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->MotorPorts(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->StopBeforeDisconnect(Z)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->EnableSpeedRegulation(Z)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->ReverseDirection(Z)V

    .line 88
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->WheelDiameter(D)V

    .line 89
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->TachoCountChangedEventEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/Ev3Motors;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->eventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/Ev3Motors;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->ifReset:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/Ev3Motors;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    return p0
.end method

.method private clearOutputCount(Ljava/lang/String;II)V
    .locals 8

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    const/4 v1, 0x3

    if-gt p2, v1, :cond_0

    if-ltz p3, :cond_0

    const/16 v1, 0xf

    if-gt p3, v1, :cond_0

    int-to-byte p2, p2

    .line 716
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    int-to-byte p3, p3

    .line 717
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p2, v7, v0

    const/4 p2, 0x1

    aput-object p3, v7, p2

    const/16 v2, -0x4e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 711
    const-string v6, "cc"

    invoke-static/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 718
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 709
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/Ev3Motors;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->previousValue:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/Ev3Motors;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->tachoCountChangedEventEnabled:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/Ev3Motors;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->ifReset:Z

    return-void
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/Ev3Motors;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->previousValue:I

    return-void
.end method

.method private getOutputCount(Ljava/lang/String;II)I
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ltz p2, :cond_5

    if-gt p2, v2, :cond_5

    if-ltz p3, :cond_5

    const/16 v4, 0xf

    if-gt p3, v4, :cond_5

    add-int/lit8 v4, p3, -0x1

    xor-int/2addr p3, v4

    add-int/2addr p3, v3

    ushr-int/2addr p3, v3

    if-eq p3, v3, :cond_3

    if-eq p3, v1, :cond_2

    const/4 v4, 0x4

    if-eq p3, v4, :cond_1

    const/16 v4, 0x8

    if-ne p3, v4, :cond_0

    const/4 p3, 0x3

    goto :goto_0

    .line 686
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    const/4 p3, 0x2

    goto :goto_0

    :cond_2
    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    int-to-byte p2, p2

    .line 694
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    int-to-byte p3, p3

    .line 695
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    .line 696
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    new-array v10, v2, [Ljava/lang/Object;

    aput-object p2, v10, v0

    aput-object p3, v10, v3

    aput-object v4, v10, v1

    const/16 v5, -0x4d

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 689
    const-string v9, "ccg"

    invoke-static/range {v5 .. v10}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 697
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object p1

    if-eqz p1, :cond_4

    .line 699
    array-length p2, p1

    const/4 p3, 0x5

    if-ne p2, p3, :cond_4

    aget-byte p2, p1, v0

    if-ne p2, v1, :cond_4

    .line 700
    const-string p2, "xi"

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object p1

    .line 701
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_4
    return v0

    .line 662
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static bridge synthetic h(Lcom/google/appinventor/components/runtime/Ev3Motors;I)I
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->getOutputCount(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private isOneShotInteger(I)Z
    .locals 1

    if-eqz p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    xor-int/2addr v0, p1

    not-int v0, v0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private outputStepPower(Ljava/lang/String;IIIIIIZ)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ltz p2, :cond_0

    if-gt p2, v3, :cond_0

    if-ltz p3, :cond_0

    const/16 v4, 0xf

    if-gt p3, v4, :cond_0

    if-ltz p5, :cond_0

    if-ltz p6, :cond_0

    if-ltz p7, :cond_0

    const/16 v4, -0x64

    const/16 v5, 0x64

    .line 491
    invoke-direct {p0, p4, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result v4

    int-to-byte v0, p2

    .line 498
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    int-to-byte v1, p3

    .line 499
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    int-to-byte v4, v4

    .line 500
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 501
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 502
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 503
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v8, p8

    int-to-byte v8, v8

    .line 504
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v2

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v4, v9, v0

    aput-object v5, v9, v3

    const/4 v0, 0x4

    aput-object v6, v9, v0

    const/4 v0, 0x5

    aput-object v7, v9, v0

    const/4 v0, 0x6

    aput-object v8, v9, v0

    const/16 v0, -0x54

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 493
    const-string v5, "ccccccc"

    move-object/from16 p6, v5

    move-object/from16 p7, v9

    const/16 p2, -0x54

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-static/range {p2 .. p7}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v0

    .line 505
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 489
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private outputStepSpeed(Ljava/lang/String;IIIIIIZ)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ltz p2, :cond_0

    if-gt p2, v3, :cond_0

    if-ltz p3, :cond_0

    const/16 v4, 0xf

    if-gt p3, v4, :cond_0

    if-ltz p5, :cond_0

    if-ltz p6, :cond_0

    if-ltz p7, :cond_0

    const/16 v4, -0x64

    const/16 v5, 0x64

    .line 512
    invoke-direct {p0, p4, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result v4

    int-to-byte v0, p2

    .line 519
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    int-to-byte v1, p3

    .line 520
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    int-to-byte v4, v4

    .line 521
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 522
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 523
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 524
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v8, p8

    int-to-byte v8, v8

    .line 525
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v2

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v4, v9, v0

    aput-object v5, v9, v3

    const/4 v0, 0x4

    aput-object v6, v9, v0

    const/4 v0, 0x5

    aput-object v7, v9, v0

    const/4 v0, 0x6

    aput-object v8, v9, v0

    const/16 v0, -0x52

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 514
    const-string v5, "ccccccc"

    move-object/from16 p6, v5

    move-object/from16 p7, v9

    const/16 p2, -0x52

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-static/range {p2 .. p7}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v0

    .line 526
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private outputStepSync(Ljava/lang/String;IIIIIZ)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ltz p2, :cond_0

    if-gt p2, v4, :cond_0

    if-ltz p3, :cond_0

    const/16 v5, 0xf

    if-gt p3, v5, :cond_0

    const/16 v5, -0xc8

    if-lt p5, v5, :cond_0

    const/16 v5, 0xc8

    if-gt p5, v5, :cond_0

    const/16 v5, -0x64

    const/16 v6, 0x64

    .line 533
    invoke-direct {p0, p4, v5, v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result v5

    int-to-byte v0, p2

    .line 540
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    int-to-byte v1, p3

    .line 541
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    int-to-byte v5, v5

    .line 542
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    int-to-short v2, p5

    .line 543
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    .line 544
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move/from16 v7, p7

    int-to-byte v7, v7

    .line 545
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v3

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v5, v8, v0

    aput-object v2, v8, v4

    const/4 v0, 0x4

    aput-object v6, v8, v0

    const/4 v0, 0x5

    aput-object v7, v8, v0

    const/16 v0, -0x50

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 535
    const-string v5, "cccccc"

    move-object p6, v5

    move-object/from16 p7, v8

    const/16 p2, -0x50

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-static/range {p2 .. p7}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v0

    .line 546
    invoke-virtual {p0, p1, v0, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 531
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private outputTimePower(Ljava/lang/String;IIIIIIZ)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ltz p2, :cond_0

    if-gt p2, v3, :cond_0

    if-ltz p3, :cond_0

    const/16 v4, 0xf

    if-gt p3, v4, :cond_0

    if-ltz p5, :cond_0

    if-ltz p6, :cond_0

    if-ltz p7, :cond_0

    const/16 v4, -0x64

    const/16 v5, 0x64

    .line 553
    invoke-direct {p0, p4, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result v4

    int-to-byte v0, p2

    .line 560
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    int-to-byte v1, p3

    .line 561
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    int-to-byte v4, v4

    .line 562
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 563
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 564
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 565
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v8, p8

    int-to-byte v8, v8

    .line 566
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v2

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v4, v9, v0

    aput-object v5, v9, v3

    const/4 v0, 0x4

    aput-object v6, v9, v0

    const/4 v0, 0x5

    aput-object v7, v9, v0

    const/4 v0, 0x6

    aput-object v8, v9, v0

    const/16 v0, -0x53

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 555
    const-string v5, "ccccccc"

    move-object/from16 p6, v5

    move-object/from16 p7, v9

    const/16 p2, -0x53

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-static/range {p2 .. p7}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v0

    .line 567
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 551
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private outputTimeSpeed(Ljava/lang/String;IIIIIIZ)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ltz p2, :cond_0

    if-gt p2, v3, :cond_0

    if-ltz p3, :cond_0

    const/16 v4, 0xf

    if-gt p3, v4, :cond_0

    if-ltz p5, :cond_0

    if-ltz p6, :cond_0

    if-ltz p7, :cond_0

    const/16 v4, -0x64

    const/16 v5, 0x64

    .line 574
    invoke-direct {p0, p4, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result v4

    int-to-byte v0, p2

    .line 581
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    int-to-byte v1, p3

    .line 582
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    int-to-byte v4, v4

    .line 583
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 584
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 585
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 586
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v8, p8

    int-to-byte v8, v8

    .line 587
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v2

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v4, v9, v0

    aput-object v5, v9, v3

    const/4 v0, 0x4

    aput-object v6, v9, v0

    const/4 v0, 0x5

    aput-object v7, v9, v0

    const/4 v0, 0x6

    aput-object v8, v9, v0

    const/16 v0, -0x51

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 576
    const-string v5, "ccccccc"

    move-object/from16 p6, v5

    move-object/from16 p7, v9

    const/16 p2, -0x51

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-static/range {p2 .. p7}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v0

    .line 588
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 572
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private outputTimeSync(Ljava/lang/String;IIIIIZ)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ltz p2, :cond_0

    if-gt p2, v3, :cond_0

    if-ltz p3, :cond_0

    const/16 v4, 0xf

    if-gt p3, v4, :cond_0

    if-ltz p6, :cond_0

    const/16 v4, -0x64

    const/16 v5, 0x64

    .line 595
    invoke-direct {p0, p4, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result v4

    int-to-byte v0, p2

    .line 602
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    int-to-byte v1, p3

    .line 603
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    int-to-byte v4, v4

    .line 604
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    int-to-short v5, p5

    .line 605
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 606
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move/from16 v7, p7

    int-to-byte v7, v7

    .line 607
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v2

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v4, v8, v0

    aput-object v5, v8, v3

    const/4 v0, 0x4

    aput-object v6, v8, v0

    const/4 v0, 0x5

    aput-object v7, v8, v0

    const/16 v0, -0x4f

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 597
    const-string v5, "cccccc"

    move-object p6, v5

    move-object/from16 p7, v8

    const/16 p2, -0x4f

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-static/range {p2 .. p7}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v0

    .line 608
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 593
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private resetOutput(Ljava/lang/String;II)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    const/4 v2, 0x3

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    const/16 v2, 0xf

    if-gt p3, v2, :cond_0

    .line 447
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->ifReset:Z

    int-to-byte p2, p2

    .line 453
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    int-to-byte p3, p3

    .line 454
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p2, v8, v0

    aput-object p3, v8, v1

    const/16 v3, -0x5e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 448
    const-string v7, "cc"

    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 455
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 446
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private roundValue(III)I
    .locals 0

    if-ge p1, p2, :cond_0

    return p2

    :cond_0
    if-le p1, p3, :cond_1

    return p3

    :cond_1
    return p1
.end method

.method private setOutputDirection(Ljava/lang/String;III)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ltz p2, :cond_0

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    const/16 v3, 0xf

    if-gt p3, v3, :cond_0

    const/4 v3, -0x1

    if-lt p4, v3, :cond_0

    if-gt p4, v1, :cond_0

    int-to-byte p2, p2

    .line 620
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    int-to-byte p3, p3

    .line 621
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    int-to-byte p4, p4

    .line 622
    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p2, v8, v0

    aput-object p3, v8, v1

    const/4 p2, 0x2

    aput-object p4, v8, p2

    const/16 v3, -0x59

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 615
    const-string v7, "ccc"

    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 623
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 613
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private setOutputPower(Ljava/lang/String;III)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ltz p2, :cond_0

    if-gt p2, v1, :cond_0

    if-ltz p3, :cond_0

    const/16 v2, 0xf

    if-gt p3, v2, :cond_0

    const/16 v2, -0x64

    const/16 v3, 0x64

    .line 647
    invoke-direct {p0, p4, v2, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    int-to-byte p2, p2

    .line 654
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    int-to-byte p3, p3

    .line 655
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    int-to-byte p4, p4

    .line 656
    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p2, v7, v0

    const/4 p2, 0x1

    aput-object p3, v7, p2

    const/4 p2, 0x2

    aput-object p4, v7, p2

    const/16 v2, -0x5c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 649
    const-string v6, "ccc"

    invoke-static/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 657
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 645
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private setOutputSpeed(Ljava/lang/String;III)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ltz p2, :cond_0

    if-gt p2, v1, :cond_0

    if-ltz p3, :cond_0

    const/16 v2, 0xf

    if-gt p3, v2, :cond_0

    const/16 v2, -0x64

    const/16 v3, 0x64

    .line 630
    invoke-direct {p0, p4, v2, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    int-to-byte p2, p2

    .line 637
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    int-to-byte p3, p3

    .line 638
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    int-to-byte p4, p4

    .line 639
    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p2, v7, v0

    const/4 p2, 0x1

    aput-object p3, v7, p2

    const/4 p2, 0x2

    aput-object p4, v7, p2

    const/16 v2, -0x5b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 632
    const-string v6, "ccc"

    invoke-static/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 640
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 628
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private startOutput(Ljava/lang/String;II)V
    .locals 8

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    const/4 v1, 0x3

    if-gt p2, v1, :cond_0

    if-ltz p3, :cond_0

    const/16 v1, 0xf

    if-gt p3, v1, :cond_0

    int-to-byte p2, p2

    .line 467
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    int-to-byte p3, p3

    .line 468
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p2, v7, v0

    const/4 p2, 0x1

    aput-object p3, v7, p2

    const/16 v2, -0x5a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 462
    const-string v6, "cc"

    invoke-static/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 469
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 460
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private stopOutput(Ljava/lang/String;IIZ)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ltz p2, :cond_0

    if-gt p2, v1, :cond_0

    if-ltz p3, :cond_0

    const/16 v2, 0xf

    if-gt p3, v2, :cond_0

    int-to-byte p2, p2

    .line 481
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    int-to-byte p3, p3

    .line 482
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    .line 483
    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p2, v7, v0

    const/4 p2, 0x1

    aput-object p3, v7, p2

    const/4 p2, 0x2

    aput-object p4, v7, p2

    const/16 v2, -0x5d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 476
    const-string v6, "ccc"

    invoke-static/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 484
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 474
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public EnableSpeedRegulation(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 169
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    return-void
.end method

.method public EnableSpeedRegulation()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The robot adjusts the power to maintain the speed if speed regulation is enabled."
    .end annotation

    .line 178
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    return v0
.end method

.method public GetTachoCount()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the current tacho count."
    .end annotation

    const/4 v0, 0x0

    .line 419
    const-string v1, "GetTachoCount"

    .line 421
    :try_start_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->getOutputCount(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 423
    :catch_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v0
.end method

.method public MotorPorts()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The motor ports that the motors are connected to. The ports are specified by a sequence of port letters."
        userVisible = false
    .end annotation

    .line 99
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bitFieldToMotorPortLetters(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MotorPorts(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "ABC"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 111
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->motorPortLettersToBitField(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 113
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xc20

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "MotorPorts"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public ResetTachoCount()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the current tacho count to zero."
    .end annotation

    const/4 v0, 0x0

    .line 406
    const-string v1, "ResetTachoCount"

    .line 408
    :try_start_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->clearOutputCount(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 410
    :catch_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public ReverseDirection(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 144
    const-string v2, "ReverseDirection"

    .line 146
    :try_start_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz p1, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    invoke-direct {p0, v2, v0, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputDirection(Ljava/lang/String;III)V

    .line 147
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 149
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {p1, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public ReverseDirection()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "It specifies if the direction of the motors is reversed."
    .end annotation

    .line 159
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z

    return v0
.end method

.method public RotateInDistance(IDZ)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a distance."
    .end annotation

    .line 276
    const-string v1, "RotateInDistance"

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double p2, p2, v2

    .line 277
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    div-double/2addr p2, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p2, v2

    double-to-int v6, p2

    .line 280
    :try_start_0
    iget-boolean p2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    if-eqz p2, :cond_0

    .line 281
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v4, p1

    move v8, p4

    :try_start_1
    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSpeed(Ljava/lang/String;IIIIIIZ)V

    return-void

    :catch_0
    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move v4, p1

    move v8, p4

    .line 283
    iget v3, v0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepPower(Ljava/lang/String;IIIIIIZ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 285
    :catch_1
    :goto_0
    iget-object p1, v0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object v1, p3, p4

    invoke-virtual {p1, p0, v1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public RotateInDuration(IIZ)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a period of time."
    .end annotation

    .line 260
    const-string v1, "RotateInDuration"

    .line 262
    :try_start_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    if-eqz v0, :cond_0

    .line 263
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p3

    :try_start_1
    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputTimeSpeed(Ljava/lang/String;IIIIIIZ)V

    return-void

    :catch_0
    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p3

    .line 265
    iget v3, v0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputTimePower(Ljava/lang/String;IIIIIIZ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 267
    :catch_1
    :goto_0
    iget-object p1, v0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, p3, v2

    invoke-virtual {p1, p0, v1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public RotateInTachoCounts(IIZ)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a number of tacho counts."
    .end annotation

    .line 244
    const-string v1, "RotateInTachoCounts"

    .line 246
    :try_start_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    if-eqz v0, :cond_0

    .line 247
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p3

    :try_start_1
    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSpeed(Ljava/lang/String;IIIIIIZ)V

    return-void

    :catch_0
    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p3

    .line 249
    iget v3, v0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepPower(Ljava/lang/String;IIIIIIZ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 251
    :catch_1
    :goto_0
    iget-object p1, v0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, p3, v2

    invoke-virtual {p1, p0, v1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public RotateIndefinitely(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start to rotate the motors."
    .end annotation

    const/4 v0, 0x0

    .line 226
    const-string v1, "RotateIndefinitely"

    .line 228
    :try_start_0
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    if-eqz v2, :cond_0

    .line 229
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputPower(Ljava/lang/String;III)V

    goto :goto_0

    .line 231
    :cond_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputSpeed(Ljava/lang/String;III)V

    .line 233
    :goto_0
    iget p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v0, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->startOutput(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 235
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-virtual {p1, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public RotateSyncInDistance(IIIZ)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed for a distance in cm."
    .end annotation

    .line 315
    const-string v1, "RotateSyncInDuration"

    int-to-double v2, p2

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double v2, v2, v4

    .line 316
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    div-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-int v6, v2

    .line 320
    :try_start_0
    iget p2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz p2, :cond_1

    .line 321
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->isOneShotInteger(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 322
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v4, p1

    move v8, p4

    :try_start_1
    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSpeed(Ljava/lang/String;IIIIIIZ)V

    return-void

    :catch_0
    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move v4, p1

    move v7, p4

    .line 324
    iget v3, v0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v2, 0x0

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSync(Ljava/lang/String;IIIIIZ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :cond_1
    move-object v0, p0

    goto :goto_1

    .line 328
    :catch_1
    :goto_0
    iget-object p1, v0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object v1, p3, p4

    invoke-virtual {p1, p0, v1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public RotateSyncInDuration(IIIZ)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed in a period of time."
    .end annotation

    .line 337
    const-string v1, "RotateSyncInDuration"

    .line 341
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz v0, :cond_1

    .line 342
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->isOneShotInteger(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p4

    :try_start_1
    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputTimeSpeed(Ljava/lang/String;IIIIIIZ)V

    return-void

    :catch_0
    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move v4, p1

    move v6, p2

    move v7, p4

    .line 345
    iget v3, v0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v2, 0x0

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputTimeSync(Ljava/lang/String;IIIIIZ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :cond_1
    move-object v0, p0

    goto :goto_1

    .line 349
    :catch_1
    :goto_0
    iget-object p1, v0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object v1, p3, p4

    invoke-virtual {p1, p0, v1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public RotateSyncInTachoCounts(IIIZ)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed in a number of tacho counts."
    .end annotation

    .line 358
    const-string v1, "RotateSyncInTachoCounts"

    .line 362
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz v0, :cond_1

    .line 363
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->isOneShotInteger(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p4

    :try_start_1
    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSpeed(Ljava/lang/String;IIIIIIZ)V

    return-void

    :catch_0
    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move v4, p1

    move v6, p2

    move v7, p4

    .line 366
    iget v3, v0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v2, 0x0

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSync(Ljava/lang/String;IIIIIZ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :cond_1
    move-object v0, p0

    goto :goto_1

    .line 370
    :catch_1
    :goto_0
    iget-object p1, v0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object v1, p3, p4

    invoke-virtual {p1, p0, v1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public RotateSyncIndefinitely(II)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start to rotate the motors at the same speed."
    .end annotation

    const/4 v0, 0x0

    .line 294
    const-string v2, "RotateSyncIndefinitely"

    .line 298
    :try_start_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz v1, :cond_1

    .line 299
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->isOneShotInteger(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget p2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v2, v0, p2, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputSpeed(Ljava/lang/String;III)V

    return-void

    :catch_0
    move-object v1, p0

    goto :goto_0

    .line 302
    :cond_0
    iget v4, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    move v5, p1

    move v6, p2

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSync(Ljava/lang/String;IIIIIZ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :cond_1
    move-object v1, p0

    goto :goto_1

    .line 306
    :catch_1
    :goto_0
    iget-object p1, v1, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-virtual {p1, p0, v2, p2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public Stop(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop the motors of the robot."
    .end annotation

    const/4 v0, 0x0

    .line 379
    const-string v1, "Stop"

    .line 381
    :try_start_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopOutput(Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 383
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-virtual {p1, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public StopBeforeDisconnect(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 199
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopBeforeDisconnect:Z

    return-void
.end method

.method public StopBeforeDisconnect()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to stop the motor before disconnecting."
    .end annotation

    .line 187
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopBeforeDisconnect:Z

    return v0
.end method

.method public TachoCountChanged(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the tacho count has changed."
    .end annotation

    .line 433
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TachoCountChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TachoCountChangedEventEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 218
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->tachoCountChangedEventEnabled:Z

    return-void
.end method

.method public TachoCountChangedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the TachoCountChanged event should fire when the angle is changed."
    .end annotation

    .line 208
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->tachoCountChangedEventEnabled:Z

    return v0
.end method

.method public ToggleDirection()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Toggle the direction of motors."
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 392
    const-string v2, "ToggleDirection"

    .line 394
    :try_start_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v2, v1, v3, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputDirection(Ljava/lang/String;III)V

    .line 395
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z

    xor-int/2addr v3, v0

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 397
    :catch_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0xc1f

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-virtual {v3, p0, v2, v4, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public WheelDiameter()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The diameter of the wheels attached on the motors in centimeters."
        userVisible = false
    .end annotation

    .line 134
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    return-wide v0
.end method

.method public WheelDiameter(D)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4.32"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 124
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 723
    const-string v1, "beforeDisconnect"

    .line 724
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopBeforeDisconnect:Z

    if-eqz v2, :cond_0

    .line 726
    :try_start_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopOutput(Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 728
    :catch_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, p1

    invoke-virtual {v2, p0, v1, v3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

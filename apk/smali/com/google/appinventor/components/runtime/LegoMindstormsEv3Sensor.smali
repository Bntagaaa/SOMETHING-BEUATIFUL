.class public Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field protected static final DEFAULT_SENSOR_PORT:Ljava/lang/String; = "1"


# instance fields
.field protected sensorPortNumber:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 30
    const-string p1, "1"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->SensorPort(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public SensorPort()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The sensor port that the sensor is connected to."
        userVisible = false
    .end annotation

    .line 37
    iget v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sensorPortNumber:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->portNumberToSensorPortLetter(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "lego_ev3_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 48
    const-string v0, "SensorPort"

    .line 49
    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->setSensorPort(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final readInputPercentage(Ljava/lang/String;IIII)I
    .locals 19

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p5

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/4 v7, 0x3

    if-ltz v0, :cond_1

    if-gt v0, v7, :cond_1

    if-ltz v1, :cond_1

    if-gt v1, v7, :cond_1

    const/4 v8, -0x1

    if-lt v2, v8, :cond_1

    if-gt v2, v6, :cond_1

    const/16 v9, 0x1b

    .line 74
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    int-to-byte v0, v0

    .line 75
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    int-to-byte v1, v1

    .line 76
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    move/from16 v10, p4

    int-to-byte v10, v10

    .line 77
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    int-to-byte v2, v2

    .line 78
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 79
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    .line 80
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v9, v6, v4

    aput-object v0, v6, v5

    aput-object v1, v6, v3

    aput-object v10, v6, v7

    const/4 v0, 0x4

    aput-object v2, v6, v0

    const/4 v0, 0x5

    aput-object v11, v6, v0

    const/4 v0, 0x6

    aput-object v12, v6, v0

    const/16 v13, -0x67

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    .line 69
    const-string v17, "ccccccg"

    move-object/from16 v18, v6

    invoke-static/range {v13 .. v18}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 82
    invoke-virtual {v1, v2, v0, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    array-length v2, v0

    if-ne v2, v3, :cond_0

    aget-byte v2, v0, v4

    if-ne v2, v3, :cond_0

    .line 84
    aget-byte v0, v0, v5

    return v0

    :cond_0
    return v8

    :cond_1
    move-object/from16 v1, p0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final readInputSI(Ljava/lang/String;IIII)D
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x7

    const/4 v10, 0x3

    if-ltz v2, :cond_1

    if-gt v2, v10, :cond_1

    if-ltz v3, :cond_1

    if-gt v3, v10, :cond_1

    const/4 v11, -0x1

    if-lt v4, v11, :cond_1

    if-gt v4, v9, :cond_1

    const/16 v11, 0x1d

    .line 102
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    int-to-byte v2, v2

    .line 103
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    int-to-byte v3, v3

    .line 104
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    move/from16 v12, p4

    int-to-byte v12, v12

    .line 105
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    int-to-byte v4, v4

    .line 106
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 107
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    .line 108
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v11, v9, v7

    aput-object v2, v9, v8

    aput-object v3, v9, v6

    aput-object v12, v9, v10

    const/4 v2, 0x4

    aput-object v4, v9, v2

    aput-object v13, v9, v5

    const/4 v2, 0x6

    aput-object v14, v9, v2

    const/16 v15, -0x67

    const/16 v16, 0x1

    const/16 v17, 0x4

    const/16 v18, 0x0

    .line 97
    const-string v19, "ccccccg"

    move-object/from16 v20, v9

    invoke-static/range {v15 .. v20}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2, v8}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 112
    array-length v3, v2

    if-ne v3, v5, :cond_0

    aget-byte v3, v2, v7

    if-ne v3, v6, :cond_0

    .line 113
    const-string v1, "xf"

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v1

    .line 114
    aget-object v1, v1, v7

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    return-wide v1

    .line 117
    :cond_0
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1e

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    return-wide v1

    .line 96
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public final setSensorPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 54
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sensorPortLetterToPortNumber(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sensorPortNumber:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 56
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xc21

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

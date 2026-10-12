.class public Lcom/google/appinventor/components/runtime/Ev3UI;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a LEGO MINDSTORMS EV3 robot, with functions to draw graphs on EV3 screen."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 41
    const-string v0, "Ev3UI"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public DrawCircle(IIIIZ)V
    .locals 17
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a circle on the screen."
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 185
    const-string v6, "DrawCircle"

    if-eqz v1, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    if-gez v2, :cond_2

    .line 186
    :cond_1
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v6, v3, v4

    invoke-virtual {v1, v0, v6, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_2
    if-eqz p5, :cond_3

    const/16 v7, 0x18

    goto :goto_0

    :cond_3
    const/4 v7, 0x4

    .line 195
    :goto_0
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    int-to-byte v1, v1

    .line 196
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    move/from16 v8, p2

    int-to-short v8, v8

    .line 197
    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    move/from16 v9, p3

    int-to-short v9, v9

    .line 198
    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    int-to-short v2, v2

    .line 199
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v4

    aput-object v1, v10, v5

    const/4 v1, 0x2

    aput-object v8, v10, v1

    const/4 v1, 0x3

    aput-object v9, v10, v1

    aput-object v2, v10, v3

    const/16 v11, -0x7c

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 190
    const-string v15, "ccccc"

    move-object/from16 v16, v10

    invoke-static/range {v11 .. v16}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v1

    .line 200
    invoke-virtual {v0, v6, v1, v4}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 207
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-array v12, v5, [Ljava/lang/Object;

    aput-object v1, v12, v4

    const/16 v7, -0x7c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 202
    const-string v11, "c"

    invoke-static/range {v7 .. v12}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v1

    .line 208
    invoke-virtual {v0, v6, v1, v4}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void
.end method

.method public DrawIcon(IIIII)V
    .locals 17
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a built-in icon on screen."
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 83
    const-string v5, "DrawIcon"

    if-eqz v1, :cond_0

    if-eq v1, v4, :cond_0

    .line 84
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    invoke-virtual {v1, v0, v5, v2, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 93
    :cond_0
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    int-to-byte v1, v1

    .line 94
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    move/from16 v7, p2

    int-to-short v7, v7

    .line 95
    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    move/from16 v8, p3

    int-to-short v8, v8

    .line 96
    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    .line 97
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 98
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v3

    aput-object v1, v2, v4

    const/4 v1, 0x2

    aput-object v7, v2, v1

    const/4 v1, 0x3

    aput-object v8, v2, v1

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v10, v2, v1

    const/16 v11, -0x7c

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 88
    const-string v15, "cccccc"

    move-object/from16 v16, v2

    invoke-static/range {v11 .. v16}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v1

    .line 99
    invoke-virtual {v0, v5, v1, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 106
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v1, v11, v3

    const/16 v6, -0x7c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 101
    const-string v10, "c"

    invoke-static/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v1

    .line 107
    invoke-virtual {v0, v5, v1, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void
.end method

.method public DrawLine(IIIII)V
    .locals 18
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a line on the screen."
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 117
    const-string v5, "DrawLine"

    if-eqz v1, :cond_0

    if-eq v1, v4, :cond_0

    .line 118
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    invoke-virtual {v1, v0, v5, v2, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 127
    :cond_0
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    int-to-byte v1, v1

    .line 128
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    move/from16 v7, p2

    int-to-short v7, v7

    .line 129
    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    move/from16 v8, p3

    int-to-short v8, v8

    .line 130
    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    move/from16 v9, p4

    int-to-short v9, v9

    .line 131
    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    move/from16 v10, p5

    int-to-short v10, v10

    .line 132
    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v6, v11, v3

    aput-object v1, v11, v4

    const/4 v1, 0x2

    aput-object v7, v11, v1

    aput-object v8, v11, v2

    const/4 v1, 0x4

    aput-object v9, v11, v1

    const/4 v1, 0x5

    aput-object v10, v11, v1

    const/16 v12, -0x7c

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 122
    const-string v16, "cccccc"

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v17}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v1

    .line 133
    invoke-virtual {v0, v5, v1, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 140
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v1, v11, v3

    const/16 v6, -0x7c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 135
    const-string v10, "c"

    invoke-static/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v1

    .line 141
    invoke-virtual {v0, v5, v1, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void
.end method

.method public DrawPoint(III)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a point on the screen."
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 51
    const-string v3, "DrawPoint"

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    .line 52
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    new-array p3, v2, [Ljava/lang/Object;

    aput-object v3, p3, v1

    invoke-virtual {p1, p0, v3, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 61
    :cond_0
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    int-to-byte p1, p1

    .line 62
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    int-to-short p2, p2

    .line 63
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    int-to-short p3, p3

    .line 64
    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    const/4 v5, 0x4

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v4, v11, v1

    aput-object p1, v11, v2

    aput-object p2, v11, v0

    const/4 p1, 0x3

    aput-object p3, v11, p1

    const/16 v6, -0x7c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 56
    const-string v10, "cccc"

    invoke-static/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 65
    invoke-virtual {p0, v3, p1, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 72
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    new-array v9, v2, [Ljava/lang/Object;

    aput-object p1, v9, v1

    const/16 v4, -0x7c

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 67
    const-string v8, "c"

    invoke-static/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 73
    invoke-virtual {p0, v3, p1, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void
.end method

.method public DrawRect(IIIIIZ)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a rectangle on the screen."
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 151
    const-string v3, "DrawRect"

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0xc1f

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v3, v4, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p6, :cond_1

    const/16 v4, 0x9

    goto :goto_0

    :cond_1
    const/16 v4, 0xa

    .line 161
    :goto_0
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    int-to-byte v0, p1

    .line 162
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    int-to-short v5, p2

    .line 163
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    int-to-short v6, p3

    .line 164
    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    int-to-short v7, p4

    .line 165
    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    move v8, p5

    int-to-short v8, v8

    .line 166
    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v1

    aput-object v0, v9, v2

    const/4 v0, 0x2

    aput-object v5, v9, v0

    const/4 v0, 0x3

    aput-object v6, v9, v0

    const/4 v0, 0x4

    aput-object v7, v9, v0

    const/4 v0, 0x5

    aput-object v8, v9, v0

    const/16 v0, -0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 156
    const-string v7, "cccccc"

    move-object p5, v7

    move-object/from16 p6, v9

    const/16 p1, -0x7c

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-static/range {p1 .. p6}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v0

    .line 167
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 174
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const/16 v0, -0x7c

    .line 169
    const-string v7, "c"

    move-object/from16 p6, v2

    move-object p5, v7

    const/16 p1, -0x7c

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-static/range {p1 .. p6}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v0

    .line 175
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void
.end method

.method public FillScreen(I)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Fill the screen with a color."
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 218
    const-string v2, "FillScreen"

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {p1, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v3, 0x13

    .line 228
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    int-to-byte p1, p1

    .line 229
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    .line 230
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    .line 231
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    const/4 v6, 0x4

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v3, v12, v0

    aput-object p1, v12, v1

    const/4 p1, 0x2

    aput-object v4, v12, p1

    const/4 p1, 0x3

    aput-object v5, v12, p1

    const/16 v7, -0x7c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 223
    const-string v11, "cccc"

    invoke-static/range {v7 .. v12}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 232
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 239
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    new-array v8, v1, [Ljava/lang/Object;

    aput-object p1, v8, v0

    const/16 v3, -0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 234
    const-string v7, "c"

    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 240
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void
.end method

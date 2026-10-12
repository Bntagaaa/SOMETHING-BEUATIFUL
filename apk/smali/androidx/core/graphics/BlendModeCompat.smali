.class public final enum Landroidx/core/graphics/BlendModeCompat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/core/graphics/BlendModeCompat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLEAR:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum COLOR:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation
.end field

.field public static final enum COLOR_BURN:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation
.end field

.field public static final enum COLOR_DODGE:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation
.end field

.field public static final enum DARKEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DIFFERENCE:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation
.end field

.field public static final enum DST:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_ATOP:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_IN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_OUT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_OVER:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum EXCLUSION:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation
.end field

.field public static final enum HARD_LIGHT:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation
.end field

.field public static final enum HUE:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation
.end field

.field public static final enum LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum LUMINOSITY:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation
.end field

.field public static final enum MODULATE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum MULTIPLY:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation
.end field

.field public static final enum OVERLAY:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum PLUS:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SATURATION:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation
.end field

.field public static final enum SCREEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SOFT_LIGHT:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation
.end field

.field public static final enum SRC:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_IN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_OUT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_OVER:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum XOR:Landroidx/core/graphics/BlendModeCompat;

.field public static final synthetic a:[Landroidx/core/graphics/BlendModeCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 53

    const/16 v8, 0xd

    const/16 v9, 0xc

    const/16 v10, 0xb

    const/16 v11, 0xa

    const/16 v12, 0x9

    const/16 v13, 0x8

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 37
    new-instance v6, Landroidx/core/graphics/BlendModeCompat;

    .line 27
    const-string v7, "CLEAR"

    invoke-direct {v6, v7, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v6, Landroidx/core/graphics/BlendModeCompat;->CLEAR:Landroidx/core/graphics/BlendModeCompat;

    .line 47
    new-instance v7, Landroidx/core/graphics/BlendModeCompat;

    const/16 v24, 0x0

    .line 27
    const-string v5, "SRC"

    invoke-direct {v7, v5, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v7, Landroidx/core/graphics/BlendModeCompat;->SRC:Landroidx/core/graphics/BlendModeCompat;

    .line 57
    new-instance v5, Landroidx/core/graphics/BlendModeCompat;

    const/16 v25, 0x1

    .line 27
    const-string v4, "DST"

    invoke-direct {v5, v4, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v5, Landroidx/core/graphics/BlendModeCompat;->DST:Landroidx/core/graphics/BlendModeCompat;

    .line 67
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    const/16 v26, 0x2

    .line 27
    const-string v3, "SRC_OVER"

    invoke-direct {v4, v3, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->SRC_OVER:Landroidx/core/graphics/BlendModeCompat;

    .line 77
    new-instance v3, Landroidx/core/graphics/BlendModeCompat;

    const/16 v27, 0x3

    .line 27
    const-string v2, "DST_OVER"

    invoke-direct {v3, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v3, Landroidx/core/graphics/BlendModeCompat;->DST_OVER:Landroidx/core/graphics/BlendModeCompat;

    .line 88
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    const/16 v28, 0x4

    .line 27
    const-string v1, "SRC_IN"

    invoke-direct {v2, v1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->SRC_IN:Landroidx/core/graphics/BlendModeCompat;

    .line 98
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    const/16 v29, 0x5

    .line 27
    const-string v0, "DST_IN"

    invoke-direct {v1, v0, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    sput-object v1, Landroidx/core/graphics/BlendModeCompat;->DST_IN:Landroidx/core/graphics/BlendModeCompat;

    .line 110
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    const/16 v30, 0x6

    .line 27
    const-string v15, "SRC_OUT"

    invoke-direct {v0, v15, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->SRC_OUT:Landroidx/core/graphics/BlendModeCompat;

    .line 122
    new-instance v15, Landroidx/core/graphics/BlendModeCompat;

    const/16 v31, 0x7

    .line 27
    const-string v14, "DST_OUT"

    invoke-direct {v15, v14, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    sput-object v15, Landroidx/core/graphics/BlendModeCompat;->DST_OUT:Landroidx/core/graphics/BlendModeCompat;

    .line 133
    new-instance v14, Landroidx/core/graphics/BlendModeCompat;

    const/16 v32, 0x8

    .line 27
    const-string v13, "SRC_ATOP"

    invoke-direct {v14, v13, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    sput-object v14, Landroidx/core/graphics/BlendModeCompat;->SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

    .line 144
    new-instance v13, Landroidx/core/graphics/BlendModeCompat;

    const/16 v33, 0x9

    .line 27
    const-string v12, "DST_ATOP"

    invoke-direct {v13, v12, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    sput-object v13, Landroidx/core/graphics/BlendModeCompat;->DST_ATOP:Landroidx/core/graphics/BlendModeCompat;

    .line 157
    new-instance v12, Landroidx/core/graphics/BlendModeCompat;

    const/16 v34, 0xa

    .line 27
    const-string v11, "XOR"

    invoke-direct {v12, v11, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 157
    sput-object v12, Landroidx/core/graphics/BlendModeCompat;->XOR:Landroidx/core/graphics/BlendModeCompat;

    .line 168
    new-instance v11, Landroidx/core/graphics/BlendModeCompat;

    const/16 v35, 0xb

    .line 27
    const-string v10, "PLUS"

    invoke-direct {v11, v10, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 168
    sput-object v11, Landroidx/core/graphics/BlendModeCompat;->PLUS:Landroidx/core/graphics/BlendModeCompat;

    .line 179
    new-instance v10, Landroidx/core/graphics/BlendModeCompat;

    const/16 v36, 0xc

    .line 27
    const-string v9, "MODULATE"

    invoke-direct {v10, v9, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 179
    sput-object v10, Landroidx/core/graphics/BlendModeCompat;->MODULATE:Landroidx/core/graphics/BlendModeCompat;

    .line 189
    new-instance v9, Landroidx/core/graphics/BlendModeCompat;

    const/16 v37, 0xd

    .line 27
    const-string v8, "SCREEN"

    move-object/from16 v38, v0

    const/16 v0, 0xe

    invoke-direct {v9, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 189
    sput-object v9, Landroidx/core/graphics/BlendModeCompat;->SCREEN:Landroidx/core/graphics/BlendModeCompat;

    .line 204
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    .line 27
    const-string v8, "OVERLAY"

    move-object/from16 v39, v1

    const/16 v1, 0xf

    invoke-direct {v0, v8, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 204
    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->OVERLAY:Landroidx/core/graphics/BlendModeCompat;

    .line 217
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    .line 27
    const-string v8, "DARKEN"

    move-object/from16 v40, v0

    const/16 v0, 0x10

    invoke-direct {v1, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 217
    sput-object v1, Landroidx/core/graphics/BlendModeCompat;->DARKEN:Landroidx/core/graphics/BlendModeCompat;

    .line 230
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    .line 27
    const-string v8, "LIGHTEN"

    move-object/from16 v41, v1

    const/16 v1, 0x11

    invoke-direct {v0, v8, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 230
    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

    .line 250
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    .line 27
    const-string v8, "COLOR_DODGE"

    move-object/from16 v42, v0

    const/16 v0, 0x12

    invoke-direct {v1, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 250
    sput-object v1, Landroidx/core/graphics/BlendModeCompat;->COLOR_DODGE:Landroidx/core/graphics/BlendModeCompat;

    .line 274
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    .line 27
    const-string v8, "COLOR_BURN"

    move-object/from16 v43, v1

    const/16 v1, 0x13

    invoke-direct {v0, v8, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 274
    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->COLOR_BURN:Landroidx/core/graphics/BlendModeCompat;

    .line 296
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    .line 27
    const-string v8, "HARD_LIGHT"

    move-object/from16 v44, v0

    const/16 v0, 0x14

    invoke-direct {v1, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 296
    sput-object v1, Landroidx/core/graphics/BlendModeCompat;->HARD_LIGHT:Landroidx/core/graphics/BlendModeCompat;

    .line 342
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    .line 27
    const-string v8, "SOFT_LIGHT"

    move-object/from16 v45, v1

    const/16 v1, 0x15

    invoke-direct {v0, v8, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 342
    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->SOFT_LIGHT:Landroidx/core/graphics/BlendModeCompat;

    .line 361
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    .line 27
    const-string v8, "DIFFERENCE"

    move-object/from16 v46, v0

    const/16 v0, 0x16

    invoke-direct {v1, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 361
    sput-object v1, Landroidx/core/graphics/BlendModeCompat;->DIFFERENCE:Landroidx/core/graphics/BlendModeCompat;

    .line 379
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    .line 27
    const-string v8, "EXCLUSION"

    move-object/from16 v47, v1

    const/16 v1, 0x17

    invoke-direct {v0, v8, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 379
    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->EXCLUSION:Landroidx/core/graphics/BlendModeCompat;

    .line 391
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    .line 27
    const-string v8, "MULTIPLY"

    move-object/from16 v48, v0

    const/16 v0, 0x18

    invoke-direct {v1, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 391
    sput-object v1, Landroidx/core/graphics/BlendModeCompat;->MULTIPLY:Landroidx/core/graphics/BlendModeCompat;

    .line 398
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    .line 27
    const-string v8, "HUE"

    move-object/from16 v49, v1

    const/16 v1, 0x19

    invoke-direct {v0, v8, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 398
    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->HUE:Landroidx/core/graphics/BlendModeCompat;

    .line 405
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    .line 27
    const-string v8, "SATURATION"

    move-object/from16 v50, v0

    const/16 v0, 0x1a

    invoke-direct {v1, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 405
    sput-object v1, Landroidx/core/graphics/BlendModeCompat;->SATURATION:Landroidx/core/graphics/BlendModeCompat;

    .line 412
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    .line 27
    const-string v8, "COLOR"

    move-object/from16 v51, v1

    const/16 v1, 0x1b

    invoke-direct {v0, v8, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 412
    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->COLOR:Landroidx/core/graphics/BlendModeCompat;

    .line 419
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    .line 27
    const-string v8, "LUMINOSITY"

    move-object/from16 v52, v0

    const/16 v0, 0x1c

    invoke-direct {v1, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 419
    sput-object v1, Landroidx/core/graphics/BlendModeCompat;->LUMINOSITY:Landroidx/core/graphics/BlendModeCompat;

    const/16 v0, 0x1d

    .line 27
    new-array v0, v0, [Landroidx/core/graphics/BlendModeCompat;

    aput-object v6, v0, v24

    aput-object v7, v0, v25

    aput-object v5, v0, v26

    aput-object v4, v0, v27

    aput-object v3, v0, v28

    aput-object v2, v0, v29

    aput-object v39, v0, v30

    aput-object v38, v0, v31

    aput-object v15, v0, v32

    aput-object v14, v0, v33

    aput-object v13, v0, v34

    aput-object v12, v0, v35

    aput-object v11, v0, v36

    aput-object v10, v0, v37

    const/16 v23, 0xe

    aput-object v9, v0, v23

    const/16 v22, 0xf

    aput-object v40, v0, v22

    const/16 v21, 0x10

    aput-object v41, v0, v21

    const/16 v20, 0x11

    aput-object v42, v0, v20

    const/16 v19, 0x12

    aput-object v43, v0, v19

    const/16 v18, 0x13

    aput-object v44, v0, v18

    const/16 v17, 0x14

    aput-object v45, v0, v17

    const/16 v16, 0x15

    aput-object v46, v0, v16

    const/16 v2, 0x16

    aput-object v47, v0, v2

    const/16 v2, 0x17

    aput-object v48, v0, v2

    const/16 v2, 0x18

    aput-object v49, v0, v2

    const/16 v2, 0x19

    aput-object v50, v0, v2

    const/16 v2, 0x1a

    aput-object v51, v0, v2

    const/16 v2, 0x1b

    aput-object v52, v0, v2

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 27
    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->a:[Landroidx/core/graphics/BlendModeCompat;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/core/graphics/BlendModeCompat;
    .locals 1

    .line 27
    const-class v0, Landroidx/core/graphics/BlendModeCompat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/core/graphics/BlendModeCompat;

    return-object p0
.end method

.method public static values()[Landroidx/core/graphics/BlendModeCompat;
    .locals 1

    .line 27
    sget-object v0, Landroidx/core/graphics/BlendModeCompat;->a:[Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v0}, [Landroidx/core/graphics/BlendModeCompat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/graphics/BlendModeCompat;

    return-object v0
.end method

.class public final enum Lcom/google/appinventor/components/common/ComponentCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/ComponentCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum CHARTS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum DATASCIENCE:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum EXTRAS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum FIREBASE:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum FUTURE:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MAPS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MATERIAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final b:Ljava/util/HashMap;

.field public static final synthetic c:[Lcom/google/appinventor/components/common/ComponentCategory;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 63

    .line 50
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "USERINTERFACE"

    const/4 v2, 0x0

    const-string v3, "User Interface"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 51
    new-instance v1, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v4, "LAYOUT"

    const/4 v5, 0x1

    const-string v6, "Layout"

    invoke-direct {v1, v4, v5, v6}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 52
    new-instance v4, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v7, "MATERIAL"

    const/4 v8, 0x2

    const-string v9, "Material Components"

    invoke-direct {v4, v7, v8, v9}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/ComponentCategory;->MATERIAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 53
    new-instance v7, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v10, "MEDIA"

    const/4 v11, 0x3

    const-string v12, "Media"

    invoke-direct {v7, v10, v11, v12}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 54
    new-instance v10, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v13, "ANIMATION"

    const/4 v14, 0x4

    const-string v15, "Drawing and Animation"

    invoke-direct {v10, v13, v14, v15}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 55
    new-instance v13, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v16, 0x0

    const-string v2, "MAPS"

    const/16 v17, 0x1

    const/4 v5, 0x5

    const/16 v18, 0x2

    const-string v8, "Maps"

    invoke-direct {v13, v2, v5, v8}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 56
    new-instance v2, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v19, 0x5

    const-string v5, "CHARTS"

    const/16 v20, 0x3

    const/4 v11, 0x6

    const/16 v21, 0x4

    const-string v14, "Charts"

    invoke-direct {v2, v5, v11, v14}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->CHARTS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 57
    new-instance v5, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v22, 0x6

    const-string v11, "EXTRAS"

    move-object/from16 v23, v0

    const/4 v0, 0x7

    move-object/from16 v24, v1

    const-string v1, "Extras"

    invoke-direct {v5, v11, v0, v1}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/common/ComponentCategory;->EXTRAS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 58
    new-instance v11, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v25, 0x7

    const-string v0, "DATASCIENCE"

    move-object/from16 v26, v2

    const/16 v2, 0x8

    move-object/from16 v27, v4

    const-string v4, "Data Science"

    invoke-direct {v11, v0, v2, v4}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/google/appinventor/components/common/ComponentCategory;->DATASCIENCE:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 59
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v28, 0x8

    const-string v2, "FIREBASE"

    move-object/from16 v29, v5

    const/16 v5, 0x9

    move-object/from16 v30, v7

    const-string v7, "Firebase"

    invoke-direct {v0, v2, v5, v7}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->FIREBASE:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 60
    new-instance v2, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v31, 0x9

    const-string v5, "SENSORS"

    move-object/from16 v32, v0

    const/16 v0, 0xa

    move-object/from16 v33, v10

    const-string v10, "Sensors"

    invoke-direct {v2, v5, v0, v10}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 61
    new-instance v5, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v34, 0xa

    const-string v0, "SOCIAL"

    move-object/from16 v35, v2

    const/16 v2, 0xb

    move-object/from16 v36, v11

    const-string v11, "Social"

    invoke-direct {v5, v0, v2, v11}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 62
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v37, 0xb

    const-string v2, "STORAGE"

    move-object/from16 v38, v5

    const/16 v5, 0xc

    move-object/from16 v39, v13

    const-string v13, "Storage"

    invoke-direct {v0, v2, v5, v13}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 63
    new-instance v2, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v40, 0xc

    const-string v5, "CONNECTIVITY"

    move-object/from16 v41, v0

    const/16 v0, 0xd

    move-object/from16 v42, v13

    const-string v13, "Connectivity"

    invoke-direct {v2, v5, v0, v13}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 64
    new-instance v5, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v43, 0xd

    const-string v0, "MONETIZATION"

    move-object/from16 v44, v2

    const/16 v2, 0xe

    move-object/from16 v45, v13

    const-string v13, "Monetization"

    invoke-direct {v5, v0, v2, v13}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 65
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v46, 0xe

    const-string v2, "LEGOMINDSTORMS"

    move-object/from16 v47, v5

    const/16 v5, 0xf

    move-object/from16 v48, v13

    const-string v13, "LEGO\u00ae MINDSTORMS\u00ae"

    invoke-direct {v0, v2, v5, v13}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 66
    new-instance v2, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v49, 0xf

    const-string v5, "EXPERIMENTAL"

    move-object/from16 v50, v0

    const/16 v0, 0x10

    move-object/from16 v51, v13

    const-string v13, "Experimental"

    invoke-direct {v2, v5, v0, v13}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 67
    new-instance v5, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v52, 0x10

    const-string v0, "EXTENSION"

    move-object/from16 v53, v2

    const/16 v2, 0x11

    move-object/from16 v54, v13

    const-string v13, "Extension"

    invoke-direct {v5, v0, v2, v13}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 68
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v55, 0x11

    const-string v2, "FUTURE"

    move-object/from16 v56, v5

    const/16 v5, 0x12

    move-object/from16 v57, v13

    const-string v13, "Future"

    invoke-direct {v0, v2, v5, v13}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->FUTURE:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 69
    new-instance v2, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v58, 0x12

    const-string v5, "For internal use only"

    move-object/from16 v59, v0

    const-string v0, "INTERNAL"

    move-object/from16 v60, v13

    const/16 v13, 0x13

    invoke-direct {v2, v0, v13, v5}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 71
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v5, "Uninitialized"

    const/16 v61, 0x13

    const-string v13, "UNINITIALIZED"

    move-object/from16 v62, v2

    const/16 v2, 0x14

    invoke-direct {v0, v13, v2, v5}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v5, 0x15

    .line 48
    new-array v5, v5, [Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v23, v5, v16

    aput-object v24, v5, v17

    aput-object v27, v5, v18

    aput-object v30, v5, v20

    aput-object v33, v5, v21

    aput-object v39, v5, v19

    aput-object v26, v5, v22

    aput-object v29, v5, v25

    aput-object v36, v5, v28

    aput-object v32, v5, v31

    aput-object v35, v5, v34

    aput-object v38, v5, v37

    aput-object v41, v5, v40

    aput-object v44, v5, v43

    aput-object v47, v5, v46

    aput-object v50, v5, v49

    aput-object v53, v5, v52

    aput-object v56, v5, v55

    aput-object v59, v5, v58

    aput-object v62, v5, v61

    aput-object v0, v5, v2

    .line 48
    sput-object v5, Lcom/google/appinventor/components/common/ComponentCategory;->c:[Lcom/google/appinventor/components/common/ComponentCategory;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->b:Ljava/util/HashMap;

    .line 78
    const-string v2, "userinterface"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v2, "layout"

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v2, "material"

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v2, "media"

    invoke-virtual {v0, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v2, "animation"

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v2, "maps"

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v2, "charts"

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v2, "extras"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "datascience"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "firebase"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "sensors"

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "social"

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "storage"

    move-object/from16 v2, v42

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "connectivity"

    move-object/from16 v2, v45

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "monetization"

    move-object/from16 v2, v48

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "legomindstorms"

    move-object/from16 v2, v51

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "experimental"

    move-object/from16 v2, v54

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "extension"

    move-object/from16 v2, v57

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "future"

    move-object/from16 v2, v60

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput-object p3, p0, Lcom/google/appinventor/components/common/ComponentCategory;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ComponentCategory;
    .locals 1

    .line 48
    const-class v0, Lcom/google/appinventor/components/common/ComponentCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ComponentCategory;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ComponentCategory;
    .locals 1

    .line 48
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->c:[Lcom/google/appinventor/components/common/ComponentCategory;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ComponentCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ComponentCategory;

    return-object v0
.end method


# virtual methods
.method public getDocName()Ljava/lang/String;
    .locals 2

    .line 126
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/appinventor/components/common/ComponentCategory;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/common/ComponentCategory;->a:Ljava/lang/String;

    return-object v0
.end method

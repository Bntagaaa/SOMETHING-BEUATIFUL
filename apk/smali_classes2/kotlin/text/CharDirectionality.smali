.class public final enum Lkotlin/text/CharDirectionality;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/CharDirectionality$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/text/CharDirectionality;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u001b\u0008\u0086\u0081\u0002\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0008R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlin/text/CharDirectionality;",
        "",
        "",
        "a",
        "I",
        "getValue",
        "()I",
        "value",
        "Companion",
        "UNDEFINED",
        "LEFT_TO_RIGHT",
        "RIGHT_TO_LEFT",
        "RIGHT_TO_LEFT_ARABIC",
        "EUROPEAN_NUMBER",
        "EUROPEAN_NUMBER_SEPARATOR",
        "EUROPEAN_NUMBER_TERMINATOR",
        "ARABIC_NUMBER",
        "COMMON_NUMBER_SEPARATOR",
        "NONSPACING_MARK",
        "BOUNDARY_NEUTRAL",
        "PARAGRAPH_SEPARATOR",
        "SEGMENT_SEPARATOR",
        "WHITESPACE",
        "OTHER_NEUTRALS",
        "LEFT_TO_RIGHT_EMBEDDING",
        "LEFT_TO_RIGHT_OVERRIDE",
        "RIGHT_TO_LEFT_EMBEDDING",
        "RIGHT_TO_LEFT_OVERRIDE",
        "POP_DIRECTIONAL_FORMAT",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCharDirectionality.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharDirectionality.kt\nkotlin/text/CharDirectionality\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1202#2,2:125\n1230#2,4:127\n*S KotlinDebug\n*F\n+ 1 CharDirectionality.kt\nkotlin/text/CharDirectionality\n*L\n118#1:125,2\n118#1:127,4\n*E\n"
    }
.end annotation


# static fields
.field public static final enum ARABIC_NUMBER:Lkotlin/text/CharDirectionality;

.field public static final enum BOUNDARY_NEUTRAL:Lkotlin/text/CharDirectionality;

.field public static final enum COMMON_NUMBER_SEPARATOR:Lkotlin/text/CharDirectionality;

.field public static final Companion:Lkotlin/text/CharDirectionality$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum EUROPEAN_NUMBER:Lkotlin/text/CharDirectionality;

.field public static final enum EUROPEAN_NUMBER_SEPARATOR:Lkotlin/text/CharDirectionality;

.field public static final enum EUROPEAN_NUMBER_TERMINATOR:Lkotlin/text/CharDirectionality;

.field public static final enum LEFT_TO_RIGHT:Lkotlin/text/CharDirectionality;

.field public static final enum LEFT_TO_RIGHT_EMBEDDING:Lkotlin/text/CharDirectionality;

.field public static final enum LEFT_TO_RIGHT_OVERRIDE:Lkotlin/text/CharDirectionality;

.field public static final enum NONSPACING_MARK:Lkotlin/text/CharDirectionality;

.field public static final enum OTHER_NEUTRALS:Lkotlin/text/CharDirectionality;

.field public static final enum PARAGRAPH_SEPARATOR:Lkotlin/text/CharDirectionality;

.field public static final enum POP_DIRECTIONAL_FORMAT:Lkotlin/text/CharDirectionality;

.field public static final enum RIGHT_TO_LEFT:Lkotlin/text/CharDirectionality;

.field public static final enum RIGHT_TO_LEFT_ARABIC:Lkotlin/text/CharDirectionality;

.field public static final enum RIGHT_TO_LEFT_EMBEDDING:Lkotlin/text/CharDirectionality;

.field public static final enum RIGHT_TO_LEFT_OVERRIDE:Lkotlin/text/CharDirectionality;

.field public static final enum SEGMENT_SEPARATOR:Lkotlin/text/CharDirectionality;

.field public static final enum UNDEFINED:Lkotlin/text/CharDirectionality;

.field public static final enum WHITESPACE:Lkotlin/text/CharDirectionality;

.field public static final b:Lkotlin/Lazy;

.field public static final synthetic c:[Lkotlin/text/CharDirectionality;

.field public static final synthetic d:Lkotlin/enums/EnumEntries;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 41

    .line 19
    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->UNDEFINED:Lkotlin/text/CharDirectionality;

    .line 24
    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string v3, "LEFT_TO_RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->LEFT_TO_RIGHT:Lkotlin/text/CharDirectionality;

    .line 29
    new-instance v3, Lkotlin/text/CharDirectionality;

    const-string v5, "RIGHT_TO_LEFT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lkotlin/text/CharDirectionality;->RIGHT_TO_LEFT:Lkotlin/text/CharDirectionality;

    .line 34
    new-instance v5, Lkotlin/text/CharDirectionality;

    const-string v7, "RIGHT_TO_LEFT_ARABIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lkotlin/text/CharDirectionality;->RIGHT_TO_LEFT_ARABIC:Lkotlin/text/CharDirectionality;

    .line 39
    new-instance v7, Lkotlin/text/CharDirectionality;

    const-string v9, "EUROPEAN_NUMBER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lkotlin/text/CharDirectionality;->EUROPEAN_NUMBER:Lkotlin/text/CharDirectionality;

    .line 44
    new-instance v9, Lkotlin/text/CharDirectionality;

    const-string v11, "EUROPEAN_NUMBER_SEPARATOR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lkotlin/text/CharDirectionality;->EUROPEAN_NUMBER_SEPARATOR:Lkotlin/text/CharDirectionality;

    .line 49
    new-instance v11, Lkotlin/text/CharDirectionality;

    const-string v13, "EUROPEAN_NUMBER_TERMINATOR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lkotlin/text/CharDirectionality;->EUROPEAN_NUMBER_TERMINATOR:Lkotlin/text/CharDirectionality;

    .line 54
    new-instance v13, Lkotlin/text/CharDirectionality;

    const-string v15, "ARABIC_NUMBER"

    const/16 v16, 0x1

    const/4 v4, 0x7

    invoke-direct {v13, v15, v4, v14}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lkotlin/text/CharDirectionality;->ARABIC_NUMBER:Lkotlin/text/CharDirectionality;

    .line 59
    new-instance v15, Lkotlin/text/CharDirectionality;

    const/16 v17, 0x2

    const-string v6, "COMMON_NUMBER_SEPARATOR"

    const/16 v18, 0x3

    const/16 v8, 0x8

    invoke-direct {v15, v6, v8, v4}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lkotlin/text/CharDirectionality;->COMMON_NUMBER_SEPARATOR:Lkotlin/text/CharDirectionality;

    .line 64
    new-instance v6, Lkotlin/text/CharDirectionality;

    const/16 v19, 0x7

    const-string v4, "NONSPACING_MARK"

    const/16 v20, 0x4

    const/16 v10, 0x9

    invoke-direct {v6, v4, v10, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lkotlin/text/CharDirectionality;->NONSPACING_MARK:Lkotlin/text/CharDirectionality;

    .line 69
    new-instance v4, Lkotlin/text/CharDirectionality;

    const/16 v21, 0x8

    const-string v8, "BOUNDARY_NEUTRAL"

    const/16 v22, 0x5

    const/16 v12, 0xa

    invoke-direct {v4, v8, v12, v10}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lkotlin/text/CharDirectionality;->BOUNDARY_NEUTRAL:Lkotlin/text/CharDirectionality;

    .line 74
    new-instance v8, Lkotlin/text/CharDirectionality;

    const/16 v23, 0x9

    const-string v10, "PARAGRAPH_SEPARATOR"

    const/16 v24, 0x6

    const/16 v14, 0xb

    invoke-direct {v8, v10, v14, v12}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lkotlin/text/CharDirectionality;->PARAGRAPH_SEPARATOR:Lkotlin/text/CharDirectionality;

    .line 79
    new-instance v10, Lkotlin/text/CharDirectionality;

    const/16 v25, 0xa

    const-string v12, "SEGMENT_SEPARATOR"

    const/16 v26, 0x0

    const/16 v2, 0xc

    invoke-direct {v10, v12, v2, v14}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lkotlin/text/CharDirectionality;->SEGMENT_SEPARATOR:Lkotlin/text/CharDirectionality;

    .line 84
    new-instance v12, Lkotlin/text/CharDirectionality;

    const/16 v27, 0xb

    const-string v14, "WHITESPACE"

    move-object/from16 v28, v0

    const/16 v0, 0xd

    invoke-direct {v12, v14, v0, v2}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lkotlin/text/CharDirectionality;->WHITESPACE:Lkotlin/text/CharDirectionality;

    .line 89
    new-instance v14, Lkotlin/text/CharDirectionality;

    const/16 v29, 0xc

    const-string v2, "OTHER_NEUTRALS"

    move-object/from16 v30, v1

    const/16 v1, 0xe

    invoke-direct {v14, v2, v1, v0}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lkotlin/text/CharDirectionality;->OTHER_NEUTRALS:Lkotlin/text/CharDirectionality;

    .line 94
    new-instance v2, Lkotlin/text/CharDirectionality;

    const/16 v31, 0xd

    const-string v0, "LEFT_TO_RIGHT_EMBEDDING"

    move-object/from16 v32, v3

    const/16 v3, 0xf

    invoke-direct {v2, v0, v3, v1}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkotlin/text/CharDirectionality;->LEFT_TO_RIGHT_EMBEDDING:Lkotlin/text/CharDirectionality;

    .line 99
    new-instance v0, Lkotlin/text/CharDirectionality;

    const/16 v33, 0xe

    const-string v1, "LEFT_TO_RIGHT_OVERRIDE"

    move-object/from16 v34, v2

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->LEFT_TO_RIGHT_OVERRIDE:Lkotlin/text/CharDirectionality;

    .line 104
    new-instance v1, Lkotlin/text/CharDirectionality;

    const/16 v35, 0xf

    const-string v3, "RIGHT_TO_LEFT_EMBEDDING"

    move-object/from16 v36, v0

    const/16 v0, 0x11

    invoke-direct {v1, v3, v0, v2}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->RIGHT_TO_LEFT_EMBEDDING:Lkotlin/text/CharDirectionality;

    .line 109
    new-instance v3, Lkotlin/text/CharDirectionality;

    const/16 v37, 0x10

    const-string v2, "RIGHT_TO_LEFT_OVERRIDE"

    move-object/from16 v38, v1

    const/16 v1, 0x12

    invoke-direct {v3, v2, v1, v0}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lkotlin/text/CharDirectionality;->RIGHT_TO_LEFT_OVERRIDE:Lkotlin/text/CharDirectionality;

    .line 114
    new-instance v2, Lkotlin/text/CharDirectionality;

    const/16 v39, 0x11

    const-string v0, "POP_DIRECTIONAL_FORMAT"

    move-object/from16 v40, v3

    const/16 v3, 0x13

    invoke-direct {v2, v0, v3, v1}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkotlin/text/CharDirectionality;->POP_DIRECTIONAL_FORMAT:Lkotlin/text/CharDirectionality;

    const/16 v0, 0x14

    .line 0
    new-array v0, v0, [Lkotlin/text/CharDirectionality;

    aput-object v28, v0, v26

    aput-object v30, v0, v16

    aput-object v32, v0, v17

    aput-object v5, v0, v18

    aput-object v7, v0, v20

    aput-object v9, v0, v22

    aput-object v11, v0, v24

    aput-object v13, v0, v19

    aput-object v15, v0, v21

    aput-object v6, v0, v23

    aput-object v4, v0, v25

    aput-object v8, v0, v27

    aput-object v10, v0, v29

    aput-object v12, v0, v31

    aput-object v14, v0, v33

    aput-object v34, v0, v35

    aput-object v36, v0, v37

    aput-object v38, v0, v39

    aput-object v40, v0, v1

    aput-object v2, v0, v3

    .line 114
    sput-object v0, Lkotlin/text/CharDirectionality;->c:[Lkotlin/text/CharDirectionality;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lkotlin/text/CharDirectionality;->d:Lkotlin/enums/EnumEntries;

    new-instance v0, Lkotlin/text/CharDirectionality$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/text/CharDirectionality$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/text/CharDirectionality;->Companion:Lkotlin/text/CharDirectionality$Companion;

    .line 118
    new-instance v0, Lkotlin/text/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/text/a;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lkotlin/text/CharDirectionality;->b:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/text/CharDirectionality;->a:I

    return-void
.end method

.method public static final synthetic access$getDirectionalityMap$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 13
    sget-object v0, Lkotlin/text/CharDirectionality;->b:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lkotlin/text/CharDirectionality;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/text/CharDirectionality;->d:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/text/CharDirectionality;
    .locals 1

    const-class v0, Lkotlin/text/CharDirectionality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 123
    check-cast p0, Lkotlin/text/CharDirectionality;

    return-object p0
.end method

.method public static values()[Lkotlin/text/CharDirectionality;
    .locals 1

    sget-object v0, Lkotlin/text/CharDirectionality;->c:[Lkotlin/text/CharDirectionality;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 123
    check-cast v0, [Lkotlin/text/CharDirectionality;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 13
    iget v0, p0, Lkotlin/text/CharDirectionality;->a:I

    return v0
.end method

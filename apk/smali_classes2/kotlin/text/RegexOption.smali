.class public final enum Lkotlin/text/RegexOption;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkotlin/text/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/text/RegexOption;",
        ">;",
        "Lkotlin/text/d;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002R\u001a\u0010\u0008\u001a\u00020\u00038\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u000b\u001a\u00020\u00038\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0005\u001a\u0004\u0008\n\u0010\u0007j\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlin/text/RegexOption;",
        "Lkotlin/text/d;",
        "",
        "",
        "a",
        "I",
        "getValue",
        "()I",
        "value",
        "b",
        "getMask",
        "mask",
        "IGNORE_CASE",
        "MULTILINE",
        "LITERAL",
        "UNIX_LINES",
        "COMMENTS",
        "DOT_MATCHES_ALL",
        "CANON_EQ",
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


# static fields
.field public static final enum CANON_EQ:Lkotlin/text/RegexOption;

.field public static final enum COMMENTS:Lkotlin/text/RegexOption;

.field public static final enum DOT_MATCHES_ALL:Lkotlin/text/RegexOption;

.field public static final enum IGNORE_CASE:Lkotlin/text/RegexOption;

.field public static final enum LITERAL:Lkotlin/text/RegexOption;

.field public static final enum MULTILINE:Lkotlin/text/RegexOption;

.field public static final enum UNIX_LINES:Lkotlin/text/RegexOption;

.field public static final synthetic c:[Lkotlin/text/RegexOption;

.field public static final synthetic d:Lkotlin/enums/EnumEntries;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 33
    new-instance v0, Lkotlin/text/RegexOption;

    const-string v1, "IGNORE_CASE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    .line 39
    new-instance v1, Lkotlin/text/RegexOption;

    const/16 v4, 0x8

    const-string v5, "MULTILINE"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v4}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/RegexOption;->MULTILINE:Lkotlin/text/RegexOption;

    .line 47
    new-instance v4, Lkotlin/text/RegexOption;

    const-string v5, "LITERAL"

    const/16 v7, 0x10

    invoke-direct {v4, v5, v3, v7}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lkotlin/text/RegexOption;->LITERAL:Lkotlin/text/RegexOption;

    .line 54
    new-instance v5, Lkotlin/text/RegexOption;

    const-string v7, "UNIX_LINES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lkotlin/text/RegexOption;->UNIX_LINES:Lkotlin/text/RegexOption;

    .line 57
    new-instance v7, Lkotlin/text/RegexOption;

    const-string v9, "COMMENTS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lkotlin/text/RegexOption;->COMMENTS:Lkotlin/text/RegexOption;

    .line 60
    new-instance v9, Lkotlin/text/RegexOption;

    const/4 v11, 0x5

    const/16 v12, 0x20

    const-string v13, "DOT_MATCHES_ALL"

    invoke-direct {v9, v13, v11, v12}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lkotlin/text/RegexOption;->DOT_MATCHES_ALL:Lkotlin/text/RegexOption;

    .line 63
    new-instance v12, Lkotlin/text/RegexOption;

    const/4 v13, 0x6

    const/16 v14, 0x80

    const-string v15, "CANON_EQ"

    invoke-direct {v12, v15, v13, v14}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lkotlin/text/RegexOption;->CANON_EQ:Lkotlin/text/RegexOption;

    const/4 v14, 0x7

    .line 0
    new-array v14, v14, [Lkotlin/text/RegexOption;

    aput-object v0, v14, v2

    aput-object v1, v14, v6

    aput-object v4, v14, v3

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    aput-object v9, v14, v11

    aput-object v12, v14, v13

    .line 63
    sput-object v14, Lkotlin/text/RegexOption;->c:[Lkotlin/text/RegexOption;

    invoke-static {v14}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lkotlin/text/RegexOption;->d:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/text/RegexOption;->a:I

    iput p3, p0, Lkotlin/text/RegexOption;->b:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lkotlin/text/RegexOption;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/text/RegexOption;->d:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/text/RegexOption;
    .locals 1

    const-class v0, Lkotlin/text/RegexOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 64
    check-cast p0, Lkotlin/text/RegexOption;

    return-object p0
.end method

.method public static values()[Lkotlin/text/RegexOption;
    .locals 1

    sget-object v0, Lkotlin/text/RegexOption;->c:[Lkotlin/text/RegexOption;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 64
    check-cast v0, [Lkotlin/text/RegexOption;

    return-object v0
.end method


# virtual methods
.method public getMask()I
    .locals 1

    .line 29
    iget v0, p0, Lkotlin/text/RegexOption;->b:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 29
    iget v0, p0, Lkotlin/text/RegexOption;->a:I

    return v0
.end method

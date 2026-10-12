.class public final enum Ljavax/annotation/meta/When;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/annotation/meta/When;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALWAYS:Ljavax/annotation/meta/When;

.field public static final enum MAYBE:Ljavax/annotation/meta/When;

.field public static final enum NEVER:Ljavax/annotation/meta/When;

.field public static final enum UNKNOWN:Ljavax/annotation/meta/When;

.field public static final synthetic a:[Ljavax/annotation/meta/When;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v4, Ljavax/annotation/meta/When;

    .line 13
    const-string v5, "ALWAYS"

    invoke-direct {v4, v5, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v4, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    .line 17
    new-instance v5, Ljavax/annotation/meta/When;

    .line 13
    const-string v6, "UNKNOWN"

    invoke-direct {v5, v6, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v5, Ljavax/annotation/meta/When;->UNKNOWN:Ljavax/annotation/meta/When;

    .line 19
    new-instance v6, Ljavax/annotation/meta/When;

    .line 13
    const-string v7, "MAYBE"

    invoke-direct {v6, v7, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v6, Ljavax/annotation/meta/When;->MAYBE:Ljavax/annotation/meta/When;

    .line 21
    new-instance v7, Ljavax/annotation/meta/When;

    .line 13
    const-string v8, "NEVER"

    invoke-direct {v7, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    sput-object v7, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    const/4 v8, 0x4

    .line 13
    new-array v8, v8, [Ljavax/annotation/meta/When;

    aput-object v4, v8, v3

    aput-object v5, v8, v2

    aput-object v6, v8, v1

    aput-object v7, v8, v0

    sput-object v8, Ljavax/annotation/meta/When;->a:[Ljavax/annotation/meta/When;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/annotation/meta/When;
    .locals 1

    .line 13
    const-class v0, Ljavax/annotation/meta/When;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/annotation/meta/When;

    return-object p0
.end method

.method public static values()[Ljavax/annotation/meta/When;
    .locals 1

    .line 13
    sget-object v0, Ljavax/annotation/meta/When;->a:[Ljavax/annotation/meta/When;

    invoke-virtual {v0}, [Ljavax/annotation/meta/When;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/annotation/meta/When;

    return-object v0
.end method

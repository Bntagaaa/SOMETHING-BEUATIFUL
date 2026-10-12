.class public final enum Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ConcatAdapter$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StableIdMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ISOLATED_STABLE_IDS:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

.field public static final enum NO_STABLE_IDS:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

.field public static final enum SHARED_STABLE_IDS:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

.field public static final synthetic a:[Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 402
    new-instance v3, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 395
    const-string v4, "NO_STABLE_IDS"

    invoke-direct {v3, v4, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 402
    sput-object v3, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 416
    new-instance v4, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 395
    const-string v5, "ISOLATED_STABLE_IDS"

    invoke-direct {v4, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 416
    sput-object v4, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->ISOLATED_STABLE_IDS:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 427
    new-instance v5, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 395
    const-string v6, "SHARED_STABLE_IDS"

    invoke-direct {v5, v6, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 427
    sput-object v5, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->SHARED_STABLE_IDS:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    const/4 v6, 0x3

    .line 395
    new-array v6, v6, [Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    aput-object v3, v6, v2

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    sput-object v6, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->a:[Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;
    .locals 1

    .line 395
    const-class v0, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    return-object p0
.end method

.method public static values()[Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;
    .locals 1

    .line 395
    sget-object v0, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->a:[Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    invoke-virtual {v0}, [Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    return-object v0
.end method

.class Landroidx/activity/result/ActivityResultRegistry$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/ActivityResultRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/activity/result/ActivityResultCallback;

.field public final b:Landroidx/activity/result/contract/ActivityResultContract;


# direct methods
.method public constructor <init>(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$d;->a:Landroidx/activity/result/ActivityResultCallback;

    .line 467
    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$d;->b:Landroidx/activity/result/contract/ActivityResultContract;

    return-void
.end method

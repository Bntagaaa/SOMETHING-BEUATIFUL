.class Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$a;->a:Ljava/util/ArrayList;

    const/4 v0, 0x5

    .line 6205
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$a;->b:I

    const-wide/16 v0, 0x0

    .line 6206
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$a;->c:J

    .line 6207
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$a;->d:J

    return-void
.end method

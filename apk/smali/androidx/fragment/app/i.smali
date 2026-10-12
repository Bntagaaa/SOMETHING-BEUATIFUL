.class Landroidx/fragment/app/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/b1$c;

.field public final synthetic b:Landroidx/fragment/app/b1$c;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/b1$c;Landroidx/fragment/app/b1$c;ZLandroidx/collection/ArrayMap;)V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/b1$c;

    iput-object p2, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/b1$c;

    iput-boolean p3, p0, Landroidx/fragment/app/i;->c:Z

    iput-object p4, p0, Landroidx/fragment/app/i;->d:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 457
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/b1$c;

    .line 458
    invoke-virtual {v0}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/b1$c;

    invoke-virtual {v1}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/i;->d:Landroidx/collection/ArrayMap;

    const/4 v3, 0x0

    .line 457
    iget-boolean v4, p0, Landroidx/fragment/app/i;->c:Z

    invoke-static {v0, v1, v4, v2, v3}, Landroidx/fragment/app/s0;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    return-void
.end method

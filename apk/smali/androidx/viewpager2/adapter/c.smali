.class Landroidx/viewpager2/adapter/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/viewpager2/adapter/FragmentStateAdapter;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;)V
    .locals 0

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/adapter/c;->a:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    .line 596
    iget-object v1, p0, Landroidx/viewpager2/adapter/c;->a:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    iput-boolean v0, v1, Landroidx/viewpager2/adapter/FragmentStateAdapter;->h:Z

    .line 597
    invoke-virtual {v1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->b()V

    return-void
.end method

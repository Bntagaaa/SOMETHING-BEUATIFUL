.class Landroidx/viewpager2/adapter/f;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/viewpager2/adapter/FragmentStateAdapter$c;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/FragmentStateAdapter$c;)V
    .locals 0

    .line 660
    iput-object p1, p0, Landroidx/viewpager2/adapter/f;->a:Landroidx/viewpager2/adapter/FragmentStateAdapter$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 663
    iget-object v0, p0, Landroidx/viewpager2/adapter/f;->a:Landroidx/viewpager2/adapter/FragmentStateAdapter$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$c;->b(Z)V

    return-void
.end method

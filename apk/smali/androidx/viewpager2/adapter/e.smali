.class Landroidx/viewpager2/adapter/e;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/viewpager2/adapter/FragmentStateAdapter$c;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/FragmentStateAdapter$c;)V
    .locals 0

    .line 646
    iput-object p1, p0, Landroidx/viewpager2/adapter/e;->a:Landroidx/viewpager2/adapter/FragmentStateAdapter$c;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 649
    iget-object p1, p0, Landroidx/viewpager2/adapter/e;->a:Landroidx/viewpager2/adapter/FragmentStateAdapter$c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$c;->b(Z)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 654
    iget-object p1, p0, Landroidx/viewpager2/adapter/e;->a:Landroidx/viewpager2/adapter/FragmentStateAdapter$c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$c;->b(Z)V

    return-void
.end method

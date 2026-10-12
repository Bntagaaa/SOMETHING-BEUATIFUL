.class abstract Landroidx/viewpager2/adapter/FragmentStateAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/adapter/FragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 769
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 769
    invoke-direct {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onChanged()V
.end method

.method public final onItemRangeChanged(II)V
    .locals 0

    .line 775
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$a;->onChanged()V

    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 781
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$a;->onChanged()V

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 0

    .line 786
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$a;->onChanged()V

    return-void
.end method

.method public final onItemRangeMoved(III)V
    .locals 0

    .line 796
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$a;->onChanged()V

    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 0

    .line 791
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$a;->onChanged()V

    return-void
.end method

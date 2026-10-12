.class Landroidx/recyclerview/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/r$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

.field public final b:Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;

.field public final c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final d:Landroidx/recyclerview/widget/c;

.field public e:I

.field public final f:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/c;Landroidx/recyclerview/widget/ViewTypeStorage;Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroidx/recyclerview/widget/r$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/r$a;-><init>(Landroidx/recyclerview/widget/r;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/r;->f:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 127
    iput-object p1, p0, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 128
    iput-object p2, p0, Landroidx/recyclerview/widget/r;->d:Landroidx/recyclerview/widget/c;

    .line 129
    invoke-interface {p3, p0}, Landroidx/recyclerview/widget/ViewTypeStorage;->createViewTypeWrapper(Landroidx/recyclerview/widget/r;)Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/r;->a:Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    .line 130
    iput-object p4, p0, Landroidx/recyclerview/widget/r;->b:Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;

    .line 131
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/r;->e:I

    .line 132
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    .line 161
    iget-object v0, p0, Landroidx/recyclerview/widget/r;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    .line 162
    iget-object p1, p0, Landroidx/recyclerview/widget/r;->b:Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;

    invoke-interface {p1, v0, v1}, Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;->localToGlobal(J)J

    move-result-wide v0

    return-wide v0
.end method

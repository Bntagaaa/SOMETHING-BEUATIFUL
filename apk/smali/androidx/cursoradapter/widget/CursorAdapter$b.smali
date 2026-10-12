.class Landroidx/cursoradapter/widget/CursorAdapter$b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/cursoradapter/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/cursoradapter/widget/CursorAdapter;


# direct methods
.method public constructor <init>(Landroidx/cursoradapter/widget/CursorAdapter;)V
    .locals 0

    .line 492
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter$b;->a:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    const/4 v0, 0x1

    .line 497
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter$b;->a:Landroidx/cursoradapter/widget/CursorAdapter;

    iput-boolean v0, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 498
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    const/4 v0, 0x0

    .line 503
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter$b;->a:Landroidx/cursoradapter/widget/CursorAdapter;

    iput-boolean v0, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 504
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

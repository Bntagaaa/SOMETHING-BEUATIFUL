.class Landroidx/appcompat/widget/AppCompatTextView$c;
.super Landroidx/appcompat/widget/AppCompatTextView$b;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1c
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 884
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView$c;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView$b;-><init>(Landroidx/appcompat/widget/AppCompatTextView;)V

    return-void
.end method


# virtual methods
.method public setFirstBaselineToTopHeight(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 888
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$c;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->b(Landroidx/appcompat/widget/AppCompatTextView;I)V

    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 893
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$c;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->d(Landroidx/appcompat/widget/AppCompatTextView;I)V

    return-void
.end method

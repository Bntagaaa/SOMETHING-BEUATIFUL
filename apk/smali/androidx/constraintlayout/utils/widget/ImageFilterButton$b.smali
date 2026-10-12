.class Landroidx/constraintlayout/utils/widget/ImageFilterButton$b;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setRound(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/constraintlayout/utils/widget/ImageFilterButton;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/utils/widget/ImageFilterButton;)V
    .locals 0

    .line 332
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton$b;->a:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 335
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton$b;->a:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 81
    iget v5, p1, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->g:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    .line 337
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method

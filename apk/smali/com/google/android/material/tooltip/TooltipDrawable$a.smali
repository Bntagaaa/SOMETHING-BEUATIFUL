.class Lcom/google/android/material/tooltip/TooltipDrawable$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tooltip/TooltipDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/tooltip/TooltipDrawable;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tooltip/TooltipDrawable;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable$a;->a:Lcom/google/android/material/tooltip/TooltipDrawable;

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 92
    sget p2, Lcom/google/android/material/tooltip/TooltipDrawable;->O:I

    .line 65
    iget-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable$a;->a:Lcom/google/android/material/tooltip/TooltipDrawable;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x2

    .line 460
    new-array p3, p3, [I

    .line 461
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p4, 0x0

    .line 462
    aget p3, p3, p4

    iput p3, p2, Lcom/google/android/material/tooltip/TooltipDrawable;->J:I

    .line 463
    iget-object p2, p2, Lcom/google/android/material/tooltip/TooltipDrawable;->D:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method

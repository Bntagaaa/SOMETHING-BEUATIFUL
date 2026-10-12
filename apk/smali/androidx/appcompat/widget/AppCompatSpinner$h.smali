.class Landroidx/appcompat/widget/AppCompatSpinner$h;
.super Landroidx/appcompat/widget/ListPopupWindow;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/AppCompatSpinner$j;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public J:Ljava/lang/CharSequence;

.field public K:Landroid/widget/ListAdapter;

.field public final L:Landroid/graphics/Rect;

.field public M:I

.field public final synthetic N:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 974
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$h;->N:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 975
    invoke-direct {p0, p2, p3, p4}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 971
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner$h;->L:Landroid/graphics/Rect;

    .line 977
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 978
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    const/4 p1, 0x0

    .line 979
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 981
    new-instance p1, Landroidx/appcompat/widget/AppCompatSpinner$h$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatSpinner$h$a;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$h;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public static synthetic b(Landroidx/appcompat/widget/AppCompatSpinner$h;)V
    .locals 0

    .line 968
    invoke-super {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 9

    .line 1012
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1014
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$h;->N:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v0, :cond_1

    .line 1015
    iget-object v2, v1, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1016
    invoke-static {v1}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1017
    :cond_0
    iget-object v0, v1, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_0

    .line 1019
    :cond_1
    iget-object v0, v1, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    .line 1022
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 1023
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 1024
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 1025
    iget v5, v1, Landroidx/appcompat/widget/AppCompatSpinner;->g:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    .line 1026
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatSpinner$h;->K:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    .line 1027
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1026
    invoke-virtual {v1, v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v5

    .line 1028
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1029
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, v1, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_2

    move v5, v6

    :cond_2
    sub-int v6, v4, v2

    sub-int/2addr v6, v3

    .line 1033
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    goto :goto_1

    :cond_3
    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    .line 1036
    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    goto :goto_1

    .line 1038
    :cond_4
    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 1040
    :goto_1
    invoke-static {v1}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    sub-int/2addr v4, v3

    .line 1041
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getWidth()I

    move-result v1

    sub-int/2addr v4, v1

    .line 1042
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->getHorizontalOriginalOffset()I

    move-result v1

    sub-int/2addr v4, v1

    add-int/2addr v4, v0

    goto :goto_2

    .line 1044
    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->getHorizontalOriginalOffset()I

    move-result v1

    add-int/2addr v2, v1

    add-int v4, v2, v0

    .line 1046
    :goto_2
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->setHorizontalOffset(I)V

    return-void
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 1002
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$h;->J:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOriginalOffset()I
    .locals 1

    .line 1118
    iget v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$h;->M:I

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 996
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 997
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$h;->K:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .locals 0

    .line 1113
    iput p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$h;->M:I

    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1008
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$h;->J:Ljava/lang/CharSequence;

    return-void
.end method

.method public show(II)V
    .locals 3

    .line 1051
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 1053
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->c()V

    const/4 v1, 0x2

    .line 1055
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1056
    invoke-super {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 1057
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    .line 1058
    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 1060
    invoke-static {v1, p1}, Landroidx/appcompat/widget/AppCompatSpinner$d;->d(Landroid/view/View;I)V

    .line 1061
    invoke-static {v1, p2}, Landroidx/appcompat/widget/AppCompatSpinner$d;->c(Landroid/view/View;I)V

    .line 1063
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$h;->N:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setSelection(I)V

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1074
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1076
    new-instance p2, Landroidx/appcompat/widget/AppCompatSpinner$h$b;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/AppCompatSpinner$h$b;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$h;)V

    .line 1091
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1092
    new-instance p1, Landroidx/appcompat/widget/AppCompatSpinner$h$c;

    invoke-direct {p1, p0, p2}, Landroidx/appcompat/widget/AppCompatSpinner$h$c;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$h;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_1
    :goto_0
    return-void
.end method

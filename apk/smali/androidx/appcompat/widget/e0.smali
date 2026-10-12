.class Landroidx/appcompat/widget/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static k:Landroidx/appcompat/widget/e0;

.field public static l:Landroidx/appcompat/widget/e0;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Ljava/lang/CharSequence;

.field public final c:I

.field public final d:Landroidx/appcompat/widget/d0;

.field public final e:Landroidx/appcompat/widget/d0;

.field public f:I

.field public g:I

.field public h:Landroidx/appcompat/widget/f0;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroidx/appcompat/widget/d0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/d0;-><init>(Landroidx/appcompat/widget/e0;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/e0;->d:Landroidx/appcompat/widget/d0;

    .line 55
    new-instance v0, Landroidx/appcompat/widget/d0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/d0;-><init>(Landroidx/appcompat/widget/e0;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/e0;->e:Landroidx/appcompat/widget/d0;

    .line 100
    iput-object p1, p0, Landroidx/appcompat/widget/e0;->a:Landroid/view/View;

    .line 101
    iput-object p2, p0, Landroidx/appcompat/widget/e0;->b:Ljava/lang/CharSequence;

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 102
    invoke-static {p2}, Landroidx/core/view/ViewConfigurationCompat;->getScaledHoverSlop(Landroid/view/ViewConfiguration;)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/e0;->c:I

    const/4 p2, 0x1

    .line 245
    iput-boolean p2, p0, Landroidx/appcompat/widget/e0;->j:Z

    .line 106
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 107
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public static b(Landroidx/appcompat/widget/e0;)V
    .locals 3

    .line 203
    sget-object v0, Landroidx/appcompat/widget/e0;->k:Landroidx/appcompat/widget/e0;

    if-eqz v0, :cond_0

    .line 217
    iget-object v1, v0, Landroidx/appcompat/widget/e0;->d:Landroidx/appcompat/widget/d0;

    .line 217
    iget-object v0, v0, Landroidx/appcompat/widget/e0;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 206
    :cond_0
    sput-object p0, Landroidx/appcompat/widget/e0;->k:Landroidx/appcompat/widget/e0;

    if-eqz p0, :cond_1

    .line 213
    iget-object v0, p0, Landroidx/appcompat/widget/e0;->d:Landroidx/appcompat/widget/d0;

    .line 213
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    iget-object p0, p0, Landroidx/appcompat/widget/e0;->a:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .line 84
    sget-object v0, Landroidx/appcompat/widget/e0;->k:Landroidx/appcompat/widget/e0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/e0;->a:Landroid/view/View;

    if-ne v0, p0, :cond_0

    .line 85
    invoke-static {v1}, Landroidx/appcompat/widget/e0;->b(Landroidx/appcompat/widget/e0;)V

    .line 87
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    sget-object p1, Landroidx/appcompat/widget/e0;->l:Landroidx/appcompat/widget/e0;

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/appcompat/widget/e0;->a:Landroid/view/View;

    if-ne v0, p0, :cond_1

    .line 89
    invoke-virtual {p1}, Landroidx/appcompat/widget/e0;->a()V

    .line 91
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 93
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void

    .line 95
    :cond_2
    new-instance v0, Landroidx/appcompat/widget/e0;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/e0;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 185
    sget-object v0, Landroidx/appcompat/widget/e0;->l:Landroidx/appcompat/widget/e0;

    iget-object v1, p0, Landroidx/appcompat/widget/e0;->a:Landroid/view/View;

    const/4 v2, 0x0

    if-ne v0, p0, :cond_2

    .line 186
    sput-object v2, Landroidx/appcompat/widget/e0;->l:Landroidx/appcompat/widget/e0;

    .line 187
    iget-object v0, p0, Landroidx/appcompat/widget/e0;->h:Landroidx/appcompat/widget/f0;

    if-eqz v0, :cond_1

    .line 100
    iget-object v3, v0, Landroidx/appcompat/widget/f0;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 95
    iget-object v0, v0, Landroidx/appcompat/widget/f0;->a:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 96
    invoke-interface {v0, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 189
    :cond_0
    iput-object v2, p0, Landroidx/appcompat/widget/e0;->h:Landroidx/appcompat/widget/f0;

    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Landroidx/appcompat/widget/e0;->j:Z

    .line 191
    invoke-virtual {v1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    .line 193
    :cond_1
    const-string v0, "TooltipCompatHandler"

    const-string v3, "sActiveHandler.mPopup == null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_2
    :goto_0
    sget-object v0, Landroidx/appcompat/widget/e0;->k:Landroidx/appcompat/widget/e0;

    if-ne v0, p0, :cond_3

    .line 197
    invoke-static {v2}, Landroidx/appcompat/widget/e0;->b(Landroidx/appcompat/widget/e0;)V

    .line 199
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/e0;->e:Landroidx/appcompat/widget/d0;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Z)V
    .locals 20

    move-object/from16 v0, p0

    .line 155
    iget-object v1, v0, Landroidx/appcompat/widget/e0;->a:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 159
    invoke-static {v2}, Landroidx/appcompat/widget/e0;->b(Landroidx/appcompat/widget/e0;)V

    .line 160
    sget-object v2, Landroidx/appcompat/widget/e0;->l:Landroidx/appcompat/widget/e0;

    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {v2}, Landroidx/appcompat/widget/e0;->a()V

    .line 163
    :cond_1
    sput-object v0, Landroidx/appcompat/widget/e0;->l:Landroidx/appcompat/widget/e0;

    move/from16 v2, p1

    .line 165
    iput-boolean v2, v0, Landroidx/appcompat/widget/e0;->i:Z

    .line 166
    new-instance v2, Landroidx/appcompat/widget/f0;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/f0;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Landroidx/appcompat/widget/e0;->h:Landroidx/appcompat/widget/f0;

    .line 167
    iget v3, v0, Landroidx/appcompat/widget/e0;->f:I

    iget v4, v0, Landroidx/appcompat/widget/e0;->g:I

    iget-boolean v5, v0, Landroidx/appcompat/widget/e0;->i:Z

    .line 100
    iget-object v6, v2, Landroidx/appcompat/widget/f0;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    const-string v8, "window"

    iget-object v9, v2, Landroidx/appcompat/widget/f0;->a:Landroid/content/Context;

    if-eqz v7, :cond_2

    .line 100
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 95
    invoke-virtual {v9, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 96
    invoke-interface {v7, v6}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 82
    :cond_2
    iget-object v7, v2, Landroidx/appcompat/widget/f0;->c:Landroid/widget/TextView;

    iget-object v10, v0, Landroidx/appcompat/widget/e0;->b:Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v7, v2, Landroidx/appcompat/widget/f0;->d:Landroid/view/WindowManager$LayoutParams;

    .line 105
    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v10

    iput-object v10, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 106
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Landroidx/appcompat/R$dimen;->tooltip_precise_anchor_threshold:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v10, :cond_3

    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v12

    .line 120
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    if-lt v11, v10, :cond_4

    .line 122
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Landroidx/appcompat/R$dimen;->tooltip_precise_anchor_extra_offset:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    add-int v11, v4, v10

    sub-int/2addr v4, v10

    goto :goto_1

    .line 128
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    const/4 v4, 0x0

    :goto_1
    const/16 v10, 0x31

    .line 132
    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 134
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v5, :cond_5

    .line 135
    sget v14, Landroidx/appcompat/R$dimen;->tooltip_y_offset_touch:I

    goto :goto_2

    :cond_5
    sget v14, Landroidx/appcompat/R$dimen;->tooltip_y_offset_non_touch:I

    .line 134
    :goto_2
    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    .line 188
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    .line 189
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 190
    instance-of v13, v15, Landroid/view/WindowManager$LayoutParams;

    if-eqz v13, :cond_6

    check-cast v15, Landroid/view/WindowManager$LayoutParams;

    iget v13, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v13, v12, :cond_6

    goto :goto_4

    .line 198
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 199
    :goto_3
    instance-of v15, v13, Landroid/content/ContextWrapper;

    if-eqz v15, :cond_8

    .line 200
    instance-of v15, v13, Landroid/app/Activity;

    if-eqz v15, :cond_7

    .line 201
    check-cast v13, Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v14

    goto :goto_4

    .line 203
    :cond_7
    check-cast v13, Landroid/content/ContextWrapper;

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    goto :goto_3

    :cond_8
    :goto_4
    if-nez v14, :cond_9

    .line 139
    const-string v2, "TooltipPopup"

    const-string v3, "Cannot find app view"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    goto/16 :goto_7

    .line 142
    :cond_9
    iget-object v15, v2, Landroidx/appcompat/widget/f0;->e:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/16 v16, 0x2

    .line 143
    iget v12, v15, Landroid/graphics/Rect;->left:I

    if-gez v12, :cond_b

    iget v12, v15, Landroid/graphics/Rect;->top:I

    if-gez v12, :cond_b

    .line 146
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/16 v17, 0x1

    .line 148
    const-string v13, "dimen"

    move/from16 v18, v3

    const-string v3, "android"

    move/from16 v19, v4

    const-string v4, "status_bar_height"

    invoke-virtual {v12, v4, v13, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_a

    .line 150
    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    .line 154
    :goto_5
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 155
    iget v12, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v13, 0x0

    invoke-virtual {v15, v13, v3, v12, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6

    :cond_b
    move/from16 v18, v3

    move/from16 v19, v4

    const/4 v13, 0x0

    const/16 v17, 0x1

    .line 157
    :goto_6
    iget-object v3, v2, Landroidx/appcompat/widget/f0;->g:[I

    invoke-virtual {v14, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 159
    iget-object v2, v2, Landroidx/appcompat/widget/f0;->f:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 160
    aget v4, v2, v13

    aget v12, v3, v13

    sub-int/2addr v4, v12

    aput v4, v2, v13

    .line 161
    aget v12, v2, v17

    aget v3, v3, v17

    sub-int/2addr v12, v3

    aput v12, v2, v17

    add-int v4, v4, v18

    .line 164
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v3

    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 166
    invoke-static {v13, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 167
    invoke-virtual {v6, v3, v3}, Landroid/view/View;->measure(II)V

    .line 168
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 170
    aget v2, v2, v17

    add-int v4, v2, v19

    sub-int/2addr v4, v10

    sub-int/2addr v4, v3

    add-int/2addr v2, v11

    add-int/2addr v2, v10

    if-eqz v5, :cond_d

    if-ltz v4, :cond_c

    .line 174
    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_7

    .line 176
    :cond_c
    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_7

    :cond_d
    add-int/2addr v3, v2

    .line 179
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gt v3, v5, :cond_e

    .line 180
    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_7

    .line 182
    :cond_e
    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 86
    :goto_7
    invoke-virtual {v9, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 87
    invoke-interface {v2, v6, v7}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 172
    iget-boolean v2, v0, Landroidx/appcompat/widget/e0;->i:Z

    if-eqz v2, :cond_f

    const-wide/16 v2, 0x9c4

    goto :goto_9

    .line 174
    :cond_f
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 176
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xbb8

    :goto_8
    sub-long v2, v4, v2

    goto :goto_9

    .line 178
    :cond_10
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3a98

    goto :goto_8

    .line 180
    :goto_9
    iget-object v4, v0, Landroidx/appcompat/widget/e0;->e:Landroidx/appcompat/widget/d0;

    invoke-virtual {v1, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 181
    invoke-virtual {v1, v4, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 120
    iget-object p1, p0, Landroidx/appcompat/widget/e0;->h:Landroidx/appcompat/widget/f0;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/appcompat/widget/e0;->i:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/e0;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 125
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    const/16 p1, 0xa

    if-eq v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Landroidx/appcompat/widget/e0;->j:Z

    .line 136
    invoke-virtual {p0}, Landroidx/appcompat/widget/e0;->a()V

    return v0

    .line 130
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/appcompat/widget/e0;->h:Landroidx/appcompat/widget/f0;

    if-nez p1, :cond_5

    .line 228
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 229
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 230
    iget-boolean v1, p0, Landroidx/appcompat/widget/e0;->j:Z

    if-nez v1, :cond_4

    iget v1, p0, Landroidx/appcompat/widget/e0;->f:I

    sub-int v1, p1, v1

    .line 231
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/e0;->c:I

    if-gt v1, v2, :cond_4

    iget v1, p0, Landroidx/appcompat/widget/e0;->g:I

    sub-int v1, p2, v1

    .line 232
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v2, :cond_5

    .line 233
    :cond_4
    iput p1, p0, Landroidx/appcompat/widget/e0;->f:I

    .line 234
    iput p2, p0, Landroidx/appcompat/widget/e0;->g:I

    .line 235
    iput-boolean v0, p0, Landroidx/appcompat/widget/e0;->j:Z

    .line 131
    invoke-static {p0}, Landroidx/appcompat/widget/e0;->b(Landroidx/appcompat/widget/e0;)V

    :cond_5
    :goto_0
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/e0;->f:I

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/appcompat/widget/e0;->g:I

    const/4 p1, 0x1

    .line 114
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e0;->c(Z)V

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 150
    invoke-virtual {p0}, Landroidx/appcompat/widget/e0;->a()V

    return-void
.end method

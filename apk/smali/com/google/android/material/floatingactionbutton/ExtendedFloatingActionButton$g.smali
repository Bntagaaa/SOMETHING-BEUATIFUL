.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;
.super Lcom/google/android/material/floatingactionbutton/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;

.field public final h:Z

.field public final synthetic i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;Z)V
    .locals 0

    .line 1104
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1105
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/c;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;)V

    .line 1106
    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;

    .line 1107
    iput-boolean p4, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->h:Z

    return-void
.end method


# virtual methods
.method public createAnimator()Landroid/animation/AnimatorSet;
    .locals 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1152
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->getCurrentMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object v2

    .line 1153
    const-string v3, "width"

    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-object v6, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 1154
    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 1155
    aget-object v8, v4, v7

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-interface {v6}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;->getWidth()I

    move-result v10

    int-to-float v10, v10

    new-array v11, v1, [F

    aput v9, v11, v7

    aput v10, v11, v0

    invoke-virtual {v8, v11}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 1156
    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 1159
    :cond_0
    const-string v3, "height"

    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1160
    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 1161
    aget-object v8, v4, v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-interface {v6}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;->getHeight()I

    move-result v10

    int-to-float v10, v10

    new-array v11, v1, [F

    aput v9, v11, v7

    aput v10, v11, v0

    invoke-virtual {v8, v11}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 1162
    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 1165
    :cond_1
    const-string v3, "paddingStart"

    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1166
    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 1167
    aget-object v8, v4, v7

    .line 1168
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    invoke-interface {v6}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;->getPaddingStart()I

    move-result v10

    int-to-float v10, v10

    new-array v11, v1, [F

    aput v9, v11, v7

    aput v10, v11, v0

    .line 1167
    invoke-virtual {v8, v11}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 1169
    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 1172
    :cond_2
    const-string v3, "paddingEnd"

    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1173
    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 1174
    aget-object v8, v4, v7

    .line 1175
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    invoke-interface {v6}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;->getPaddingEnd()I

    move-result v6

    int-to-float v6, v6

    new-array v9, v1, [F

    aput v5, v9, v7

    aput v6, v9, v0

    .line 1174
    invoke-virtual {v8, v9}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 1176
    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 1179
    :cond_3
    const-string v3, "labelOpacity"

    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1180
    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 1181
    iget-boolean v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->h:Z

    if-eqz v8, :cond_4

    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_0
    if-eqz v8, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    .line 1183
    :goto_1
    aget-object v6, v4, v7

    new-array v1, v1, [F

    aput v9, v1, v7

    aput v5, v1, v0

    invoke-virtual {v6, v1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 1184
    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 1187
    :cond_6
    invoke-virtual {p0, v2}, Lcom/google/android/material/floatingactionbutton/c;->a(Lcom/google/android/material/animation/MotionSpec;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMotionSpecResource()I
    .locals 1

    .line 1144
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->h:Z

    if-eqz v0, :cond_0

    .line 1145
    sget v0, Lcom/google/android/material/R$animator;->mtrl_extended_fab_change_size_expand_motion_spec:I

    return v0

    .line 1146
    :cond_0
    sget v0, Lcom/google/android/material/R$animator;->mtrl_extended_fab_change_size_collapse_motion_spec:I

    return v0
.end method

.method public onAnimationEnd()V
    .locals 3

    .line 1200
    invoke-super {p0}, Lcom/google/android/material/floatingactionbutton/c;->onAnimationEnd()V

    .line 74
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->D:Z

    .line 1202
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 1204
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1208
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;

    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1209
    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1192
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/c;->onAnimationStart(Landroid/animation/Animator;)V

    .line 74
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->h:Z

    iput-boolean v0, p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C:Z

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->D:Z

    .line 1195
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    return-void
.end method

.method public onChange(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
    .locals 2
    .param p1    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->h:Z

    if-eqz v1, :cond_1

    .line 1136
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;->onExtended(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    return-void

    .line 1138
    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;->onShrunken(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    return-void
.end method

.method public performNow()V
    .locals 5

    .line 74
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->h:Z

    iput-boolean v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C:Z

    .line 1113
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1118
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;

    invoke-interface {v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1119
    invoke-interface {v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1122
    invoke-interface {v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;->getPaddingStart()I

    move-result v1

    .line 1123
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 1124
    invoke-interface {v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j;->getPaddingEnd()I

    move-result v2

    .line 1125
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 1120
    invoke-static {v0, v1, v3, v2, v4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1126
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public shouldCancel()Z
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-boolean v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C:Z

    .line 1214
    iget-boolean v2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;->h:Z

    if-eq v2, v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

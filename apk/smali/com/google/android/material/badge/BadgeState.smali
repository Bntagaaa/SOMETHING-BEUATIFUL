.class public final Lcom/google/android/material/badge/BadgeState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/badge/BadgeState$State;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/badge/BadgeState$State;

.field public final b:Lcom/google/android/material/badge/BadgeState$State;

.field public final c:F

.field public final d:F

.field public final e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/google/android/material/badge/BadgeState$State;)V
    .locals 9

    sget v3, Lcom/google/android/material/badge/BadgeDrawable;->o:I

    sget v0, Lcom/google/android/material/badge/BadgeDrawable;->n:I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v6, Lcom/google/android/material/badge/BadgeState$State;

    invoke-direct {v6}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    if-nez p3, :cond_0

    .line 81
    new-instance p3, Lcom/google/android/material/badge/BadgeState$State;

    invoke-direct {p3}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    :cond_0
    if-eqz p2, :cond_1

    .line 410
    iput p2, p3, Lcom/google/android/material/badge/BadgeState$State;->a:I

    .line 410
    :cond_1
    iget p2, p3, Lcom/google/android/material/badge/BadgeState$State;->a:I

    const/4 v7, 0x0

    if-eqz p2, :cond_2

    .line 214
    const-string v1, "badge"

    invoke-static {p1, p2, v1}, Lcom/google/android/material/drawable/DrawableUtils;->parseDrawableXml(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 215
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    move v8, v1

    move-object v1, p2

    move p2, v8

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    move-object v1, p2

    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, p2

    .line 221
    :goto_1
    sget-object v2, Lcom/google/android/material/R$styleable;->Badge:[I

    new-array v5, v7, [I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 90
    sget v1, Lcom/google/android/material/R$styleable;->Badge_badgeRadius:I

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_badge_radius:I

    .line 92
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 91
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/badge/BadgeState;->c:F

    .line 93
    sget v1, Lcom/google/android/material/R$styleable;->Badge_badgeWidePadding:I

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_badge_long_text_horizontal_padding:I

    .line 96
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 94
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/badge/BadgeState;->e:F

    .line 97
    sget v1, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextRadius:I

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_badge_with_text_radius:I

    .line 100
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 98
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/google/android/material/badge/BadgeState;->d:F

    .line 410
    iget p2, p3, Lcom/google/android/material/badge/BadgeState$State;->d:I

    const/4 v1, -0x2

    if-ne p2, v1, :cond_4

    const/16 p2, 0xff

    .line 410
    :cond_4
    iput p2, v6, Lcom/google/android/material/badge/BadgeState$State;->d:I

    .line 410
    iget-object p2, p3, Lcom/google/android/material/badge/BadgeState$State;->h:Ljava/lang/CharSequence;

    if-nez p2, :cond_5

    .line 106
    sget p2, Lcom/google/android/material/R$string;->mtrl_badge_numberless_content_description:I

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 410
    :cond_5
    iput-object p2, v6, Lcom/google/android/material/badge/BadgeState$State;->h:Ljava/lang/CharSequence;

    .line 410
    iget p2, p3, Lcom/google/android/material/badge/BadgeState$State;->i:I

    if-nez p2, :cond_6

    .line 111
    sget p2, Lcom/google/android/material/R$plurals;->mtrl_badge_content_description:I

    .line 410
    :cond_6
    iput p2, v6, Lcom/google/android/material/badge/BadgeState$State;->i:I

    .line 410
    iget p2, p3, Lcom/google/android/material/badge/BadgeState$State;->j:I

    if-nez p2, :cond_7

    .line 116
    sget p2, Lcom/google/android/material/R$string;->mtrl_exceed_max_badge_number_content_description:I

    .line 410
    :cond_7
    iput p2, v6, Lcom/google/android/material/badge/BadgeState$State;->j:I

    .line 410
    iget-object p2, p3, Lcom/google/android/material/badge/BadgeState$State;->l:Ljava/lang/Boolean;

    if-eqz p2, :cond_9

    .line 119
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 p2, 0x1

    :goto_3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 410
    iput-object p2, v6, Lcom/google/android/material/badge/BadgeState$State;->l:Ljava/lang/Boolean;

    .line 410
    iget p2, p3, Lcom/google/android/material/badge/BadgeState$State;->f:I

    if-ne p2, v1, :cond_a

    .line 123
    sget p2, Lcom/google/android/material/R$styleable;->Badge_maxCharacterCount:I

    const/4 v2, 0x4

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 410
    :cond_a
    iput p2, v6, Lcom/google/android/material/badge/BadgeState$State;->f:I

    .line 410
    iget p2, p3, Lcom/google/android/material/badge/BadgeState$State;->e:I

    if-eq p2, v1, :cond_b

    .line 410
    iput p2, v6, Lcom/google/android/material/badge/BadgeState$State;->e:I

    goto :goto_4

    .line 131
    :cond_b
    sget p2, Lcom/google/android/material/R$styleable;->Badge_number:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 132
    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 410
    iput p2, v6, Lcom/google/android/material/badge/BadgeState$State;->e:I

    goto :goto_4

    :cond_c
    const/4 p2, -0x1

    .line 410
    iput p2, v6, Lcom/google/android/material/badge/BadgeState$State;->e:I

    .line 410
    :goto_4
    iget-object p2, p3, Lcom/google/android/material/badge/BadgeState$State;->b:Ljava/lang/Integer;

    if-nez p2, :cond_d

    .line 139
    sget p2, Lcom/google/android/material/R$styleable;->Badge_backgroundColor:I

    .line 403
    invoke-static {v0, p1, p2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    goto :goto_5

    .line 140
    :cond_d
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 138
    :goto_5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 410
    iput-object p2, v6, Lcom/google/android/material/badge/BadgeState$State;->b:Ljava/lang/Integer;

    .line 410
    iget-object p2, p3, Lcom/google/android/material/badge/BadgeState$State;->c:Ljava/lang/Integer;

    if-eqz p2, :cond_e

    .line 410
    iput-object p2, v6, Lcom/google/android/material/badge/BadgeState$State;->c:Ljava/lang/Integer;

    goto :goto_6

    .line 146
    :cond_e
    sget p2, Lcom/google/android/material/R$styleable;->Badge_badgeTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 403
    invoke-static {v0, p1, p2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    .line 148
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 410
    iput-object p2, v6, Lcom/google/android/material/badge/BadgeState$State;->c:Ljava/lang/Integer;

    goto :goto_6

    .line 150
    :cond_f
    new-instance p2, Lcom/google/android/material/resources/TextAppearance;

    sget v1, Lcom/google/android/material/R$style;->TextAppearance_MaterialComponents_Badge:I

    invoke-direct {p2, v0, v1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 152
    invoke-virtual {p2}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 410
    iput-object p2, v6, Lcom/google/android/material/badge/BadgeState$State;->c:Ljava/lang/Integer;

    .line 410
    :goto_6
    iget-object p2, p3, Lcom/google/android/material/badge/BadgeState$State;->k:Ljava/lang/Integer;

    if-nez p2, :cond_10

    .line 157
    sget p2, Lcom/google/android/material/R$styleable;->Badge_badgeGravity:I

    const v0, 0x800035

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    goto :goto_7

    .line 158
    :cond_10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 156
    :goto_7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 410
    iput-object p2, v6, Lcom/google/android/material/badge/BadgeState$State;->k:Ljava/lang/Integer;

    .line 410
    iget-object p2, p3, Lcom/google/android/material/badge/BadgeState$State;->m:Ljava/lang/Integer;

    if-nez p2, :cond_11

    .line 162
    sget p2, Lcom/google/android/material/R$styleable;->Badge_horizontalOffset:I

    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    goto :goto_8

    .line 163
    :cond_11
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 161
    :goto_8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 410
    iput-object p2, v6, Lcom/google/android/material/badge/BadgeState$State;->m:Ljava/lang/Integer;

    .line 410
    iget-object p2, p3, Lcom/google/android/material/badge/BadgeState$State;->m:Ljava/lang/Integer;

    if-nez p2, :cond_12

    .line 167
    sget p2, Lcom/google/android/material/R$styleable;->Badge_verticalOffset:I

    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    goto :goto_9

    .line 410
    :cond_12
    iget-object p2, p3, Lcom/google/android/material/badge/BadgeState$State;->n:Ljava/lang/Integer;

    .line 168
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 166
    :goto_9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 410
    iput-object p2, v6, Lcom/google/android/material/badge/BadgeState$State;->n:Ljava/lang/Integer;

    .line 410
    iget-object p2, p3, Lcom/google/android/material/badge/BadgeState$State;->o:Ljava/lang/Integer;

    if-nez p2, :cond_13

    .line 175
    sget p2, Lcom/google/android/material/R$styleable;->Badge_horizontalOffsetWithText:I

    .line 410
    iget-object v0, v6, Lcom/google/android/material/badge/BadgeState$State;->m:Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 175
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    goto :goto_a

    .line 178
    :cond_13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 174
    :goto_a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 410
    iput-object p2, v6, Lcom/google/android/material/badge/BadgeState$State;->o:Ljava/lang/Integer;

    .line 410
    iget-object p2, p3, Lcom/google/android/material/badge/BadgeState$State;->p:Ljava/lang/Integer;

    if-nez p2, :cond_14

    .line 182
    sget p2, Lcom/google/android/material/R$styleable;->Badge_verticalOffsetWithText:I

    .line 410
    iget-object v0, v6, Lcom/google/android/material/badge/BadgeState$State;->n:Ljava/lang/Integer;

    .line 183
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 182
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    goto :goto_b

    .line 184
    :cond_14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 181
    :goto_b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 410
    iput-object p2, v6, Lcom/google/android/material/badge/BadgeState$State;->p:Ljava/lang/Integer;

    .line 410
    iget-object p2, p3, Lcom/google/android/material/badge/BadgeState$State;->q:Ljava/lang/Integer;

    if-nez p2, :cond_15

    const/4 p2, 0x0

    goto :goto_c

    .line 187
    :cond_15
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 410
    iput-object p2, v6, Lcom/google/android/material/badge/BadgeState$State;->q:Ljava/lang/Integer;

    .line 410
    iget-object p2, p3, Lcom/google/android/material/badge/BadgeState$State;->r:Ljava/lang/Integer;

    if-nez p2, :cond_16

    goto :goto_d

    .line 190
    :cond_16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 410
    iput-object p2, v6, Lcom/google/android/material/badge/BadgeState$State;->r:Ljava/lang/Integer;

    .line 192
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 410
    iget-object p1, p3, Lcom/google/android/material/badge/BadgeState$State;->g:Ljava/util/Locale;

    if-nez p1, :cond_18

    .line 196
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_17

    .line 197
    invoke-static {}, Landroidx/core/os/f;->o()Ljava/util/Locale$Category;

    invoke-static {}, Landroidx/core/os/f;->p()Ljava/util/Locale;

    move-result-object p1

    goto :goto_e

    .line 198
    :cond_17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 410
    :goto_e
    iput-object p1, v6, Lcom/google/android/material/badge/BadgeState$State;->g:Ljava/util/Locale;

    goto :goto_f

    .line 410
    :cond_18
    iput-object p1, v6, Lcom/google/android/material/badge/BadgeState$State;->g:Ljava/util/Locale;

    .line 203
    :goto_f
    iput-object p3, p0, Lcom/google/android/material/badge/BadgeState;->a:Lcom/google/android/material/badge/BadgeState$State;

    return-void
.end method

.class public Lcom/google/android/material/ripple/RippleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final USE_FRAMEWORK_RIPPLE:Z = true

.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I

.field public static final h:[I

.field public static final i:[I

.field public static final j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x10100a7

    .line 44
    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/android/material/ripple/RippleUtils;->a:[I

    const v1, 0x1010367

    const v2, 0x101009c

    .line 47
    filled-new-array {v1, v2}, [I

    move-result-object v3

    sput-object v3, Lcom/google/android/material/ripple/RippleUtils;->b:[I

    .line 50
    filled-new-array {v2}, [I

    move-result-object v3

    sput-object v3, Lcom/google/android/material/ripple/RippleUtils;->c:[I

    .line 53
    filled-new-array {v1}, [I

    move-result-object v3

    sput-object v3, Lcom/google/android/material/ripple/RippleUtils;->d:[I

    const v3, 0x10100a1

    .line 57
    filled-new-array {v3, v0}, [I

    move-result-object v4

    sput-object v4, Lcom/google/android/material/ripple/RippleUtils;->e:[I

    .line 60
    filled-new-array {v3, v1, v2}, [I

    move-result-object v4

    sput-object v4, Lcom/google/android/material/ripple/RippleUtils;->f:[I

    .line 63
    filled-new-array {v3, v2}, [I

    move-result-object v2

    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->g:[I

    .line 66
    filled-new-array {v3, v1}, [I

    move-result-object v1

    sput-object v1, Lcom/google/android/material/ripple/RippleUtils;->h:[I

    .line 69
    filled-new-array {v3}, [I

    move-result-object v1

    sput-object v1, Lcom/google/android/material/ripple/RippleUtils;->i:[I

    const v1, 0x101009e

    .line 73
    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->j:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/res/ColorStateList;[I)I
    .locals 1

    if-eqz p0, :cond_0

    .line 242
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 246
    :goto_0
    sget-boolean p1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz p1, :cond_1

    .line 256
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const/16 v0, 0xff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 257
    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    :cond_1
    return p0
.end method

.method public static convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 8
    .param p0    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 112
    sget-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    sget-object v1, Lcom/google/android/material/ripple/RippleUtils;->a:[I

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/material/ripple/RippleUtils;->e:[I

    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->i:[I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 115
    new-array v0, v5, [[I

    .line 116
    new-array v5, v5, [I

    .line 125
    aput-object v4, v0, v6

    .line 126
    invoke-static {p0, v3}, Lcom/google/android/material/ripple/RippleUtils;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v5, v6

    .line 130
    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    aput-object v3, v0, v2

    .line 131
    invoke-static {p0, v1}, Lcom/google/android/material/ripple/RippleUtils;->a(Landroid/content/res/ColorStateList;[I)I

    move-result p0

    aput p0, v5, v2

    .line 134
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0

    :cond_0
    const/16 v0, 0xa

    .line 138
    new-array v7, v0, [[I

    .line 139
    new-array v0, v0, [I

    .line 142
    aput-object v3, v7, v6

    .line 143
    invoke-static {p0, v3}, Lcom/google/android/material/ripple/RippleUtils;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v0, v6

    .line 146
    sget-object v3, Lcom/google/android/material/ripple/RippleUtils;->f:[I

    aput-object v3, v7, v2

    .line 147
    invoke-static {p0, v3}, Lcom/google/android/material/ripple/RippleUtils;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v0, v2

    .line 150
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->g:[I

    aput-object v2, v7, v5

    .line 151
    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v2

    aput v2, v0, v5

    .line 154
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->h:[I

    const/4 v3, 0x3

    aput-object v2, v7, v3

    .line 155
    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v2

    aput v2, v0, v3

    const/4 v2, 0x4

    .line 159
    aput-object v4, v7, v2

    .line 160
    aput v6, v0, v2

    const/4 v2, 0x5

    .line 163
    aput-object v1, v7, v2

    .line 164
    invoke-static {p0, v1}, Lcom/google/android/material/ripple/RippleUtils;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v1

    aput v1, v0, v2

    .line 167
    sget-object v1, Lcom/google/android/material/ripple/RippleUtils;->b:[I

    const/4 v2, 0x6

    aput-object v1, v7, v2

    .line 168
    invoke-static {p0, v1}, Lcom/google/android/material/ripple/RippleUtils;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v1

    aput v1, v0, v2

    .line 171
    sget-object v1, Lcom/google/android/material/ripple/RippleUtils;->c:[I

    const/4 v2, 0x7

    aput-object v1, v7, v2

    .line 172
    invoke-static {p0, v1}, Lcom/google/android/material/ripple/RippleUtils;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v1

    aput v1, v0, v2

    .line 175
    sget-object v1, Lcom/google/android/material/ripple/RippleUtils;->d:[I

    const/16 v2, 0x8

    aput-object v1, v7, v2

    .line 176
    invoke-static {p0, v1}, Lcom/google/android/material/ripple/RippleUtils;->a(Landroid/content/res/ColorStateList;[I)I

    move-result p0

    aput p0, v0, v2

    .line 180
    sget-object p0, Landroid/util/StateSet;->NOTHING:[I

    const/16 v1, 0x9

    aput-object p0, v7, v1

    .line 181
    aput v6, v0, v1

    .line 184
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v7, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method public static sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 3
    .param p0    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 204
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    const/16 v2, 0x1b

    if-gt v1, v2, :cond_0

    .line 206
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/material/ripple/RippleUtils;->j:[I

    .line 207
    invoke-virtual {p0, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "RippleUtils"

    const-string v1, "Use a non-transparent color for the default color as it will be used to finish ripple animations."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0

    .line 213
    :cond_1
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static shouldDrawRippleCompat([I)Z
    .locals 8
    .param p0    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 224
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v0, :cond_4

    aget v6, p0, v2

    const v7, 0x101009e

    if-ne v6, v7, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    const v7, 0x101009c

    if-ne v6, v7, :cond_1

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const v7, 0x10100a7

    if-ne v6, v7, :cond_2

    goto :goto_1

    :cond_2
    const v7, 0x1010367

    if-ne v6, v7, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    return v5

    :cond_5
    return v1
.end method

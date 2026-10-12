.class Lcom/google/android/material/slider/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/slider/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/slider/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/util/AttributeSet;

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/material/slider/a;


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/a;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/a$a;->c:Lcom/google/android/material/slider/a;

    iput-object p2, p0, Lcom/google/android/material/slider/a$a;->a:Landroid/util/AttributeSet;

    iput p3, p0, Lcom/google/android/material/slider/a$a;->b:I

    return-void
.end method


# virtual methods
.method public createTooltipDrawable()Lcom/google/android/material/tooltip/TooltipDrawable;
    .locals 8

    .line 377
    iget-object v0, p0, Lcom/google/android/material/slider/a$a;->c:Lcom/google/android/material/slider/a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/google/android/material/R$styleable;->Slider:[I

    sget v5, Lcom/google/android/material/slider/a;->d0:I

    const/4 v7, 0x0

    new-array v6, v7, [I

    .line 376
    iget-object v2, p0, Lcom/google/android/material/slider/a$a;->a:Landroid/util/AttributeSet;

    iget v4, p0, Lcom/google/android/material/slider/a$a;->b:I

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 378
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 502
    sget v2, Lcom/google/android/material/R$styleable;->Slider_labelStyle:I

    sget v3, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Tooltip:I

    .line 506
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v3, 0x0

    .line 502
    invoke-static {v0, v3, v7, v2}, Lcom/google/android/material/tooltip/TooltipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v0

    .line 379
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

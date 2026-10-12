.class public final Lcom/google/appinventor/components/runtime/NiotronChipView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronChipView.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NiotronChipView"


# instance fields
.field private chip:Lcom/google/android/material/chip/Chip;

.field private chipType:Ljava/lang/String;

.field private closeIcon:Ljava/lang/String;

.field private closeIconColorStateList:Landroid/content/res/ColorStateList;

.field private closeIconPaddingEnd:I

.field private closeIconPaddingStart:I

.field private icon:Ljava/lang/String;

.field private iconColorStateList:Landroid/content/res/ColorStateList;

.field private iconPaddingEnd:I

.field private iconPaddingStart:I

.field private iconSize:F

.field private radius:F

.field private rid:I

.field private strokeColorStateList:Landroid/content/res/ColorStateList;

.field private strokeSize:F

.field private text:Ljava/lang/String;

.field private textColorStateList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 60
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->rid:I

    .line 38
    const-string v0, "1"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chipType:Ljava/lang/String;

    .line 62
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 64
    :try_start_0
    const-class v1, Lcom/google/android/material/R$layout;

    .line 65
    const-string v2, "niotronchip1"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->rid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/Chip;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    .line 73
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 75
    const-string p1, "NiotronChipView"

    const-string v0, "Component Created"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    .line 68
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Error"

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private updateAppearence()V
    .locals 7

    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chipType:Ljava/lang/String;

    const-string v1, "1"

    const-class v2, Lcom/google/android/material/R$layout;

    const-string v3, "layout_inflater"

    const-string v4, "Error"

    const-string v5, "NiotronChipView"

    const/4 v6, 0x0

    if-ne v0, v1, :cond_0

    .line 284
    const-string v0, "Chip Type 1"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 290
    :try_start_0
    const-string v1, "niotronchip1"

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 291
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->rid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/Chip;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 293
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 296
    :cond_0
    const-string v1, "2"

    if-ne v0, v1, :cond_1

    .line 297
    const-string v0, "Chip Type 2"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 303
    :try_start_1
    const-string v1, "niotronchip2"

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 304
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->rid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/Chip;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    .line 310
    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronChipView$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronChipView$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronChipView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 306
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_1
    const-string v1, "3"

    if-ne v0, v1, :cond_2

    .line 318
    const-string v0, "Chip Type 3"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 324
    :try_start_2
    const-string v1, "niotronchip4"

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 325
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->rid:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 329
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/Chip;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    goto :goto_0

    :catch_2
    move-exception v0

    .line 327
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 331
    :cond_2
    const-string v1, "4"

    if-ne v0, v1, :cond_7

    .line 332
    const-string v0, "Chip Type 4"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 338
    :try_start_3
    const-string v1, "niotronchip3"

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 339
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->rid:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 343
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/Chip;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x0

    .line 344
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setCheckable(Z)V

    .line 345
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->icon:Ljava/lang/String;

    const-string v1, "No such asset found"

    const-string v2, ""

    if-ne v0, v2, :cond_3

    .line 352
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v6}, Lcom/google/android/material/chip/Chip;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 355
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->icon:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 359
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v3, v0}, Lcom/google/android/material/chip/Chip;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 363
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->icon:Ljava/lang/String;

    if-ne v0, v2, :cond_4

    .line 364
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v6}, Lcom/google/android/material/chip/Chip;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v6

    goto :goto_2

    .line 367
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->icon:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 371
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v1, v0}, Lcom/google/android/material/chip/Chip;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    if-eqz v0, :cond_5

    .line 375
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronChipView$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronChipView$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronChipView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 382
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v6}, Lcom/google/android/material/chip/Chip;->setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    :goto_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_6

    .line 389
    const-string v0, "Chip is okey"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->radius:F

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipCornerRadius(F)V

    .line 394
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->textColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 395
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->strokeColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 396
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->strokeSize:F

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipStrokeWidth(F)V

    .line 397
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->iconPaddingStart:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setIconStartPadding(F)V

    .line 398
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->iconPaddingEnd:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setIconEndPadding(F)V

    .line 399
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->closeIconPaddingStart:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setCloseIconStartPadding(F)V

    .line 400
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->closeIconPaddingEnd:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setCloseIconEndPadding(F)V

    .line 401
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->iconSize:F

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipIconSize(F)V

    .line 402
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->iconColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    .line 403
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->closeIconColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    return-void

    .line 386
    :cond_6
    const-string v0, "Chip is null"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-direct {v1, v5, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 369
    :catch_3
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-direct {v0, v1, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 357
    :catch_4
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-direct {v0, v1, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v0

    .line 341
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 347
    :cond_7
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chipType:Ljava/lang/String;

    const-string v2, "Unknown Chip Type Error"

    .line 0
    invoke-static {v2, v1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    const-string v2, "Unsupported chip type"

    invoke-direct {v0, v2, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ChipCloseIconPadding(II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets chip close icon padding"
    .end annotation

    .line 205
    const-string v0, "NiotronChipView"

    const-string v1, "Setting chip close icon padding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->closeIconPaddingStart:I

    .line 207
    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->closeIconPaddingEnd:I

    .line 208
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChipView;->updateAppearence()V

    return-void
.end method

.method public ChipCloseIconPaddingEnd(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 190
    const-string v0, "NiotronChipView"

    const-string v1, "Setting chip close icon end padding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->closeIconPaddingEnd:I

    .line 192
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChipView;->updateAppearence()V

    return-void
.end method

.method public ChipCloseIconPaddingStart(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 182
    const-string v0, "NiotronChipView"

    const-string v1, "Setting chip close icon start padding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->closeIconPaddingStart:I

    .line 184
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChipView;->updateAppearence()V

    return-void
.end method

.method public ChipIconPadding(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets chip padding"
    .end annotation

    .line 197
    const-string p2, "NiotronChipView"

    const-string v0, "Setting chip icon padding"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->iconPaddingStart:I

    .line 199
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->iconPaddingEnd:I

    .line 200
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChipView;->updateAppearence()V

    return-void
.end method

.method public ChipIconPaddingEnd(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 174
    const-string v0, "NiotronChipView"

    const-string v1, "Setting chip icon end padding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->iconPaddingEnd:I

    .line 176
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChipView;->updateAppearence()V

    return-void
.end method

.method public ChipIconPaddingStart(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 166
    const-string v0, "NiotronChipView"

    const-string v1, "Setting chip icon start padding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->iconPaddingStart:I

    .line 168
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChipView;->updateAppearence()V

    return-void
.end method

.method public ChipType(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "chip_type"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the chip type"
        userVisible = false
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chipType:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChipView;->updateAppearence()V

    return-void
.end method

.method public Clicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Chip clicked"
    .end annotation

    .line 272
    const-string v0, "NiotronChipView"

    const-string v1, "Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 273
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CloseButtonClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Close icon clicked"
    .end annotation

    .line 266
    const-string v0, "NiotronChipView"

    const-string v1, "CloseButtonClicked invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 267
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CloseButtonClicked"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CloseIcon(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set close icon"
    .end annotation

    .line 158
    const-string v0, "NiotronChipView"

    const-string v1, "Setting close icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->closeIcon:Ljava/lang/String;

    .line 160
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChipView;->updateAppearence()V

    return-void
.end method

.method public CloseIconColor(II)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets close icon size"
    .end annotation

    .line 241
    const-string v0, "NiotronChipView"

    const-string v1, "Setting close icon color"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 243
    new-array v1, v0, [I

    const/4 v2, 0x2

    new-array v2, v2, [[I

    const v3, 0x10100a0

    filled-new-array {v3}, [I

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 248
    filled-new-array {p2, p1}, [I

    move-result-object p1

    .line 253
    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, v2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 255
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->closeIconColorStateList:Landroid/content/res/ColorStateList;

    .line 256
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChipView;->updateAppearence()V

    return-void
.end method

.method public Icon(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the icon"
    .end annotation

    .line 88
    const-string v0, "NiotronChipView"

    const-string v1, "Setting Icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->icon:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChipView;->updateAppearence()V

    return-void
.end method

.method public IconColor(II)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets chip icon size"
    .end annotation

    .line 221
    const-string v0, "NiotronChipView"

    const-string v1, "Setting icon color"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 223
    new-array v1, v0, [I

    const/4 v2, 0x2

    new-array v2, v2, [[I

    const v3, 0x10100a0

    filled-new-array {v3}, [I

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 228
    filled-new-array {p2, p1}, [I

    move-result-object p1

    .line 233
    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, v2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 235
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->iconColorStateList:Landroid/content/res/ColorStateList;

    .line 236
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChipView;->updateAppearence()V

    return-void
.end method

.method public IconSize(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets chip icon size"
    .end annotation

    .line 214
    const-string v0, "NiotronChipView"

    const-string v1, "Setting chip icon size"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->iconSize:F

    .line 216
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChipView;->updateAppearence()V

    return-void
.end method

.method public Radius(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets chip radius"
    .end annotation

    .line 104
    const-string v0, "NiotronChipView"

    const-string v1, "Setting Radius"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->radius:F

    .line 106
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChipView;->updateAppearence()V

    return-void
.end method

.method public StrokeColor(II)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets stroke color"
    .end annotation

    .line 130
    const-string v0, "NiotronChipView"

    const-string v1, "Setting stroke color"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 132
    new-array v1, v0, [I

    const/4 v2, 0x2

    new-array v2, v2, [[I

    const v3, 0x10100a0

    filled-new-array {v3}, [I

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 137
    filled-new-array {p2, p1}, [I

    move-result-object p1

    .line 142
    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, v2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 143
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->strokeColorStateList:Landroid/content/res/ColorStateList;

    .line 144
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChipView;->updateAppearence()V

    return-void
.end method

.method public StrokeSize(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets stroke size"
    .end annotation

    .line 150
    const-string v0, "NiotronChipView"

    const-string v1, "Setting stroke size"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->strokeSize:F

    .line 152
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChipView;->updateAppearence()V

    return-void
.end method

.method public Text(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Chip"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets chip text"
    .end annotation

    .line 96
    const-string v0, "NiotronChipView"

    const-string v1, "Setting Text"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->text:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChipView;->updateAppearence()V

    return-void
.end method

.method public TextColor(II)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the chip text color"
    .end annotation

    .line 111
    const-string v0, "NiotronChipView"

    const-string v1, "Setting text color"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 113
    new-array v1, v0, [I

    const/4 v2, 0x2

    new-array v2, v2, [[I

    const v3, 0x10100a0

    filled-new-array {v3}, [I

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 118
    filled-new-array {p2, p1}, [I

    move-result-object p1

    .line 123
    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, v2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 124
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->textColorStateList:Landroid/content/res/ColorStateList;

    .line 125
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChipView;->updateAppearence()V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if the particular chip is checked"
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipView;->chip:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

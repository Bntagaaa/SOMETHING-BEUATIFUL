.class public final Lcom/google/appinventor/components/runtime/NiotronChip;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MATERIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronChip.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NiotronChip"


# instance fields
.field private final chipGroup:Lcom/google/android/material/chip/ChipGroup;

.field private chipHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/material/chip/Chip;",
            ">;"
        }
    .end annotation
.end field

.field private selectionRequired:Z

.field private singleSelect:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->singleSelect:Z

    .line 43
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->selectionRequired:Z

    .line 53
    new-instance v0, Lcom/google/android/material/chip/ChipGroup;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipGroup:Lcom/google/android/material/chip/ChipGroup;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    .line 57
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 59
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronChip;->setListeners()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronChip;Lcom/google/android/material/chip/Chip;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronChip;->getChipName(Lcom/google/android/material/chip/Chip;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getChipName(Lcom/google/android/material/chip/Chip;)Ljava/lang/String;
    .locals 3

    .line 412
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 416
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 417
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private setListeners()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipGroup:Lcom/google/android/material/chip/ChipGroup;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronChip$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronChip$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronChip;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public CheckChanged(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invokes when chip check change (only works if single selection if true)"
    .end annotation

    .line 383
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "CheckChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CheckedChipsList()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "gets all the checked chips"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipGroup:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipGroup;->getCheckedChipIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ChipCloseIconPadding(Ljava/lang/String;II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets chip close icon padding"
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    int-to-float p2, p2

    .line 300
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setCloseIconStartPadding(F)V

    int-to-float p2, p3

    .line 301
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setCloseIconEndPadding(F)V

    return-void
.end method

.method public ChipIconPadding(Ljava/lang/String;II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets chip padding"
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    int-to-float p2, p2

    .line 293
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setIconStartPadding(F)V

    int-to-float p2, p3

    .line 294
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setIconEndPadding(F)V

    return-void
.end method

.method public ChipPadding(Ljava/lang/String;IIII)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets chip padding"
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 287
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public Clicked(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invokes when chip was clicked"
    .end annotation

    .line 388
    const-string v0, "Clicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CloseButtonClicked(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invokes when close button clicked"
    .end annotation

    .line 393
    const-string v0, "CloseButtonClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CloseIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set close icon"
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 261
    const-string v0, ""

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 262
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 265
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 267
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "No such asset found"

    const-string v0, "Error"

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public CloseIconColor(Ljava/lang/String;II)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets close icon size"
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    const/4 v0, 0x0

    .line 333
    new-array v1, v0, [I

    const/4 v2, 0x2

    new-array v2, v2, [[I

    const v3, 0x10100a0

    filled-new-array {v3}, [I

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 338
    filled-new-array {p3, p2}, [I

    move-result-object p2

    .line 343
    new-instance p3, Landroid/content/res/ColorStateList;

    invoke-direct {p3, v2, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 345
    invoke-virtual {p1, p3}, Lcom/google/android/material/chip/Chip;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public CreateChip(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ChipType;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new Chip, with default color and checked color"
    .end annotation

    const/4 v0, 0x0

    .line 64
    new-instance v1, Lcom/google/android/material/chip/Chip;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;)V

    .line 67
    const-string v1, "choice"

    const-class v2, Lcom/google/android/material/R$layout;

    const-string v3, "layout_inflater"

    const-string v4, "Error"

    const/4 v5, 0x0

    if-ne p2, v1, :cond_0

    .line 68
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 71
    :try_start_0
    const-string v1, "niotronchip1"

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    invoke-virtual {p2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/chip/Chip;

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 74
    new-instance p2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 77
    :cond_0
    const-string v1, "action"

    if-ne p2, v1, :cond_1

    .line 78
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 81
    :try_start_1
    const-string v1, "niotronchip2"

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    invoke-virtual {p2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/chip/Chip;

    goto :goto_0

    :catch_1
    move-exception p1

    .line 84
    new-instance p2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 88
    :cond_1
    const-string v1, "entry"

    if-ne p2, v1, :cond_2

    .line 89
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 92
    :try_start_2
    const-string v1, "niotronchip3"

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    invoke-virtual {p2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/chip/Chip;

    goto :goto_0

    :catch_2
    move-exception p1

    .line 95
    new-instance p2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 100
    :cond_2
    const-string v1, "filter"

    if-ne p2, v1, :cond_3

    .line 101
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 104
    :try_start_3
    const-string v1, "niotronchip4"

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 109
    invoke-virtual {p2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/chip/Chip;

    .line 114
    :goto_0
    new-array v1, v0, [I

    const/4 v2, 0x2

    new-array v2, v2, [[I

    const v3, 0x10100a0

    filled-new-array {v3}, [I

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 119
    filled-new-array {p4, p3}, [I

    move-result-object p3

    .line 124
    new-instance p4, Landroid/content/res/ColorStateList;

    invoke-direct {p4, v2, p3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 126
    invoke-virtual {p2, p4}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 128
    new-instance p3, Lcom/google/appinventor/components/runtime/NiotronChip$1;

    invoke-direct {p3, p0}, Lcom/google/appinventor/components/runtime/NiotronChip$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronChip;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/chip/Chip;->setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance p3, Lcom/google/appinventor/components/runtime/NiotronChip$2;

    invoke-direct {p3, p0}, Lcom/google/appinventor/components/runtime/NiotronChip$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronChip;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipGroup:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :catch_3
    move-exception p1

    .line 107
    new-instance p2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 111
    :cond_3
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Invalid Chip Type"

    invoke-direct {p1, p2, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public HorizontalSpacing()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets vertical spacing"
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipGroup:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipGroup;->getChipSpacingHorizontal()I

    move-result v0

    return v0
.end method

.method public HorizontalSpacing(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets vertical spacing"
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipGroup:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    return-void
.end method

.method public Icon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets chip icon"
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 200
    const-string v0, ""

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 201
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 204
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 206
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "No such asset found"

    const-string v0, "Error"

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public IconColor(Ljava/lang/String;II)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets chip icon size"
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    const/4 v0, 0x0

    .line 314
    new-array v1, v0, [I

    const/4 v2, 0x2

    new-array v2, v2, [[I

    const v3, 0x10100a0

    filled-new-array {v3}, [I

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 319
    filled-new-array {p3, p2}, [I

    move-result-object p2

    .line 324
    new-instance p3, Landroid/content/res/ColorStateList;

    invoke-direct {p3, v2, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 326
    invoke-virtual {p1, p3}, Lcom/google/android/material/chip/Chip;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public IconSize(Ljava/lang/String;F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets chip icon size"
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 307
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChipIconSize(F)V

    return-void
.end method

.method public Radius(Ljava/lang/String;F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets chip radius"
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 187
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChipCornerRadius(F)V

    return-void
.end method

.method public RemoveChip(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes chip"
    .end annotation

    .line 150
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipGroup:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    .line 153
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipGroup:Lcom/google/android/material/chip/ChipGroup;

    check-cast p1, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    .line 156
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Unsupported Chip value, can not remove chip"

    const-string v1, "Unsupported Value"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public SelectionRequired(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets if one chip of the group must be selected"
    .end annotation

    .line 175
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->selectionRequired:Z

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipGroup:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipGroup;->setSelectionRequired(Z)V

    return-void
.end method

.method public SelectionRequired()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "if one chip of the group must be selected"
    .end annotation

    .line 181
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->selectionRequired:Z

    return v0
.end method

.method public SingleSelection(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets if any single chip of the group should be selected"
    .end annotation

    .line 163
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->singleSelect:Z

    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipGroup:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    return-void
.end method

.method public SingleSelection()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "if any single chip of the group should be selected"
    .end annotation

    .line 169
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->singleSelect:Z

    return v0
.end method

.method public StrokeColor(Ljava/lang/String;II)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets stroke color"
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    const/4 v0, 0x0

    .line 235
    new-array v1, v0, [I

    const/4 v2, 0x2

    new-array v2, v2, [[I

    const v3, 0x10100a0

    filled-new-array {v3}, [I

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 240
    filled-new-array {p3, p2}, [I

    move-result-object p2

    .line 245
    new-instance p3, Landroid/content/res/ColorStateList;

    invoke-direct {p3, v2, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 247
    invoke-virtual {p1, p3}, Lcom/google/android/material/chip/Chip;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public StrokeSize(Ljava/lang/String;F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets stroke size"
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 253
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChipStrokeWidth(F)V

    return-void
.end method

.method public Text(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets chip text"
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 193
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public TextColor(Ljava/lang/String;II)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the chip text color"
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    const/4 v0, 0x0

    .line 216
    new-array v1, v0, [I

    const/4 v2, 0x2

    new-array v2, v2, [[I

    const v3, 0x10100a0

    filled-new-array {v3}, [I

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 221
    filled-new-array {p3, p2}, [I

    move-result-object p2

    .line 226
    new-instance p3, Landroid/content/res/ColorStateList;

    invoke-direct {p3, v2, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 228
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public VerticalSpacing()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets vertical spacing"
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipGroup:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipGroup;->getChipSpacingVertical()I

    move-result v0

    return v0
.end method

.method public VerticalSpacing(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets vertical spacing"
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipGroup:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    return-void
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronChip;->getView()Lcom/google/android/material/chip/ChipGroup;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lcom/google/android/material/chip/ChipGroup;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipGroup:Lcom/google/android/material/chip/ChipGroup;

    return-object v0
.end method

.method public isChecked(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if the perticular chip is checked"
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip;->chipHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 351
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    return p1
.end method

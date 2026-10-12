.class public final Lcom/google/appinventor/components/runtime/Image;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for displaying images.  The picture to display, and other aspects of the Image\'s appearance, can be specified in the Designer or in the Blocks Editor."
    iconName = "images/image.png"
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# instance fields
.field private clickable:Z

.field private longclickable:Z

.field private picturePath:Ljava/lang/String;

.field private rotationAngle:D

.field private scalingMode:I

.field private final view:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 81
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Image;->rotationAngle:D

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/google/appinventor/components/runtime/Image;->scalingMode:I

    .line 71
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Image;->clickable:Z

    .line 73
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Image;->longclickable:Z

    .line 83
    new-instance v0, Lcom/google/appinventor/components/runtime/Image$1;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Image$1;-><init>(Lcom/google/appinventor/components/runtime/Image;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 94
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/ImageView;)V
    .locals 2

    .line 98
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 65
    const-string p1, ""

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Image;->rotationAngle:D

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/google/appinventor/components/runtime/Image;->scalingMode:I

    .line 71
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Image;->clickable:Z

    .line 73
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Image;->longclickable:Z

    .line 99
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public AlternateText(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A written description of what the image looks like."
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Animation(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is a limited form of animation that can attach a small number of motion types to images.  The allowable motions are ScrollRightSlow, ScrollRight, ScrollRightFast, ScrollLeftSlow, ScrollLeft, ScrollLeftFast, and Stop"
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyAnimation(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "An event that occurs when an image is clicked."
    .end annotation

    const/4 v0, 0x0

    .line 116
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Click"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Clickable(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the image should be clickable or not."
    .end annotation

    .line 123
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Image;->clickable:Z

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 125
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Image;->clickable:Z

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    new-instance v0, Lcom/google/appinventor/components/runtime/Image$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Image$2;-><init>(Lcom/google/appinventor/components/runtime/Image;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public Clickable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies whether the image should be clickable or not."
    .end annotation

    .line 139
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Image;->clickable:Z

    return v0
.end method

.method public LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when image long clicked"
    .end annotation

    const/4 v0, 0x0

    .line 144
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LongClick"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LongClickable(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the image should be long clickable or not."
    .end annotation

    .line 152
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Image;->longclickable:Z

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 154
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Image;->longclickable:Z

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    new-instance v0, Lcom/google/appinventor/components/runtime/Image$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Image$3;-><init>(Lcom/google/appinventor/components/runtime/Image;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public LongClickable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies whether the image should be long clickable or not."
    .end annotation

    .line 169
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Image;->longclickable:Z

    return v0
.end method

.method public Picture()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    return-object v0
.end method

.method public Picture(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-nez p1, :cond_0

    .line 196
    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Image$4;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/Image$4;-><init>(Lcom/google/appinventor/components/runtime/Image;Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TiramisuUtil;->requestImagePermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 210
    :cond_1
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    .line 214
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 216
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    const-string v0, "Unable to load "

    const-string v1, "Image"

    .line 0
    invoke-static {v0, p1, v1}, L_COROUTINE/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 220
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public RotationAngle()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The angle at which the image picture appears rotated. This rotation does not appear on the designer screen, only on the device."
    .end annotation

    .line 250
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Image;->rotationAngle:D

    return-wide v0
.end method

.method public RotationAngle(D)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 232
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Image;->rotationAngle:D

    cmpl-double v2, v0, p1

    if-nez v2, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 238
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "RotationAngle"

    const/16 v1, 0xbb9

    invoke-virtual {p1, p0, v0, v1, p2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    invoke-static {v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/HoneycombUtil;->viewSetRotate(Landroid/view/View;D)V

    .line 243
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Image;->rotationAngle:D

    return-void
.end method

.method public ScalePictureToFit(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies whether the image should be resized to match the size of the ImageView."
    .end annotation

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void

    .line 262
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public Scaling()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 312
    iget v0, p0, Lcom/google/appinventor/components/runtime/Image;->scalingMode:I

    return v0
.end method

.method public Scaling(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This property determines how the picture scales according to the Height or Width of the Image. Scale proportionally (0) preserves the picture aspect ratio. Scale to fit (1) matches the Image area, even if the aspect ratio changes."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 302
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    const-string v1, "Illegal scaling mode: "

    .line 0
    invoke-static {p1, v1}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 304
    :goto_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/Image;->scalingMode:I

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    return-object v0
.end method

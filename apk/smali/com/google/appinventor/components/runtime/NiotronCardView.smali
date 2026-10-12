.class public Lcom/google/appinventor/components/runtime/NiotronCardView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A layout with a rounded corner background and shadow."
    iconName = "images/cardview.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CardView"


# instance fields
.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private allChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end field

.field private final androidUIHandler:Landroid/os/Handler;

.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

.field private clickable:Z

.field private contentPaddingBottom:I

.field private contentPaddingLeft:I

.field private contentPaddingRight:I

.field private contentPaddingTop:I

.field private final context:Landroid/app/Activity;

.field private defaultDrawable:Landroid/graphics/drawable/Drawable;

.field private elevation:I

.field private fullclickable:Z

.field private horizontalAlignment:I

.field private imagePath:Ljava/lang/String;

.field private longclickable:Z

.field private final orientation:I

.field private paddingBottom2:I

.field private paddingLeft2:I

.field private paddingRight2:I

.field private paddingTop2:I

.field private rippleColor:I

.field private rippleEnabled:Z

.field private scrollable:Z

.field private verticalAlignment:I

.field private final viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 9

    .line 105
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->scrollable:Z

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->allChildren:Ljava/util/List;

    .line 64
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->imagePath:Ljava/lang/String;

    .line 68
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->androidUIHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    .line 70
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingLeft:I

    .line 72
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingTop:I

    .line 74
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingRight:I

    .line 76
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingBottom:I

    const v2, -0x333334

    .line 78
    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->rippleColor:I

    .line 80
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->clickable:Z

    .line 82
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->longclickable:Z

    .line 84
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->fullclickable:Z

    const/4 v2, 0x2

    .line 87
    iput v2, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->elevation:I

    .line 89
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->paddingLeft2:I

    .line 90
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->paddingTop2:I

    .line 91
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->paddingRight2:I

    .line 92
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->paddingBottom2:I

    const/4 v3, 0x1

    .line 94
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->rippleEnabled:Z

    .line 106
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->context:Landroid/app/Activity;

    .line 108
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->orientation:I

    .line 109
    new-instance v5, Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v6, 0x64

    .line 110
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 111
    invoke-direct {v5, v4, v0, v7, v7}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 113
    invoke-virtual {v5, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->setBaselineAligned(Z)V

    .line 114
    new-instance v7, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-direct {v7, v5}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 115
    iput v3, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->horizontalAlignment:I

    .line 116
    iput v3, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->verticalAlignment:I

    .line 117
    invoke-virtual {v7, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 118
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget v8, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->verticalAlignment:I

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 119
    new-instance v7, Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-direct {v7, p0, v4}, Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;-><init>(Lcom/google/appinventor/components/runtime/NiotronCardView;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    .line 120
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 123
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v5

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronCardView;->BackgroundColor(I)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronCardView;->Clickable(Z)V

    .line 133
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronCardView;->LongClickable(Z)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronCardView;->FullClickable(Z)V

    const/4 p1, 0x3

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronCardView;->Radius(I)V

    .line 136
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NiotronCardView;->ContentPaddingLeft(I)V

    .line 137
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NiotronCardView;->ContentPaddingRight(I)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NiotronCardView;->ContentPaddingTop(I)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NiotronCardView;->ContentPaddingBottom(I)V

    .line 140
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NiotronCardView;->Elevation(I)V

    .line 141
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NiotronCardView;->CornerOverlap(Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronCardView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->fullclickable:Z

    return p0
.end method

.method private refreshPadding()V
    .locals 5

    .line 507
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->paddingLeft2:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->paddingTop2:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->paddingRight2:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->paddingBottom2:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/card/MaterialCardView;->setContentPadding(IIII)V

    .line 508
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateAppearance()V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 660
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->backgroundColor:I

    if-eqz v0, :cond_0

    .line 661
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v1, v0}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    goto :goto_0

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    goto :goto_0

    .line 667
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v1, v0}, Lcom/google/android/material/card/MaterialCardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 669
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->allChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public AlignHorizontal()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the %type% are aligned  horizontally. The choices are: 1 = left aligned, 2 = right aligned,  3 = horizontally centered.  Alignment has no effect if the arrangement\'s width is automatic."
    .end annotation

    .line 247
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->horizontalAlignment:I

    return v0
.end method

.method public AlignHorizontal(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Alignment horizontal"
    .end annotation

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 265
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->horizontalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 267
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 268
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 267
    const-string p1, "HorizontalAlignment"

    const/16 v2, 0x579

    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public AlignVertical()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the %type% are aligned  vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom.  Alignment has no effect if the arrangement\'s height is automatic."
    .end annotation

    .line 284
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->verticalAlignment:I

    return v0
.end method

.method public AlignVertical(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Align vertical"
    .end annotation

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 302
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->verticalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 304
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 305
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 304
    const-string p1, "VerticalAlignment"

    const/16 v2, 0x57a

    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the background color of the %type%"
    .end annotation

    .line 318
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the background color of the %type%. The background color will not be visible if an Image is being displayed."
    .end annotation

    .line 336
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->backgroundColor:I

    .line 337
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronCardView;->updateAppearance()V

    return-void
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when card clicked"
    .end annotation

    const/4 v0, 0x0

    .line 646
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

    .line 724
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->clickable:Z

    .line 725
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setClickable(Z)V

    .line 726
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->clickable:Z

    if-eqz p1, :cond_0

    .line 727
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronCardView$5;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronCardView$5;-><init>(Lcom/google/appinventor/components/runtime/NiotronCardView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 734
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

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

    .line 740
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->clickable:Z

    return v0
.end method

.method public CompatPadding(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Enable this property to make your card view look more realistic, it sets card margin according to elevation"
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setUseCompatPadding(Z)V

    .line 595
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public CompatPadding()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "corner overlap"
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    return v0
.end method

.method public ContentPaddingBottom()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "content padding to bottom of cardview"
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContentPaddingBottom()I

    move-result v0

    return v0
.end method

.method public ContentPaddingBottom(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets content padding to bottom of cardview"
    .end annotation

    .line 450
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    .line 451
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingBottom:I

    .line 452
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingLeft:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingTop:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingRight:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/material/card/MaterialCardView;->setContentPadding(IIII)V

    .line 453
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public ContentPaddingLeft()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "content padding to left of cardview"
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContentPaddingLeft()I

    move-result v0

    return v0
.end method

.method public ContentPaddingLeft(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets content padding to left of cardview"
    .end annotation

    .line 411
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    .line 412
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingLeft:I

    .line 413
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingTop:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingRight:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingBottom:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/material/card/MaterialCardView;->setContentPadding(IIII)V

    .line 414
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public ContentPaddingRight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "content padding to right of cardview"
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContentPaddingRight()I

    move-result v0

    return v0
.end method

.method public ContentPaddingRight(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets content padding to right of cardview"
    .end annotation

    .line 437
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    .line 438
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingRight:I

    .line 439
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingLeft:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingTop:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingBottom:I

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/material/card/MaterialCardView;->setContentPadding(IIII)V

    .line 440
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public ContentPaddingTop()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "content padding to top of cardview"
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContentPaddingTop()I

    move-result v0

    return v0
.end method

.method public ContentPaddingTop(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets content padding to top of cardview"
    .end annotation

    .line 424
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    .line 425
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingTop:I

    .line 426
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingLeft:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingRight:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->contentPaddingBottom:I

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/material/card/MaterialCardView;->setContentPadding(IIII)V

    .line 427
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public CornerOverlap(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "On pre-Lollipop platforms, CardView does not clip the bounds of the Card for the rounded corners."
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setPreventCornerOverlap(Z)V

    .line 584
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public CornerOverlap()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "corner overlap"
    .end annotation

    .line 588
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v0

    return v0
.end method

.method public Elevation()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the elevation"
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getCardElevation()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->dp(I)I

    move-result v0

    return v0
.end method

.method public Elevation(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets elevation to cardview"
    .end annotation

    .line 397
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    .line 398
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->elevation:I

    .line 399
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setCardElevation(F)V

    .line 400
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setMaxCardElevation(F)V

    return-void
.end method

.method public FullClickable(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the card should be full clickable or not."
    .end annotation

    .line 676
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->fullclickable:Z

    if-eqz p1, :cond_0

    .line 678
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setClickable(Z)V

    .line 679
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronCardView$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronCardView$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronCardView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 685
    :cond_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->clickable:Z

    if-nez p1, :cond_1

    .line 686
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setClickable(Z)V

    .line 687
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public FullClickable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies whether the card should be full clickable or not."
    .end annotation

    .line 693
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->fullclickable:Z

    return v0
.end method

.method public Image()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the background image for the %type%.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    .line 371
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->imagePath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 377
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 379
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->imagePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :catch_0
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronCardView;->updateAppearance()V

    return-void
.end method

.method public LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when card long clicked"
    .end annotation

    const/4 v0, 0x0

    .line 650
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

    .line 700
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->longclickable:Z

    .line 701
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 702
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->longclickable:Z

    if-eqz p1, :cond_0

    .line 703
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronCardView$4;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronCardView$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronCardView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 711
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

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

    .line 717
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->longclickable:Z

    return v0
.end method

.method public PaddingBottom(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Padding bottom"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 492
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->paddingBottom2:I

    .line 493
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronCardView;->refreshPadding()V

    return-void
.end method

.method public PaddingLeft(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Padding left"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 483
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->paddingLeft2:I

    .line 484
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronCardView;->refreshPadding()V

    return-void
.end method

.method public PaddingRight(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Radding right"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 474
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->paddingRight2:I

    .line 475
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronCardView;->refreshPadding()V

    return-void
.end method

.method public PaddingTop(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 465
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->paddingTop2:I

    .line 466
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronCardView;->refreshPadding()V

    return-void
.end method

.method public Radious()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Radius of cardview"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getRadius()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->dp(I)I

    move-result v0

    return v0
.end method

.method public Radious(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets radius to cardview"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 524
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    .line 525
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setRadius(F)V

    .line 526
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public Radius()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Radius of cardview"
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getRadius()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->dp(I)I

    move-result v0

    return v0
.end method

.method public Radius(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets radius to cardview"
    .end annotation

    .line 515
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    .line 516
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setRadius(F)V

    .line 517
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public RippleColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets ripple color"
    .end annotation

    .line 556
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->rippleColor:I

    .line 557
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->rippleEnabled:Z

    if-eqz p1, :cond_0

    .line 558
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v1, v1, [[I

    const v2, 0x10100a7

    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->rippleColor:I

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 565
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public RippleEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Enables/Disables ripple"
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 532
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->rippleEnabled:Z

    if-nez p1, :cond_0

    .line 534
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v1, [I

    new-array v0, v0, [[I

    aput-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/card/MaterialCardView;->setRippleColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 542
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v0, v0, [[I

    const v3, 0x10100a7

    filled-new-array {v3}, [I

    move-result-object v3

    aput-object v3, v0, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->rippleColor:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/card/MaterialCardView;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 550
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public SetPadding(IIII)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Method for setting padding"
        userVisible = false
    .end annotation

    .line 499
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->paddingTop2:I

    .line 500
    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->paddingBottom2:I

    .line 501
    iput p3, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->paddingRight2:I

    .line 502
    iput p4, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->paddingLeft2:I

    .line 503
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronCardView;->refreshPadding()V

    return-void
.end method

.method public ShadowColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get Stroke Color Of CardView"
    .end annotation

    .line 637
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 638
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-static {v0}, Landroidx/core/view/accessibility/a;->b(Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;)I

    move-result v0

    return v0

    :cond_0
    const v0, -0x777778

    return v0
.end method

.method public ShadowColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set Shadow Color Of CardView, Works Only Above SDK 28"
    .end annotation

    .line 628
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 629
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-static {v0, p1}, Landroidx/core/view/accessibility/a;->k(Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;I)V

    .line 630
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-static {v0, p1}, Landroidx/core/view/accessibility/a;->p(Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;I)V

    .line 631
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public StrokeColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get Stroke Color Of CardView"
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getStrokeColor()I

    move-result v0

    return v0
.end method

.method public StrokeColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set Stroke Color Of CardView"
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 618
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public StrokeWidth()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get Stroke Width Of CardView"
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getStrokeWidth()I

    move-result v0

    return v0
.end method

.method public StrokeWidth(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set Stroke Width Of CardView"
    .end annotation

    .line 605
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 606
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->allChildren:Ljava/util/List;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->cardContainer:Lcom/google/appinventor/components/runtime/NiotronCardView$CardViewUtil;

    return-object v0
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronCardView$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronCardView$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronCardView;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_1

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 209
    div-int/lit8 p2, v0, 0x64

    .line 212
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 214
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 215
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForHorizontalLayout(Landroid/view/View;I)V

    return-void

    .line 217
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/NiotronCardView;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    if-ge p3, v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronCardView$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/NiotronCardView$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronCardView;Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 p3, -0x3e8

    if-gt p2, p3, :cond_1

    .line 182
    const-string p3, "HVArrangement.setChildWidth(): width = "

    const-string v1, " parent Width = "

    const-string v2, " child = "

    .line 0
    invoke-static {p2, v0, p3, v1, v2}, L_COROUTINE/a;->n(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 182
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "CardView"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 183
    div-int/lit8 p2, v0, 0x64

    .line 186
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 188
    iget p3, p0, Lcom/google/appinventor/components/runtime/NiotronCardView;->orientation:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 189
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForHorizontalLayout(Landroid/view/View;I)V

    return-void

    .line 191
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    return-void
.end method

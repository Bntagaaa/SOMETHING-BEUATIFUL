.class public final Lcom/google/appinventor/components/runtime/NiotronBadge;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A badge component that sticks to the view provided in a specific location"
    iconName = "images/niotronBadge.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

.field context:Landroid/content/Context;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 36
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 37
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBadge;->context:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable;->create(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBadge;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    return-void
.end method

.method private updateDrawable()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBadge;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronBadge$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronBadge$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronBadge;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public Alpha(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Property for setting alpha"
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBadge;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setAlpha(I)V

    .line 59
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBadge;->updateDrawable()V

    return-void
.end method

.method public AnchorComponent(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "VisibleComponents"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Property for attaching badge into a component"
    .end annotation

    .line 115
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBadge;->view:Landroid/view/View;

    .line 116
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBadge;->updateDrawable()V

    return-void
.end method

.method public AutoMirrored(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Property for setting auto mirrored"
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBadge;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 80
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBadge;->updateDrawable()V

    return-void
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFF0000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Property for setting background color"
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBadge;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setBackgroundColor(I)V

    .line 45
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBadge;->updateDrawable()V

    return-void
.end method

.method public BadgeGravity(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Top Right"
        editorArgs = {
            "Top Right",
            "Top Left",
            "Bottom Right",
            "Bottom Left"
        }
        editorType = "choices"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Property for setting vertical offset"
        userVisible = false
    .end annotation

    .line 100
    const-string v0, "Top Right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBadge;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    const v0, 0x800035

    invoke-virtual {p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setBadgeGravity(I)V

    goto :goto_0

    .line 102
    :cond_0
    const-string v0, "Top Left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBadge;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    const v0, 0x800033

    invoke-virtual {p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setBadgeGravity(I)V

    goto :goto_0

    .line 104
    :cond_1
    const-string v0, "Bottom Left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBadge;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    const v0, 0x800053

    invoke-virtual {p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setBadgeGravity(I)V

    goto :goto_0

    .line 106
    :cond_2
    const-string v0, "Bottom Right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 107
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBadge;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    const v0, 0x800055

    invoke-virtual {p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setBadgeGravity(I)V

    .line 109
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBadge;->updateDrawable()V

    return-void
.end method

.method public HorizontalOffset(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Property for setting horizontal offset"
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBadge;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setHorizontalOffset(I)V

    .line 87
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBadge;->updateDrawable()V

    return-void
.end method

.method public MaxCharacter(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Property for setting max character"
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBadge;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setMaxCharacterCount(I)V

    .line 73
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBadge;->updateDrawable()V

    return-void
.end method

.method public Number(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Property for setting number"
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBadge;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setNumber(I)V

    .line 66
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBadge;->updateDrawable()V

    return-void
.end method

.method public TextColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFF0000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Property for setting text color"
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBadge;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setBadgeTextColor(I)V

    .line 52
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBadge;->updateDrawable()V

    return-void
.end method

.method public VerticalOffset(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Property for setting vertical offset"
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBadge;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setVerticalOffset(I)V

    .line 94
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBadge;->updateDrawable()V

    return-void
.end method

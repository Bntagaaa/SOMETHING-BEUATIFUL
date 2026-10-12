.class public final Lcom/google/appinventor/components/runtime/Switch;
.super Lcom/google/appinventor/components/runtime/ToggleBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Toggle switch that raises an event when the user clicks on it. There are many properties affecting its appearance that can be set in the Designer or Blocks Editor."
    iconName = "images/switch.png"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/ToggleBase<",
        "Landroid/widget/CompoundButton;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final switchView:Landroidx/appcompat/widget/SwitchCompat;

.field private thumbColorActive:I

.field private thumbColorInactive:I

.field private trackColorActive:I

.field private trackColorInactive:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ToggleBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 55
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Switch;->activity:Landroid/app/Activity;

    .line 59
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroidx/appcompat/widget/SwitchCompat;

    .line 61
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroidx/appcompat/widget/SwitchCompat;

    .line 64
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    :goto_0
    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Switch;->On(Z)V

    const/4 p1, -0x1

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Switch;->ThumbColorActive(I)V

    const p1, -0x333334

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Switch;->ThumbColorInactive(I)V

    const p1, -0xff0100

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Switch;->TrackColorActive(I)V

    const p1, -0x777778

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Switch;->TrackColorInactive(I)V

    .line 73
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ToggleBase;->initToggle()V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ToggleBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 79
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Switch;->activity:Landroid/app/Activity;

    .line 80
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroidx/appcompat/widget/SwitchCompat;

    .line 81
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    .line 83
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 84
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private createSwitchColors(II)Landroid/content/res/ColorStateList;
    .locals 5

    .line 88
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    new-array v2, v1, [I

    const/4 v3, 0x2

    new-array v3, v3, [[I

    const v4, 0x10100a0

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v2, v3, v1

    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-direct {v0, v3, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method


# virtual methods
.method public Changed()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User change the state of the `Switch` from On to Off or back."
    .end annotation

    .line 227
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/ToggleBase;->Changed()V

    return-void
.end method

.method public On(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 221
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public On()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public ThumbColorActive()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 106
    iget v0, p0, Lcom/google/appinventor/components/runtime/Switch;->thumbColorActive:I

    return v0
.end method

.method public ThumbColorActive(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 118
    iput p1, p0, Lcom/google/appinventor/components/runtime/Switch;->thumbColorActive:I

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Switch;->thumbColorInactive:I

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/Switch;->createSwitchColors(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 121
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public ThumbColorInactive()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = true
    .end annotation

    .line 133
    iget v0, p0, Lcom/google/appinventor/components/runtime/Switch;->thumbColorInactive:I

    return v0
.end method

.method public ThumbColorInactive(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 145
    iput p1, p0, Lcom/google/appinventor/components/runtime/Switch;->thumbColorInactive:I

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Switch;->thumbColorActive:I

    invoke-direct {p0, v1, p1}, Lcom/google/appinventor/components/runtime/Switch;->createSwitchColors(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 148
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public TrackColorActive()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = true
    .end annotation

    .line 159
    iget v0, p0, Lcom/google/appinventor/components/runtime/Switch;->trackColorActive:I

    return v0
.end method

.method public TrackColorActive(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF00FF00"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Color of the toggle track when switched on"
        userVisible = true
    .end annotation

    .line 175
    iput p1, p0, Lcom/google/appinventor/components/runtime/Switch;->trackColorActive:I

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Switch;->trackColorInactive:I

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/Switch;->createSwitchColors(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 178
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public TrackColorInactive()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = true
    .end annotation

    .line 163
    iget v0, p0, Lcom/google/appinventor/components/runtime/Switch;->trackColorInactive:I

    return v0
.end method

.method public TrackColorInactive(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Color of the toggle track when switched off"
        userVisible = true
    .end annotation

    .line 190
    iput p1, p0, Lcom/google/appinventor/components/runtime/Switch;->trackColorInactive:I

    .line 191
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Switch;->trackColorActive:I

    invoke-direct {p0, v1, p1}, Lcom/google/appinventor/components/runtime/Switch;->createSwitchColors(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 193
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

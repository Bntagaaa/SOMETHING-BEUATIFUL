.class public Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;


# instance fields
.field private final activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    return-void
.end method


# virtual methods
.method public hasActionBar()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requestActionBar()V
    .locals 0

    return-void
.end method

.method public setActionBarAnimation(Z)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setActionBarVisible(Z)Z
    .locals 5

    .line 30
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 32
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    instance-of v0, p1, Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 33
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/Form;

    check-cast p1, Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x38b

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "ActionBar"

    invoke-virtual {v0, p1, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->show()V

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;Z)V
    .locals 0

    .line 67
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ImageViewUtil;->setMenuButtonColor(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

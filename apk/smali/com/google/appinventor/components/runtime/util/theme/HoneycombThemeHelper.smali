.class public Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;


# instance fields
.field private final activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    return-void
.end method


# virtual methods
.method public hasActionBar()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requestActionBar()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    :cond_0
    return-void
.end method

.method public setActionBarAnimation(Z)V
    .locals 0

    return-void
.end method

.method public setActionBarVisible(Z)Z
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 36
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    instance-of v0, p1, Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 37
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

    .line 41
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;Z)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "<font color=\"black\">"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</font>"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    const/high16 p2, -0x1000000

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ImageViewUtil;->setMenuButtonColor(Landroid/app/Activity;I)V

    return-void

    .line 74
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ImageViewUtil;->setMenuButtonColor(Landroid/app/Activity;I)V

    :cond_1
    return-void
.end method

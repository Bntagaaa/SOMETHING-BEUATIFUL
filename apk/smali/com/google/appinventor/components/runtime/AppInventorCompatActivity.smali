.class public Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/app/AppCompatCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;
    }
.end annotation


# static fields
.field static final DEFAULT_PRIMARY_COLOR:I

.field private static final LOG_TAG:Ljava/lang/String; = "AppInventorCompatActivity"

.field private static actionBarEnabled:Z

.field private static classicMode:Z

.field private static currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

.field private static didSetClassicModeFromYail:Z

.field private static primaryColor:I


# instance fields
.field protected appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

.field frameWithTitle:Landroid/widget/LinearLayout;

.field protected themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

.field titleBar:Landroid/widget/TextView;

.field protected toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-string v0, "&HFF6200EE"

    .line 49
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->DEFAULT_PRIMARY_COLOR:I

    const/4 v0, 0x0

    .line 50
    sput-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    .line 52
    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->PACKAGED:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    sput-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    .line 57
    sput-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->didSetClassicModeFromYail:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private applyTheme()V
    .locals 4

    .line 266
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "applyTheme "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$1;->$SwitchMap$com$google$appinventor$components$runtime$AppInventorCompatActivity$Theme:[I

    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const v0, 0x1030129

    .line 272
    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    return-void

    :cond_1
    const v0, 0x103012c

    .line 269
    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static getPrimaryColor()I
    .locals 1

    .line 217
    sget v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->primaryColor:I

    return v0
.end method

.method public static isActionBarEnabled()Z
    .locals 1

    .line 196
    sget-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->actionBarEnabled:Z

    return v0
.end method

.method public static isClassicMode()Z
    .locals 1

    .line 206
    sget-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    return v0
.end method

.method public static isEmulator()Z
    .locals 2

    .line 189
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "google_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sdk"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sdk_gphone"

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static setClassicModeFromYail(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .locals 3

    .line 177
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegate;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 182
    :catch_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    return-object v1
.end method

.method public final isAppCompatMode()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRepl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 68
    new-instance v0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;-><init>(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    .line 69
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->PACKAGED:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    if-eq v0, v1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->applyTheme()V

    .line 72
    :cond_0
    invoke-static {p0, p0}, Landroidx/appcompat/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroidx/appcompat/app/AppCompatCallback;)Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    .line 73
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 79
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->setContentView(Landroid/view/View;)V

    .line 80
    new-instance p1, Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 81
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance p1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 83
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDelegate;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 86
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->hasActionBar()Z

    move-result p1

    sput-boolean p1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->actionBarEnabled:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPostResume()V
    .locals 1

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onPostResume()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onStop()V

    :cond_0
    return-void
.end method

.method public onSupportActionModeFinished(Landroidx/appcompat/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onSupportActionModeStarted(Landroidx/appcompat/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 136
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 137
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz p2, :cond_0

    .line 138
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onWindowStartingSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public setActionBarEnabled(Z)V
    .locals 0

    .line 201
    sput-boolean p1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->actionBarEnabled:Z

    return-void
.end method

.method public setAppInventorTheme(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;)V
    .locals 1

    .line 258
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    if-ne p1, v0, :cond_0

    return-void

    .line 261
    :cond_0
    sput-object p1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    .line 262
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->applyTheme()V

    return-void
.end method

.method public setClassicMode(Z)V
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isRepl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 212
    sput-boolean p1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    if-eq p1, v0, :cond_0

    .line 162
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    return-void

    .line 171
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 3

    .line 222
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-nez p1, :cond_0

    .line 223
    sget v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->DEFAULT_PRIMARY_COLOR:I

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-eqz v0, :cond_1

    .line 224
    sget v2, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->primaryColor:I

    if-eq v1, v2, :cond_1

    .line 226
    sput v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->primaryColor:I

    .line 227
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public styleTitleBar()V
    .locals 5

    .line 242
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 243
    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    sget-boolean v2, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->actionBarEnabled:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "actionBarEnabled = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "actionBar = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 246
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getPrimaryColor()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    sget-boolean v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->actionBarEnabled:Z

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->show()V

    return-void

    .line 251
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    :cond_1
    return-void
.end method

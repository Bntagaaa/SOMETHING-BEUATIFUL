.class public final synthetic Landroidx/appcompat/app/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Landroidx/appcompat/app/k;->a:I

    iput-object p1, p0, Landroidx/appcompat/app/k;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/app/k;->b:Landroid/content/Context;

    iget v1, p0, Landroidx/appcompat/app/k;->a:I

    packed-switch v1, :pswitch_data_0

    .line 877
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->e(Landroid/content/Context;)V

    return-void

    .line 166
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    .line 0
    sget-object v1, Landroidx/appcompat/app/AppCompatDelegate;->a:Landroidx/appcompat/app/w$a;

    .line 167
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 175
    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegate;->getApplicationLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/os/LocaleListCompat;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-static {v0}, Landroidx/appcompat/app/w;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 185
    const-string v4, "locale"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 189
    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegate$a;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    .line 187
    invoke-static {v4, v2}, Landroidx/appcompat/app/AppCompatDelegate$b;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    .line 198
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 915
    :cond_1
    sput-boolean v3, Landroidx/appcompat/app/AppCompatDelegate;->f:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

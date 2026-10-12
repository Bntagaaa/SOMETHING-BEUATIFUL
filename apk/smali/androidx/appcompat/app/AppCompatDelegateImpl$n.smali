.class abstract Landroidx/appcompat/app/AppCompatDelegateImpl$n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "n"
.end annotation


# instance fields
.field public a:Landroid/content/BroadcastReceiver;

.field public final synthetic b:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    .line 3629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$n;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 3661
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$n;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3663
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$n;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 3668
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$n;->a:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public abstract b()Landroid/content/IntentFilter;
.end method

.method public final c()V
    .locals 3

    .line 3638
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$n;->a()V

    .line 3640
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$n;->b()Landroid/content/IntentFilter;

    move-result-object v0

    .line 3641
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3646
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$n;->a:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 3647
    new-instance v1, Landroidx/appcompat/app/t;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/t;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl$n;)V

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$n;->a:Landroid/content/BroadcastReceiver;

    .line 3654
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$n;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroid/content/Context;

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$n;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public abstract getApplyableNightMode()I
.end method

.method public abstract onChange()V
.end method

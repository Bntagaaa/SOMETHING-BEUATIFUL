.class Landroidx/appcompat/app/t;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl$n;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl$n;)V
    .locals 0

    .line 3647
    iput-object p1, p0, Landroidx/appcompat/app/t;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$n;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 3650
    iget-object p1, p0, Landroidx/appcompat/app/t;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$n;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$n;->onChange()V

    return-void
.end method

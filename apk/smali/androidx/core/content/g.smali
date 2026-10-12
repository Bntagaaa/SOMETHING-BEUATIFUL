.class Landroidx/core/content/g;
.super Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/core/content/h;


# direct methods
.method public constructor <init>(Landroidx/core/content/h;)V
    .locals 0

    .line 122
    iput-object p1, p0, Landroidx/core/content/g;->a:Landroidx/core/content/h;

    invoke-direct {p0}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsPermissionRevocationEnabledForAppResult(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Landroidx/core/content/g;->a:Landroidx/core/content/h;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 128
    iget-object p1, v0, Landroidx/core/content/h;->b:Landroidx/concurrent/futures/ResolvableFuture;

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    return-void

    .line 130
    :cond_0
    iget-object p1, v0, Landroidx/core/content/h;->b:Landroidx/concurrent/futures/ResolvableFuture;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    return-void

    .line 134
    :cond_1
    iget-object p1, v0, Landroidx/core/content/h;->b:Landroidx/concurrent/futures/ResolvableFuture;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 135
    const-string p1, "PackageManagerCompat"

    const-string p2, "Unable to retrieve the permission revocation setting from the backport"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

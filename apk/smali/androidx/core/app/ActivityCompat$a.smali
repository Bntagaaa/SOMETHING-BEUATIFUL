.class Landroidx/core/app/ActivityCompat$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 0

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/core/app/ActivityCompat$a;->a:[Ljava/lang/String;

    iput-object p1, p0, Landroidx/core/app/ActivityCompat$a;->b:Landroid/app/Activity;

    iput p3, p0, Landroidx/core/app/ActivityCompat$a;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 566
    iget-object v0, p0, Landroidx/core/app/ActivityCompat$a;->a:[Ljava/lang/String;

    array-length v1, v0

    new-array v1, v1, [I

    .line 568
    iget-object v2, p0, Landroidx/core/app/ActivityCompat$a;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 569
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 571
    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    .line 573
    aget-object v7, v0, v6

    invoke-virtual {v3, v7, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 577
    :cond_0
    check-cast v2, Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;

    iget v3, p0, Landroidx/core/app/ActivityCompat$a;->c:I

    invoke-interface {v2, v3, v0, v1}, Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

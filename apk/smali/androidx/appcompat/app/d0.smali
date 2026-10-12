.class Landroidx/appcompat/app/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/d0$a;
    }
.end annotation


# static fields
.field public static d:Landroidx/appcompat/app/d0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/location/LocationManager;

.field public final c:Landroidx/appcompat/app/d0$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroidx/appcompat/app/d0$a;

    invoke-direct {v0}, Landroidx/appcompat/app/d0$a;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/d0;->c:Landroidx/appcompat/app/d0$a;

    .line 70
    iput-object p1, p0, Landroidx/appcompat/app/d0;->a:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Landroidx/appcompat/app/d0;->b:Landroid/location/LocationManager;

    return-void
.end method

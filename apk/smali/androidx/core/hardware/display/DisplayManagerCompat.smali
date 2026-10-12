.class public final Landroidx/core/hardware/display/DisplayManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/hardware/display/DisplayManagerCompat$a;
    }
.end annotation


# static fields
.field public static final DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field public static final b:Ljava/util/WeakHashMap;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/core/hardware/display/DisplayManagerCompat;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->a:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/core/hardware/display/DisplayManagerCompat;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 65
    sget-object v0, Landroidx/core/hardware/display/DisplayManagerCompat;->b:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 66
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/hardware/display/DisplayManagerCompat;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Landroidx/core/hardware/display/DisplayManagerCompat;

    invoke-direct {v1, p0}, Landroidx/core/hardware/display/DisplayManagerCompat;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 71
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    .line 72
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getDisplay(I)Landroid/view/Display;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 88
    iget-object v0, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->a:Landroid/content/Context;

    const-string v1, "display"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 88
    invoke-static {v0, p1}, Landroidx/core/hardware/display/DisplayManagerCompat$a;->a(Landroid/hardware/display/DisplayManager;I)Landroid/view/Display;

    move-result-object p1

    return-object p1
.end method

.method public getDisplays()[Landroid/view/Display;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 109
    iget-object v0, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->a:Landroid/content/Context;

    const-string v1, "display"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 109
    invoke-static {v0}, Landroidx/core/hardware/display/DisplayManagerCompat$a;->b(Landroid/hardware/display/DisplayManager;)[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 138
    iget-object p1, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->a:Landroid/content/Context;

    const-string v0, "display"

    .line 139
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 138
    invoke-static {p1}, Landroidx/core/hardware/display/DisplayManagerCompat$a;->b(Landroid/hardware/display/DisplayManager;)[Landroid/view/Display;

    move-result-object p1

    return-object p1
.end method

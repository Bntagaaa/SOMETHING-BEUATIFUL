.class Landroidx/core/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Application;

.field public final synthetic b:Landroidx/core/app/e$b;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroidx/core/app/e$b;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/d;->a:Landroid/app/Application;

    iput-object p2, p0, Landroidx/core/app/d;->b:Landroidx/core/app/e$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 166
    iget-object v0, p0, Landroidx/core/app/d;->a:Landroid/app/Application;

    iget-object v1, p0, Landroidx/core/app/d;->b:Landroidx/core/app/e$b;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

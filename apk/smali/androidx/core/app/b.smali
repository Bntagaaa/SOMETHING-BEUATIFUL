.class public final synthetic Landroidx/core/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;


# instance fields
.field public final synthetic a:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/b;->a:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    return-void
.end method


# virtual methods
.method public final onSharedElementsReady()V
    .locals 2

    iget-object v0, p0, Landroidx/core/app/b;->a:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    sget v1, Landroidx/core/app/ActivityCompat$j;->b:I

    .line 773
    invoke-static {v0}, Landroidx/core/app/ActivityCompat$e;->a(Ljava/lang/Object;)V

    return-void
.end method

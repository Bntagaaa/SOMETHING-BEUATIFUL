.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;
.super Lorg/osmdroid/views/MapView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomMapView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Landroid/content/Context;)V
    .locals 2

    .line 273
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .line 274
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;I)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, v0}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 2

    .line 277
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .line 278
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;I)V

    invoke-direct {p0, p2, p3, v0}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onDetach()V
    .locals 0

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    .line 283
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;->getScrollX()I

    move-result v0

    sub-int v1, p3, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;->getScrollY()I

    move-result v0

    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;->scrollTo(II)V

    .line 284
    invoke-super {p0, p1, p2, p3, p4}, Lorg/osmdroid/views/MapView;->onSizeChanged(IIII)V

    return-void
.end method

.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->onSuccess(Lorg/osmdroid/views/overlay/Marker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$2;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerDrag(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 2

    .line 588
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$2;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->b(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 589
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$2;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMarkerDragEnd(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 5

    .line 595
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    .line 596
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$2;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->updateLocation(DD)V

    .line 597
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$2;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->b(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 598
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$2;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMarkerDragStart(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 2

    .line 604
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$2;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->b(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 605
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$2;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    :cond_0
    return-void
.end method

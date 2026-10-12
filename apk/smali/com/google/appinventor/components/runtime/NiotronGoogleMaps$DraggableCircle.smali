.class Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DraggableCircle"
.end annotation


# instance fields
.field private final centerMarker:Lcom/google/android/gms/maps/model/Marker;

.field private final circle:Lcom/google/android/gms/maps/model/Circle;

.field private radius:D

.field private radiusMarker:Lcom/google/android/gms/maps/model/Marker;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;Lcom/google/android/gms/maps/model/LatLng;DFII)V
    .locals 4

    .line 1572
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1573
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->radius:D

    .line 1574
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->d(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1575
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/4 v2, 0x1

    .line 1576
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 1574
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->centerMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1577
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->d(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1578
    invoke-static {p2, p3, p4}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->h(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 1579
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v2, 0x43520000    # 210.0f

    .line 1580
    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 1577
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1582
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->d(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 1583
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1584
    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1585
    invoke-virtual {p2, p5}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1586
    invoke-virtual {p2, p6}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1587
    invoke-virtual {p2, p7}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1582
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;FII)V
    .locals 3

    .line 1590
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1591
    invoke-static {p2, p3}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->i(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->radius:D

    .line 1592
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->d(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1593
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/4 v2, 0x1

    .line 1594
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 1592
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->centerMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1595
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->d(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1596
    invoke-virtual {v1, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p3

    .line 1597
    invoke-virtual {p3, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p3

    const/high16 v1, 0x43520000    # 210.0f

    .line 1598
    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p3

    .line 1595
    invoke-virtual {v0, p3}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p3

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1600
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->d(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {p3}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 1601
    invoke-virtual {p3, p2}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->radius:D

    .line 1602
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1603
    invoke-virtual {p2, p4}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1604
    invoke-virtual {p2, p5}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1605
    invoke-virtual {p2, p6}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1600
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;FII)V
    .locals 2

    .line 1608
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1609
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->i(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->radius:D

    .line 1610
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->centerMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1611
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1612
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->d(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {p3}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 1613
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->radius:D

    .line 1614
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1615
    invoke-virtual {p2, p4}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1616
    invoke-virtual {p2, p5}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1617
    invoke-virtual {p2, p6}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p2

    .line 1612
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    return-void
.end method


# virtual methods
.method public getCenterMarker()Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    .line 1640
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->centerMarker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method public getCircle()Lcom/google/android/gms/maps/model/Circle;
    .locals 1

    .line 1648
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    return-object v0
.end method

.method public getRadius()Ljava/lang/Double;
    .locals 2

    .line 1652
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->radius:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getRadiusMarker()Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    .line 1644
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method public onMarkerMoved(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 4

    .line 1621
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->centerMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/Circle;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1623
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->radius:D

    invoke-static {p1, v2, v3}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->h(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    return v1

    .line 1626
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1627
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->centerMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->i(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->radius:D

    .line 1628
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeFromMap()V
    .locals 1

    .line 1635
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 1636
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->centerMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1637
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    return-void
.end method

.method public setRadiusMarker(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    .line 1656
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    return-void
.end method

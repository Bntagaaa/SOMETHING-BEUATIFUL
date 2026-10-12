.class final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final out:Ljava/io/PrintStream;


# direct methods
.method private constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/PrintStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;-><init>(Ljava/io/PrintStream;)V

    return-void
.end method

.method private static hasAltitude(Lorg/osmdroid/util/GeoPoint;)Z
    .locals 4

    const-wide/16 v0, 0x0

    .line 758
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private writeColorProperty(Ljava/lang/String;I)V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, ",\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 563
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v0, "\":\"&H"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 564
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    .line 565
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 568
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 569
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private writeLineGeometry(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"LineString\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 626
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    .line 627
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v0, "]}"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private writeMultipolygonGeometryNoHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 5

    .line 631
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"MultiPolygon\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 632
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 633
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    .line 635
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 636
    const-string v2, ","

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 638
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    .line 639
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 640
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 641
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 642
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    goto :goto_1

    .line 645
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    .line 648
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v0, "]}"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private writePointGeometry(Lorg/osmdroid/util/GeoPoint;)V
    .locals 4

    .line 573
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"Point\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->print(D)V

    .line 575
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintStream;->print(D)V

    .line 577
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->hasAltitude(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->print(D)V

    .line 581
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v0, "]}"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private writePoints(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .line 609
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(C)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintStream;->print(D)V

    .line 613
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->print(D)V

    .line 615
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->hasAltitude(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->print(D)V

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private writePolygonGeometry(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 2

    .line 664
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 665
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeMultipolygonGeometryNoHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    return-void

    .line 667
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePolygonGeometryNoHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    return-void
.end method

.method private writePolygonGeometryNoHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"Polygon\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 653
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    .line 654
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 656
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 657
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    goto :goto_0

    .line 660
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v0, "]}"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V
    .locals 2

    .line 603
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor()I

    move-result v0

    const-string v1, "fill"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeColorProperty(Ljava/lang/String;I)V

    .line 604
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillOpacity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "fill-opacity"

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
    .locals 2

    .line 597
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v0

    const-string v1, "stroke"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeColorProperty(Ljava/lang/String;I)V

    .line 598
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeOpacity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "stroke-opacity"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "stroke-width"

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2

    .line 589
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object v0

    const-string v1, "description"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "draggable"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 591
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->EnableInfobox()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "infobox"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    const-string v0, "title"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Visible()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "visible"

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private writePropertiesHeader(Ljava/lang/String;)V
    .locals 3

    .line 585
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",\"properties\":{\"$Type\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private writeProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 542
    :try_start_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 543
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, ",\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to serialize the value of \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" as JSON"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GeoJSONUtil"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private writeProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 553
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 557
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private writeType(Ljava/lang/String;)V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\"type\":\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 537
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 526
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 526
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 526
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 526
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 526
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    .line 719
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v0, "{"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 720
    const-string p2, "Feature"

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 721
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(C)V

    .line 722
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePointGeometry(Lorg/osmdroid/util/GeoPoint;)V

    .line 723
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 724
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 725
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 726
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 727
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string p2, "}}"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    .line 692
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v0, "{"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 693
    const-string p2, "Feature"

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 694
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(C)V

    .line 695
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeLineGeometry(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    .line 696
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 697
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 698
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 699
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string p2, "}}"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    .line 673
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v0, "{"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 674
    const-string p2, "Feature"

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 675
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(C)V

    .line 676
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePointGeometry(Lorg/osmdroid/util/GeoPoint;)V

    .line 677
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 678
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 679
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 680
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 681
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorHorizontal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "anchorHorizontal"

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorVertical()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "anchorVertical"

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 683
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "height"

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    const-string p2, "image"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-direct {p0, p2, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 686
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string p2, "}}"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    .line 705
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v0, "{"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 706
    const-string p2, "Feature"

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 707
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(C)V

    .line 708
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePolygonGeometry(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 709
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 710
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 711
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 712
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 713
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string p2, "}}"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 8

    .line 733
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v0, "{"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 734
    const-string p2, "Feature"

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 735
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v0, ",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":["

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 736
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "],"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 737
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 738
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 739
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 740
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "]]}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 742
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 743
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 744
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 745
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v0, "NorthLatitude"

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 746
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v0, "WestLongitude"

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 747
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v0, "SouthLatitude"

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 748
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "EastLongitude"

    invoke-direct {p0, p2, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 749
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string p2, "}}"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

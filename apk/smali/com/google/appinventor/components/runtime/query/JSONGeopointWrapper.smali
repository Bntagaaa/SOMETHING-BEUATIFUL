.class public Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;
.super Lcom/google/firebase/firestore/GeoPoint;
.source "SourceFile"


# static fields
.field private static geopointPrefix:Ljava/lang/String; = "__GEOPOINT:"


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/GeoPoint;)V
    .locals 4

    .line 11
    invoke-virtual {p1}, Lcom/google/firebase/firestore/GeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/firebase/firestore/GeoPoint;-><init>(DD)V

    return-void
.end method

.method public static isWrappedGeoPoint(Ljava/lang/Object;)Z
    .locals 1

    .line 21
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;->geopointPrefix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setGeopointPrefix(Ljava/lang/String;)V
    .locals 0

    .line 15
    sput-object p0, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;->geopointPrefix:Ljava/lang/String;

    return-void
.end method

.method public static unwrapGeoPoint(Ljava/lang/Object;)Lcom/google/firebase/firestore/GeoPoint;
    .locals 6

    .line 29
    check-cast p0, Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;->geopointPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 32
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 33
    new-instance v1, Lcom/google/firebase/firestore/GeoPoint;

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/firebase/firestore/GeoPoint;-><init>(DD)V

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .line 38
    sget-object v0, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;->geopointPrefix:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;->getLongitude()D

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

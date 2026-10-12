.class public abstract synthetic Landroidx/core/location/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/core/location/LocationListenerCompat;I)V
    .locals 0

    .line 51
    return-void
.end method

.method public static b(Landroidx/core/location/LocationListenerCompat;Ljava/util/List;)V
    .locals 3

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 46
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-interface {p0, v2}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V
    .locals 0

    .line 40
    return-void
.end method

.method public static d(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V
    .locals 0

    .line 37
    return-void
.end method

.method public static e(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 34
    return-void
.end method

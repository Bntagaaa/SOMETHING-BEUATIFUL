.class Landroidx/core/location/a;
.super Landroidx/core/location/GnssStatusCompat;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/a$a;,
        Landroidx/core/location/a$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/location/GnssStatus;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/core/location/GnssStatusCompat;-><init>()V

    .line 38
    invoke-static {p1}, Landroidx/appcompat/app/q;->g(Ljava/lang/Object;)Landroid/location/GnssStatus;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/q;->g(Ljava/lang/Object;)Landroid/location/GnssStatus;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 127
    :cond_0
    instance-of v0, p1, Landroidx/core/location/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 130
    :cond_1
    check-cast p1, Landroidx/core/location/a;

    .line 131
    iget-object v0, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    iget-object p1, p1, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    invoke-static {v0, p1}, Landroidx/appcompat/app/q;->r(Landroid/location/GnssStatus;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAzimuthDegrees(I)F
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    invoke-static {v0, p1}, Landroidx/appcompat/app/q;->u(Landroid/location/GnssStatus;I)F

    move-result p1

    return p1
.end method

.method public getBasebandCn0DbHz(I)F
    .locals 2

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    invoke-static {v0, p1}, Landroidx/core/location/a$b;->a(Landroid/location/GnssStatus;I)F

    move-result p1

    return p1

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getCarrierFrequencyHz(I)F
    .locals 2

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    invoke-static {v0, p1}, Landroidx/core/location/a$a;->a(Landroid/location/GnssStatus;I)F

    move-result p1

    return p1

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getCn0DbHz(I)F
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    invoke-static {v0, p1}, Landroidx/appcompat/app/q;->b(Landroid/location/GnssStatus;I)F

    move-result p1

    return p1
.end method

.method public getConstellationType(I)I
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    invoke-static {v0, p1}, Landroidx/appcompat/app/q;->w(Landroid/location/GnssStatus;I)I

    move-result p1

    return p1
.end method

.method public getElevationDegrees(I)F
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    invoke-static {v0, p1}, Landroidx/appcompat/app/q;->B(Landroid/location/GnssStatus;I)F

    move-result p1

    return p1
.end method

.method public getSatelliteCount()I
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    invoke-static {v0}, Landroidx/appcompat/app/q;->v(Landroid/location/GnssStatus;)I

    move-result v0

    return v0
.end method

.method public getSvid(I)I
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    invoke-static {v0, p1}, Landroidx/appcompat/app/q;->d(Landroid/location/GnssStatus;I)I

    move-result p1

    return p1
.end method

.method public hasAlmanacData(I)Z
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    invoke-static {v0, p1}, Landroidx/appcompat/app/q;->A(Landroid/location/GnssStatus;I)Z

    move-result p1

    return p1
.end method

.method public hasBasebandCn0DbHz(I)Z
    .locals 2

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    invoke-static {v0, p1}, Landroidx/core/location/a$b;->b(Landroid/location/GnssStatus;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasCarrierFrequencyHz(I)Z
    .locals 2

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    invoke-static {v0, p1}, Landroidx/core/location/a$a;->b(Landroid/location/GnssStatus;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasEphemerisData(I)Z
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    invoke-static {v0, p1}, Landroidx/appcompat/app/q;->q(Landroid/location/GnssStatus;I)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    invoke-static {v0}, Landroidx/appcompat/app/q;->c(Landroid/location/GnssStatus;)I

    move-result v0

    return v0
.end method

.method public usedInFix(I)Z
    .locals 1

    .line 83
    iget-object v0, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    invoke-static {v0, p1}, Landroidx/appcompat/app/q;->D(Landroid/location/GnssStatus;I)Z

    move-result p1

    return p1
.end method

.class Landroidx/core/location/LocationManagerCompat$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/core/location/LocationListenerCompat;


# direct methods
.method public constructor <init>(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V
    .locals 1

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    const-string v0, "invalid null provider"

    invoke-static {p2, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$k;->a:Ljava/lang/String;

    .line 631
    const-string p2, "invalid null listener"

    invoke-static {p1, p2}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/location/LocationListenerCompat;

    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$k;->b:Landroidx/core/location/LocationListenerCompat;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 636
    instance-of v0, p1, Landroidx/core/location/LocationManagerCompat$k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 640
    :cond_0
    check-cast p1, Landroidx/core/location/LocationManagerCompat$k;

    .line 641
    iget-object v0, p1, Landroidx/core/location/LocationManagerCompat$k;->a:Ljava/lang/String;

    iget-object v2, p0, Landroidx/core/location/LocationManagerCompat$k;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$k;->b:Landroidx/core/location/LocationListenerCompat;

    iget-object p1, p1, Landroidx/core/location/LocationManagerCompat$k;->b:Landroidx/core/location/LocationListenerCompat;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 646
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$k;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$k;->b:Landroidx/core/location/LocationListenerCompat;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

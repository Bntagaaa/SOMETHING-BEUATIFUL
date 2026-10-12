.class Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0

    .line 85
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0

    .line 73
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0

    .line 67
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0

    .line 79
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0

    .line 91
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    const/4 p1, 0x0

    return-object p1
.end method

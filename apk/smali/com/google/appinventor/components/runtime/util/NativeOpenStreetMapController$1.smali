.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/MapView$OnTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;-><init>(Lcom/google/appinventor/components/runtime/Form;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Lorg/osmdroid/views/MapView;DD)V
    .locals 1

    .line 343
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

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

    .line 344
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onDoubleTap(DD)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSingleTap(Lorg/osmdroid/views/MapView;DD)V
    .locals 1

    .line 336
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

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

    .line 337
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onSingleTap(DD)V

    goto :goto_0

    :cond_0
    return-void
.end method

.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;
.super Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativeMarker(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade<",
        "Landroid/graphics/drawable/Drawable;",
        "Lorg/osmdroid/views/overlay/Marker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

.field final synthetic val$osmMarker:Lorg/osmdroid/views/overlay/Marker;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lorg/osmdroid/views/overlay/Marker;)V
    .locals 0

    .line 1141
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;->val$osmMarker:Lorg/osmdroid/views/overlay/Marker;

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;-><init>(Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;->callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;->val$osmMarker:Lorg/osmdroid/views/overlay/Marker;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1150
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;->callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;->val$osmMarker:Lorg/osmdroid/views/overlay/Marker;

    invoke-interface {p1, v0}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1141
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->visit(Lorg/osmdroid/views/overlay/Marker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;

.field final synthetic val$marker:Lorg/osmdroid/views/overlay/Marker;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;Lorg/osmdroid/views/overlay/Marker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 843
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8$1;->val$marker:Lorg/osmdroid/views/overlay/Marker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    .line 846
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to update fill color for marker: "

    .line 0
    invoke-static {v1, p1, v0}, L_COROUTINE/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8$1;->val$marker:Lorg/osmdroid/views/overlay/Marker;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 852
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->e(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lorg/osmdroid/views/MapView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 843
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8$1;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

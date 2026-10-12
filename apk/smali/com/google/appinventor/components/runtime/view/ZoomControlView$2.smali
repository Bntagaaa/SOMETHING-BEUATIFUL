.class Lcom/google/appinventor/components/runtime/view/ZoomControlView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/view/ZoomControlView;-><init>(Lorg/osmdroid/views/MapView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/view/ZoomControlView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/view/ZoomControlView;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView$2;->this$0:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView$2;->this$0:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->a(Lcom/google/appinventor/components/runtime/view/ZoomControlView;)Lorg/osmdroid/views/MapView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/api/IMapController;->zoomOut()Z

    return-void
.end method

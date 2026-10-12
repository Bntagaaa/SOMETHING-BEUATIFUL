.class Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->OnMapClick(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

.field final synthetic val$lat:D

.field final synthetic val$lng:D


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;DD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1526
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$10;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$10;->val$lat:D

    iput-wide p4, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$10;->val$lng:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1528
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$10;->val$lat:D

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$10;->val$lng:D

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "map is clicked at:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$10;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$10;->val$lat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$10;->val$lng:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "OnMapClick"

    invoke-static {v0, v1, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.class Lcom/google/appinventor/components/runtime/CellTowerProbeSensor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->CellInfoReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor$2;->this$0:Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 97
    const-string v0, "CellTowerProbe"

    const-string v1, "CellInfoReceived is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor$2;->this$0:Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CellInfoReceived"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

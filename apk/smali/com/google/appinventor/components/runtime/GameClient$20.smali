.class Lcom/google/appinventor/components/runtime/GameClient$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->LeaveInstance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GameClient;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$20;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$20;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GameClient;->f(Lcom/google/appinventor/components/runtime/GameClient;)V

    return-void
.end method

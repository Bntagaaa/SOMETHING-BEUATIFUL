.class Lcom/google/appinventor/components/runtime/TinyWebDB$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TinyWebDB$4;->onSuccess(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/TinyWebDB$4;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$1;->this$1:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$1;->this$1:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->val$tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The Web server did not respond to the get value request for the tag "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/TinyWebDB;->WebServiceError(Ljava/lang/String;)V

    return-void
.end method

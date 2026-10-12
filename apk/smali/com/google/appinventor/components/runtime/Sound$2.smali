.class Lcom/google/appinventor/components/runtime/Sound$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Sound;->playWhenLoadComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Sound;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Sound;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sound$2;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    .line 300
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound$2;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Sound;->b(Lcom/google/appinventor/components/runtime/Sound;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound$2;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Sound;->g(Lcom/google/appinventor/components/runtime/Sound;)V

    return-void

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound$2;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Sound;->a(Lcom/google/appinventor/components/runtime/Sound;)I

    move-result v1

    if-lez v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound$2;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Sound;->a(Lcom/google/appinventor/components/runtime/Sound;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/Sound;->e(Lcom/google/appinventor/components/runtime/Sound;I)V

    .line 304
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound$2;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Sound;->h(Lcom/google/appinventor/components/runtime/Sound;)V

    return-void

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound$2;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    iget-object v2, v1, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Sound;->d(Lcom/google/appinventor/components/runtime/Sound;)Lcom/google/appinventor/components/runtime/Component;

    move-result-object v1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Sound$2;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Sound;->c(Lcom/google/appinventor/components/runtime/Sound;)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "Play"

    const/16 v4, 0x2c6

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

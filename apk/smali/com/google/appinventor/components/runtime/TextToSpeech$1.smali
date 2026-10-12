.class Lcom/google/appinventor/components/runtime/TextToSpeech$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TextToSpeech;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/TextToSpeech;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/TextToSpeech;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech$1;->this$0:Lcom/google/appinventor/components/runtime/TextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech$1;->this$0:Lcom/google/appinventor/components/runtime/TextToSpeech;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->a(Lcom/google/appinventor/components/runtime/TextToSpeech;Z)V

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech$1;->this$0:Lcom/google/appinventor/components/runtime/TextToSpeech;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->AfterSpeaking(Z)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech$1;->this$0:Lcom/google/appinventor/components/runtime/TextToSpeech;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->a(Lcom/google/appinventor/components/runtime/TextToSpeech;Z)V

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech$1;->this$0:Lcom/google/appinventor/components/runtime/TextToSpeech;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->AfterSpeaking(Z)V

    return-void
.end method

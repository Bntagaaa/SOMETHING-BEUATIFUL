.class Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->speak(Ljava/lang/String;Ljava/util/Locale;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;->this$0:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;->this$0:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->a(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2$1;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.class Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$loc:Ljava/util/Locale;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$retries:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;ILjava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->this$0:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    iput p2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->val$retries:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->val$loc:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 130
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->val$retries:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->val$message:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delaying call to speak.  Retries is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Message is: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InternalTTS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->this$0:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->val$loc:Ljava/util/Locale;

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->val$retries:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->d(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;ILjava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

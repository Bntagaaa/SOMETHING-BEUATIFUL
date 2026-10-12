.class public Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/ITextToSpeech;
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# static fields
.field private static final TTS_INTENT:Ljava/lang/String; = "com.google.tts.makeBagel"


# instance fields
.field private final callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private requestCode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 44
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    return-void
.end method


# virtual methods
.method public isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 0

    .line 89
    iget p3, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->requestCode:I

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onSuccess()V

    return-void

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onFailure()V

    return-void
.end method

.method public setPitch(F)V
    .locals 0

    return-void
.end method

.method public setSpeechRate(F)V
    .locals 0

    return-void
.end method

.method public speak(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.tts.makeBagel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p1

    const-string v1, "language"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string p1, "country"

    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget p1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->requestCode:I

    if-nez p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->requestCode:I

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iget p2, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->requestCode:I

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

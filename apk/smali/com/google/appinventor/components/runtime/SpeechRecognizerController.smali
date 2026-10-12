.class public abstract Lcom/google/appinventor/components/runtime/SpeechRecognizerController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field speechListener:Lcom/google/appinventor/components/runtime/SpeechListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/appinventor/components/runtime/SpeechListener;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;->speechListener:Lcom/google/appinventor/components/runtime/SpeechListener;

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

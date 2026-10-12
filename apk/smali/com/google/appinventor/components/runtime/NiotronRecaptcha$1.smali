.class Lcom/google/appinventor/components/runtime/NiotronRecaptcha$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->Verify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronRecaptcha;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

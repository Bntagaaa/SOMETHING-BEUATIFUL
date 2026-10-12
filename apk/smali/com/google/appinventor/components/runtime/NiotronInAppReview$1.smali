.class Lcom/google/appinventor/components/runtime/NiotronInAppReview$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronInAppReview;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/play/core/review/ReviewInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronInAppReview;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronInAppReview;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronInAppReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronInAppReview;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->Initialized()V

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronInAppReview;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/review/ReviewInfo;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->a(Lcom/google/appinventor/components/runtime/NiotronInAppReview;Lcom/google/android/play/core/review/ReviewInfo;)V

    return-void

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronInAppReview;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->ErrorInitializing()V

    return-void
.end method

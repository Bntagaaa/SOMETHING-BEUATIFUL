.class Lcom/google/appinventor/components/runtime/NiotronInAppReview$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronInAppReview;->OpenReviewForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronInAppReview;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronInAppReview;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronInAppReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 73
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronInAppReview;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->ReviewCompleted()V

    return-void
.end method

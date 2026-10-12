.class Lcom/google/appinventor/components/runtime/util/FileOperation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/FileOperation;->reportError(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/FileOperation;

.field final synthetic val$errorNumber:I

.field final synthetic val$messageArgs:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/FileOperation;I[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$2;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation;

    iput p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$2;->val$errorNumber:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$2;->val$messageArgs:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 193
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$2;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/util/FileOperation;->component:Lcom/google/appinventor/components/runtime/Component;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/FileOperation;->method:Ljava/lang/String;

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$2;->val$errorNumber:I

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$2;->val$messageArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

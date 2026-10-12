.class Lcom/google/appinventor/components/runtime/Form$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$component:Lcom/google/appinventor/components/runtime/Component;

.field final synthetic val$errorNumber:I

.field final synthetic val$functionName:Ljava/lang/String;

.field final synthetic val$messageArgs:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1117
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$5;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iput p2, p0, Lcom/google/appinventor/components/runtime/Form$5;->val$errorNumber:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Form$5;->val$messageArgs:[Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Form$5;->val$component:Lcom/google/appinventor/components/runtime/Component;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Form$5;->val$functionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1119
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form$5;->val$errorNumber:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$5;->val$messageArgs:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ErrorMessages;->formatMessage(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1120
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$5;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form$5;->val$component:Lcom/google/appinventor/components/runtime/Component;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form$5;->val$functionName:Ljava/lang/String;

    iget v5, p0, Lcom/google/appinventor/components/runtime/Form$5;->val$errorNumber:I

    const-string v0, "Error in "

    .line 0
    invoke-static {v0, v4}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1120
    const-string v8, "Dismiss"

    invoke-virtual/range {v2 .. v8}, Lcom/google/appinventor/components/runtime/Form;->ErrorOccurredDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

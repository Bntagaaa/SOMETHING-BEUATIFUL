.class Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;

.field final synthetic val$code:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 470
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4;

    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4$1;->val$code:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 473
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4$1;->val$code:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$4$1;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->NotificationSentResult(ILjava/lang/String;)V

    return-void
.end method

.class Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;

.field final synthetic val$responseString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$1;->val$responseString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 127
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$1;->val$responseString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->VerificationSuccess()V

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->VerificationFailed()V

    return-void
.end method

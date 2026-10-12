.class Lcom/google/appinventor/components/runtime/NiotronSMTP$1;
.super Ljavax/mail/Authenticator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSMTP;->sendMail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronSMTP;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSMTP;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSMTP;

    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    return-void
.end method


# virtual methods
.method public getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 3

    .line 167
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSMTP;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronSMTP;->a(Lcom/google/appinventor/components/runtime/NiotronSMTP;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSMTP;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronSMTP;->b(Lcom/google/appinventor/components/runtime/NiotronSMTP;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

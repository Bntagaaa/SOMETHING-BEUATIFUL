.class Lcom/google/appinventor/components/runtime/NiotronSMTP$SendEmail;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/NiotronSMTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendEmail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljavax/mail/Message;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronSMTP;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSMTP;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP$SendEmail;->this$0:Lcom/google/appinventor/components/runtime/NiotronSMTP;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSMTP;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSMTP$SendEmail;-><init>(Lcom/google/appinventor/components/runtime/NiotronSMTP;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 210
    check-cast p1, [Ljavax/mail/Message;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSMTP$SendEmail;->doInBackground([Ljavax/mail/Message;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljavax/mail/Message;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 222
    :try_start_0
    aget-object p1, p1, v0

    invoke-static {p1}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V

    .line 223
    const-string p1, "Success"
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 225
    invoke-virtual {p1}, Ljavax/mail/MessagingException;->printStackTrace()V

    .line 226
    const-string v0, "SMTP"

    invoke-virtual {p1}, Ljavax/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p1}, Ljavax/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 210
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronSMTP$SendEmail;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 233
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 234
    const-string v0, "NiotronSMTP"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v0, "Success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP$SendEmail;->this$0:Lcom/google/appinventor/components/runtime/NiotronSMTP;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronSMTP;->Sent()V

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP$SendEmail;->this$0:Lcom/google/appinventor/components/runtime/NiotronSMTP;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronSMTP;->Error(Ljava/lang/String;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 214
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 215
    const-string v0, "NiotronSMTP"

    const-string v1, "Sending mail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

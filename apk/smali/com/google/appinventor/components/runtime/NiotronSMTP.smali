.class public final Lcom/google/appinventor/components/runtime/NiotronSMTP;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component for sending e-mail through SMTP server programmatically from device"
    iconName = "images/niotronSMTP.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "android-mail.jar, android-activation.jar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NiotronSMTP$SendEmail;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NiotronSMTP"


# instance fields
.field private body:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private fileNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private from:Ljava/lang/String;

.field private html:Z

.field private message:Ljavax/mail/Message;

.field private password:Ljava/lang/String;

.field private smtpProperty:Ljava/util/Properties;

.field private subject:Ljava/lang/String;

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 55
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 37
    const-string p1, ""

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->email:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->password:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->smtpProperty:Ljava/util/Properties;

    .line 40
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->from:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->subject:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->body:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->to:Ljava/lang/String;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->filePaths:Ljava/util/ArrayList;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->fileNames:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronSMTP;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->email:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/NiotronSMTP;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->password:Ljava/lang/String;

    return-object p0
.end method

.method private sendMail()V
    .locals 8

    .line 161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->filePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " 2"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NiotronSMTP"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->filePaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->smtpProperty:Ljava/util/Properties;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronSMTP$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronSMTP$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronSMTP;)V

    invoke-static {v0, v1}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    .line 172
    :try_start_0
    new-instance v1, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v1, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->message:Ljavax/mail/Message;

    .line 173
    new-instance v0, Ljavax/mail/internet/InternetAddress;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->email:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V

    .line 174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->message:Ljavax/mail/Message;

    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->to:Ljava/lang/String;

    invoke-static {v3}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->message:Ljavax/mail/Message;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/mail/Message;->setSubject(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->message:Ljavax/mail/Message;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/mail/Message;->setText(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 180
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->filePaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "So there is actually some attachments"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 182
    :goto_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->filePaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 183
    new-instance v4, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v4}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 184
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->filePaths:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 185
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->fileNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 186
    new-instance v7, Ljavax/activation/FileDataSource;

    invoke-direct {v7, v5}, Ljavax/activation/FileDataSource;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance v5, Ljavax/activation/DataHandler;

    invoke-direct {v5, v7}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {v4, v5}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 188
    invoke-virtual {v4, v6}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, v4}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 192
    :cond_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->html:Z

    if-eqz v1, :cond_1

    .line 193
    const-string v1, "So html also exist"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v1}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 195
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->body:Ljava/lang/String;

    const-string v5, "text/html; charset=ISO-8859-1"

    invoke-virtual {v1, v4, v5}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, v1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->message:Ljavax/mail/Message;

    invoke-virtual {v1, v0}, Ljavax/mail/Message;->setContent(Ljavax/mail/Multipart;)V

    .line 201
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronSMTP$SendEmail;

    invoke-direct {v0, p0, v3}, Lcom/google/appinventor/components/runtime/NiotronSMTP$SendEmail;-><init>(Lcom/google/appinventor/components/runtime/NiotronSMTP;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/mail/Message;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->message:Ljavax/mail/Message;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 204
    :goto_1
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->printStackTrace()V

    .line 205
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronSMTP;->Error(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Attachment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the mail message body"
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->filePaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->fileNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->filePaths:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NiotronSMTP"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->filePaths:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Auth(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "SMTP auth enabled"
    .end annotation

    if-eqz p1, :cond_0

    .line 75
    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->smtpProperty:Ljava/util/Properties;

    const-string v1, "mail.smtp.auth"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string p1, "NiotronSMTP"

    const-string v0, "Auth value set"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Body(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "Body"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the mail message body"
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->body:Ljava/lang/String;

    .line 127
    const-string p1, "NiotronSMTP"

    const-string v0, "Body value set"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Error(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invoked when email sent fails "
    .end annotation

    .line 157
    const-string v0, "Error"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public From(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "From Email"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set which email to be shown in receiver\'s message"
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->from:Ljava/lang/String;

    .line 106
    const-string p1, "NiotronSMTP"

    const-string v0, "From value set"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public HTML(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the mail message body"
    .end annotation

    .line 141
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->html:Z

    .line 142
    const-string p1, "NiotronSMTP"

    const-string v0, "HTML value set"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Host(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "smtp.gmail.com"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set host"
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->smtpProperty:Ljava/util/Properties;

    const-string v1, "mail.smtp.host"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string p1, "NiotronSMTP"

    const-string v0, "Host value set"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Password(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "Password"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sender password"
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->password:Ljava/lang/String;

    .line 69
    const-string p1, "NiotronSMTP"

    const-string v0, "Password set"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Port(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "587"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set port"
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->smtpProperty:Ljava/util/Properties;

    const-string v1, "mail.smtp.port"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string p1, "NiotronSMTP"

    const-string v0, "Port value set"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Send()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send the email"
    .end annotation

    .line 147
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronSMTP;->sendMail()V

    return-void
.end method

.method public Sent()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invoked after email sent successfully "
    .end annotation

    const/4 v0, 0x0

    .line 152
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Sent"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Subject(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "Subject"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the mail title (subject)"
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->subject:Ljava/lang/String;

    .line 120
    const-string p1, "NiotronSMTP"

    const-string v0, "Subject value set"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public TLSEnabled(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "TLS enabled"
    .end annotation

    if-eqz p1, :cond_0

    .line 83
    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->smtpProperty:Ljava/util/Properties;

    const-string v1, "mail.smtp.starttls.enable"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string p1, "NiotronSMTP"

    const-string v0, "TLSEnabled value set"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public To(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "To Email"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set which email to be shown in receiver\'s message"
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->to:Ljava/lang/String;

    .line 113
    const-string p1, "NiotronSMTP"

    const-string v0, "To value set"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public UserName(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "Email"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sender username"
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSMTP;->email:Ljava/lang/String;

    .line 62
    const-string p1, "NiotronSMTP"

    const-string v0, "Username set"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

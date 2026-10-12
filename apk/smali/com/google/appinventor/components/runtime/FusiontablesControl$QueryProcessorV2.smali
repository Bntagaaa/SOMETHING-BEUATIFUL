.class Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FusiontablesControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryProcessorV2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final STAG:Ljava/lang/String; = "FUSION_SERVICE_ACCOUNT"

.field private static final TAG:Ljava/lang/String; = "QueryProcessorV2"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V
    .locals 1

    .line 787
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 788
    const-string p1, "QueryProcessorV2"

    const-string v0, "Creating AsyncFusiontablesQuery"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->activity:Landroid/app/Activity;

    .line 790
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private serviceAuthRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 852
    const-string p1, "Error with null response:  "

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->o(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->l(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->n(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V

    .line 855
    invoke-static {}, Lcom/google/api/client/extensions/android2/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    .line 858
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->g(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyPath "

    const-string v3, "FUSION_SERVICE_ACCOUNT"

    .line 0
    invoke-static {v2, v1, v3}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->c(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->d(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->g(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->m(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/io/File;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 867
    :cond_0
    :goto_0
    new-instance v1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    invoke-direct {v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;-><init>()V

    .line 868
    invoke-virtual {v1, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 869
    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->k(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v1

    .line 870
    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->j(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v1

    .line 871
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountScopes(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->c(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/io/File;

    move-result-object v1

    .line 872
    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountPrivateKeyFromP12File(Ljava/io/File;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    .line 873
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    .line 886
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->e(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->o(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->e(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const-string p1, "executed sql query"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 893
    :goto_1
    const-string v0, "in Catch Throwable e"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 895
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->o(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V

    .line 898
    :goto_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->h(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "returning queryResultStr = "

    .line 0
    invoke-static {v0, p1, v3}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->h(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private userAuthRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 816
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->o(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V

    .line 819
    new-instance v0, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;-><init>()V

    .line 820
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->b(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getRefreshedAuthToken(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 827
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "create table"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->r(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->p(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->o(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V

    .line 829
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->h(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 833
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v1, p1, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->sendQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 836
    const-string v1, "QueryProcessorV2"

    if-eqz v0, :cond_1

    .line 837
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->httpResponseToString(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->o(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->h(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Query = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nResultStr = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 840
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->e(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->o(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V

    .line 841
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->e(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error:  "

    .line 0
    invoke-static {v0, p1, v1}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->h(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 846
    :cond_2
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 775
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 806
    aget-object p1, p1, v0

    .line 807
    const-string v0, "Starting doInBackground "

    const-string v1, "QueryProcessorV2"

    .line 0
    invoke-static {v0, p1, v1}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->f(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->serviceAuthRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 811
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->userAuthRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 775
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 917
    const-string v0, "Query result "

    const-string v1, "FUSION"

    .line 0
    invoke-static {v0, p1, v1}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 919
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->e(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object p1

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 922
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->GotResult(Ljava/lang/String;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->ShowLoadingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->LoadingDialogMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public parseJsonResponseException(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 904
    const-string v0, "parseJsonResponseException: "

    const-string v1, "FUSION_SERVICE_ACCOUNT"

    .line 0
    invoke-static {v0, p1, v1}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

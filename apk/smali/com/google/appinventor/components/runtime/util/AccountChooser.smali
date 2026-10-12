.class public Lcom/google/appinventor/components/runtime/util/AccountChooser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PREFERENCE:Ljava/lang/String; = "account"

.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final LOG_TAG:Ljava/lang/String; = "AccountChooser"

.field private static final NO_ACCOUNT:Ljava/lang/String; = ""


# instance fields
.field private accountManager:Landroid/accounts/AccountManager;

.field private activity:Landroid/app/Activity;

.field private chooseAccountPrompt:Ljava/lang/String;

.field private preferencesKey:Ljava/lang/String;

.field private service:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    .line 58
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->service:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->chooseAccountPrompt:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->preferencesKey:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->accountManager:Landroid/accounts/AccountManager;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/util/AccountChooser;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/util/AccountChooser;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->chooseAccountPrompt:Ljava/lang/String;

    return-object p0
.end method

.method private chooseAccount(Ljava/lang/String;[Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 4

    .line 112
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 113
    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    const-string p2, "chose account: "

    const-string v0, "AccountChooser"

    .line 0
    invoke-static {p2, p1, v0}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private createAccount()Ljava/lang/String;
    .locals 11

    .line 123
    const-string v0, "created: "

    const-string v1, "Adding auth token account ..."

    const-string v2, "AccountChooser"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->accountManager:Landroid/accounts/AccountManager;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->service:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "com.google"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    .line 126
    :try_start_0
    invoke-interface {v1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 127
    const-string v3, "authAccount"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    .line 135
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 133
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 131
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPersistedAccountName()Ljava/lang/String;
    .locals 3

    .line 160
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->preferencesKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private persistAccountName(Ljava/lang/String;)V
    .locals 2

    .line 164
    const-string v0, "persisting account: "

    const-string v1, "AccountChooser"

    .line 0
    invoke-static {v0, p1, v1}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private selectAccount([Landroid/accounts/Account;)Ljava/lang/String;
    .locals 4

    .line 141
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 142
    new-instance v1, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;-><init>(Lcom/google/appinventor/components/runtime/util/AccountChooser;[Landroid/accounts/Account;Ljava/util/concurrent/SynchronousQueue;)V

    .line 143
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 144
    const-string p1, "Select: waiting for user..."

    const-string v1, "AccountChooser"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 147
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, p1

    .line 151
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Selected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, v0

    :goto_1
    return-object p1
.end method


# virtual methods
.method public findAccount()Landroid/accounts/Account;
    .locals 6

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 71
    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 72
    aget-object v1, v0, v4

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->persistAccountName(Ljava/lang/String;)V

    .line 73
    aget-object v0, v0, v4

    return-object v0

    .line 78
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    const-string v5, "AccountChooser"

    if-nez v2, :cond_2

    .line 79
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->createAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->persistAccountName(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    aget-object v0, v0, v4

    return-object v0

    .line 84
    :cond_1
    const-string v0, "User failed to create a valid account"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 92
    :cond_2
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->getPersistedAccountName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 93
    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->chooseAccount(Ljava/lang/String;[Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    .line 100
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->selectAccount([Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 102
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->persistAccountName(Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->chooseAccount(Ljava/lang/String;[Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0

    .line 107
    :cond_4
    const-string v0, "User failed to choose an account"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public forgetAccountName()V
    .locals 2

    .line 169
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.class public Lcom/google/appinventor/components/runtime/background/BackgroundService;
.super Landroidx/work/Worker;
.source "SourceFile"


# instance fields
.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private final procedureName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 24
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/background/BackgroundService;->getInputData()Landroidx/work/Data;

    move-result-object p1

    const-string p2, "PROCEDURE_NAME"

    invoke-virtual {p1, p2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService;->procedureName:Ljava/lang/String;

    .line 25
    sget-object p1, Lcom/google/appinventor/components/runtime/BackgroundFunctions;->form:Lcom/google/appinventor/components/runtime/Form;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService;->form:Lcom/google/appinventor/components/runtime/Form;

    return-void
.end method

.method private doCall(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
    .locals 4

    .line 50
    const-string p1, ""

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/background/BackgroundService;->lookupProcedure(Ljava/lang/String;)Lgnu/mapping/ProcedureN;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_3

    .line 59
    :try_start_0
    invoke-virtual {v0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p3}, Lgnu/lists/AbstractSequence;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 65
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    const/4 v1, 0x0

    .line 66
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 67
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v1

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {v0, p2}, Lgnu/mapping/ProcedureN;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 60
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lgnu/mapping/ProcedureN;->apply0()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 72
    :goto_2
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v0, Lcom/google/appinventor/components/runtime/background/BackgroundService$1;

    invoke-direct {v0, p0, p2}, Lcom/google/appinventor/components/runtime/background/BackgroundService$1;-><init>(Lcom/google/appinventor/components/runtime/background/BackgroundService;Ljava/lang/Throwable;)V

    invoke-virtual {p3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 78
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1

    .line 55
    :cond_4
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    const-string p3, "Unable to locate procedure "

    const-string v0, " in form"

    .line 0
    invoke-static {p3, p2, v0}, L_COROUTINE/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private lookupProcedure(Ljava/lang/String;)Lgnu/mapping/ProcedureN;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/background/BackgroundService;->lookupProcedureInRepl(Ljava/lang/String;)Lgnu/mapping/ProcedureN;

    move-result-object p1

    return-object p1

    .line 137
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/background/BackgroundService;->lookupProcedureInForm(Ljava/lang/String;)Lgnu/mapping/ProcedureN;

    move-result-object p1

    return-object p1
.end method

.method private lookupProcedureInForm(Ljava/lang/String;)Lgnu/mapping/ProcedureN;
    .locals 5

    .line 103
    const-string v0, "p$"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "global$Mnvars$Mnto$Mncreate"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    .line 106
    new-instance v3, Lgnu/mapping/SimpleSymbol;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Lgnu/lists/AbstractSequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 109
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v2, v0}, Lgnu/lists/LList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    check-cast v0, Lgnu/lists/LList;

    const/4 v2, 0x0

    .line 111
    invoke-virtual {v0, v2}, Lgnu/lists/LList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/Symbol;

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 112
    invoke-virtual {v0, p1}, Lgnu/lists/LList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    move-object p1, v1

    .line 117
    :goto_0
    instance-of v0, p1, Lgnu/mapping/ProcedureN;

    if-eqz v0, :cond_2

    .line 121
    check-cast p1, Lgnu/mapping/ProcedureN;

    invoke-virtual {p1}, Lgnu/mapping/ProcedureN;->apply0()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/mapping/ProcedureN;

    return-object p1

    .line 123
    :cond_2
    const-string v0, "BackgroundFunctions"

    if-nez p1, :cond_3

    .line 124
    const-string p1, "null"

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wanted a procedure, but got a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 127
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-object v1
.end method

.method private lookupProcedureInRepl(Ljava/lang/String;)Lgnu/mapping/ProcedureN;
    .locals 4

    .line 84
    const-string v0, "Wanted a procedure, but got a "

    const-string v1, "(begin (require <com.google.youngandroid.runtime>)(get-var p$"

    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v2

    .line 87
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "))"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 89
    instance-of v1, p1, Lgnu/mapping/ProcedureN;

    if-eqz v1, :cond_0

    .line 90
    check-cast p1, Lgnu/mapping/ProcedureN;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 92
    :cond_0
    const-string v1, "BackgroundFunctions"

    if-nez p1, :cond_1

    .line 93
    const-string p1, "null"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 96
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 40
    const-string v0, "Procedure Called: "

    :try_start_0
    const-string v1, "Niotron"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService;->procedureName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v0, "Call"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/background/BackgroundService;->procedureName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/background/BackgroundService;->doCall(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    .line 42
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method

.method public onStopped()V
    .locals 0

    .line 33
    invoke-super {p0}, Landroidx/work/Worker;->onStopped()V

    return-void
.end method

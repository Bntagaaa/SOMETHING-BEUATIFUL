.class public final Lcom/google/appinventor/components/runtime/AsyncTask;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTRAS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Run Functions Asynchronously or in the <br> Background when the App is Closed(Coming Soon) "
    iconName = "images/asyncTask.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/AsyncTask;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/AsyncTask;->doCall(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private doCall(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
    .locals 4

    .line 209
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/AsyncTask;->lookupProcedure(Ljava/lang/String;)Lgnu/mapping/ProcedureN;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    .line 215
    :try_start_0
    invoke-virtual {v0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Object;

    .line 220
    invoke-virtual {p3}, Lgnu/lists/AbstractSequence;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 221
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    const/4 v1, 0x0

    .line 222
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 223
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v1

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 225
    :cond_1
    invoke-virtual {v0, p2}, Lgnu/mapping/ProcedureN;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 216
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lgnu/mapping/ProcedureN;->apply0()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 228
    :goto_2
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v0, Lcom/google/appinventor/components/runtime/AsyncTask$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/AsyncTask$5;-><init>(Lcom/google/appinventor/components/runtime/AsyncTask;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 235
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 236
    const-string p1, ""

    return-object p1

    .line 211
    :cond_3
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 212
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to locate procedure "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in form "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private lookupProcedure(Ljava/lang/String;)Lgnu/mapping/ProcedureN;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AsyncTask;->lookupProcedureInRepl(Ljava/lang/String;)Lgnu/mapping/ProcedureN;

    move-result-object p1

    return-object p1

    .line 204
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AsyncTask;->lookupProcedureInForm(Ljava/lang/String;)Lgnu/mapping/ProcedureN;

    move-result-object p1

    return-object p1
.end method

.method private lookupProcedureInForm(Ljava/lang/String;)Lgnu/mapping/ProcedureN;
    .locals 5

    .line 171
    const-string v0, "p$"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "global$Mnvars$Mnto$Mncreate"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 172
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    .line 174
    new-instance v3, Lgnu/mapping/SimpleSymbol;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Lgnu/lists/AbstractSequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 177
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v2, v0}, Lgnu/lists/LList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    check-cast v0, Lgnu/lists/LList;

    const/4 v2, 0x0

    .line 179
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

    .line 180
    invoke-virtual {v0, p1}, Lgnu/lists/LList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    move-object p1, v1

    .line 185
    :goto_0
    instance-of v0, p1, Lgnu/mapping/ProcedureN;

    if-eqz v0, :cond_2

    .line 189
    check-cast p1, Lgnu/mapping/ProcedureN;

    invoke-virtual {p1}, Lgnu/mapping/ProcedureN;->apply0()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/mapping/ProcedureN;

    return-object p1

    .line 191
    :cond_2
    sget-object v0, Lcom/google/appinventor/components/runtime/AsyncTask;->LOG_TAG:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 192
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

    .line 191
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 195
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-object v1
.end method

.method private lookupProcedureInRepl(Ljava/lang/String;)Lgnu/mapping/ProcedureN;
    .locals 4

    .line 152
    const-string v0, "Wanted a procedure, but got a "

    const-string v1, "(begin (require <com.google.youngandroid.runtime>)(get-var p$"

    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v2

    .line 155
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

    .line 157
    instance-of v1, p1, Lgnu/mapping/ProcedureN;

    if-eqz v1, :cond_0

    .line 158
    check-cast p1, Lgnu/mapping/ProcedureN;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 160
    :cond_0
    sget-object v1, Lcom/google/appinventor/components/runtime/AsyncTask;->LOG_TAG:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 161
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

    .line 160
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 164
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public Call(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Calls the procedure in the current screen with the given name."
    .end annotation

    .line 53
    const-string v0, "Call"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/AsyncTask;->doCall(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public CallAfterDelay(ILjava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Calls the procedure on the UI thread after waiting delay milliseconds on a separate thread."
    .end annotation

    .line 99
    new-instance v0, Lcom/google/appinventor/components/runtime/AsyncTask$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/AsyncTask$3;-><init>(Lcom/google/appinventor/components/runtime/AsyncTask;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public CallAfterDelayWithArgs(ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Calls the procedure on the UI thread with the given arguments after waiting delay milliseconds on a separate thread."
    .end annotation

    .line 121
    new-instance v0, Lcom/google/appinventor/components/runtime/AsyncTask$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/AsyncTask$4;-><init>(Lcom/google/appinventor/components/runtime/AsyncTask;ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public CallAsynchronous(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Calls the procedure in the current screen on a thread separate from the UI thread."
    .end annotation

    .line 65
    new-instance v0, Lcom/google/appinventor/components/runtime/AsyncTask$1;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/AsyncTask$1;-><init>(Lcom/google/appinventor/components/runtime/AsyncTask;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public CallAsynchronousWithArgs(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Calls the procedure in the current screen on a thread separate from the UI thread with the given list of arguments."
    .end annotation

    .line 82
    new-instance v0, Lcom/google/appinventor/components/runtime/AsyncTask$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/AsyncTask$2;-><init>(Lcom/google/appinventor/components/runtime/AsyncTask;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public CallFinishedWithResult(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "After an asynchronous procedure call, this event is run with the results of the invocation."
    .end annotation

    .line 143
    const-string v0, "CallFinishedWithResult"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CallWithArgs(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Calls the procedure in the current screen with a list of arguments."
    .end annotation

    .line 59
    const-string v0, "CallWithArgs"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/AsyncTask;->doCall(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

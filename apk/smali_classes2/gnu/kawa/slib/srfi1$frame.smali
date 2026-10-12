.class public Lgnu/kawa/slib/srfi1$frame;
.super Lgnu/expr/ModuleBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->unzip2(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda2recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lgnu/kawa/slib/srfi1$frame0;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi1$frame0;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame0;->lis:Ljava/lang/Object;

    .line 625
    invoke-static {p0}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p0, v1, :cond_0

    iget-object p0, v0, Lgnu/kawa/slib/srfi1$frame0;->lis:Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 626
    :cond_0
    sget-object p0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame0;->lis:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame0;->elt:Ljava/lang/Object;

    .line 627
    iget-object p0, v0, Lgnu/kawa/slib/srfi1$frame0;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    invoke-static {p0, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/google/appinventor/components/runtime/util/BiggerFuture;
.super Ljava/lang/Thread;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Ljava/lang/String;J)V
    .locals 2

    move-object v0, p2

    .line 20
    new-instance p2, Ljava/lang/ThreadGroup;

    const-string v1, "biggerthreads"

    invoke-direct {p2, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    move-object v1, p3

    new-instance p3, Lgnu/mapping/RunnableClosure;

    invoke-direct {p3, p1, v0, v1, p4}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V

    move-object p1, p0

    move-object p4, p5

    move-wide p5, p6

    invoke-direct/range {p1 .. p6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#<future "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

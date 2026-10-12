.class Lgnu/xquery/lang/a;
.super Lgnu/mapping/Procedure1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1033
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1037
    check-cast p1, Lgnu/mapping/InPort;

    .line 1038
    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1039
    iget-char p1, p1, Lgnu/text/LineBufferedReader;->readState:C

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    const/16 p1, 0x20

    :cond_0
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_1

    .line 1043
    const-string p1, "<!--"

    const-string v1, "-->"

    .line 0
    invoke-static {v0, p1, v1}, L_COROUTINE/a;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v1, 0x3a

    if-ne p1, v1, :cond_2

    .line 1045
    const-string p1, "-(:"

    const-string v1, "c:) "

    .line 0
    invoke-static {v0, p1, v1}, L_COROUTINE/a;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1047
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ":) "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

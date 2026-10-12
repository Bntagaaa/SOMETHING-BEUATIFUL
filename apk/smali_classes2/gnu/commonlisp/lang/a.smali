.class Lgnu/commonlisp/lang/a;
.super Lgnu/kawa/lispexpr/ReadTable;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTable;-><init>()V

    return-void
.end method


# virtual methods
.method public makeSymbol(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgnu/commonlisp/lang/Lisp2;->asSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

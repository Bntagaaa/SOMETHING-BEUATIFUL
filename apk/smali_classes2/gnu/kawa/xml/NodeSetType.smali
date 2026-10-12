.class public Lgnu/kawa/xml/NodeSetType;
.super Lgnu/kawa/reflect/OccurrenceType;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 10
    invoke-direct {p0, p1, v0, v1}, Lgnu/kawa/reflect/OccurrenceType;-><init>(Lgnu/bytecode/Type;II)V

    return-void
.end method

.method public static getInstance(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .locals 1

    .line 15
    new-instance v0, Lgnu/kawa/xml/NodeSetType;

    invoke-direct {v0, p0}, Lgnu/kawa/xml/NodeSetType;-><init>(Lgnu/bytecode/Type;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lgnu/kawa/reflect/OccurrenceType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "node-set"

    .line 0
    invoke-static {v0, v1, v2}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

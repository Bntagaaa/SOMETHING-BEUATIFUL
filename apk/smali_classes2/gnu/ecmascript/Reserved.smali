.class public Lgnu/ecmascript/Reserved;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BREAK_TOKEN:I = 0x23

.field public static final CONTINUE_TOKEN:I = 0x22

.field public static final ELSE_TOKEN:I = 0x26

.field public static final FOR_TOKEN:I = 0x21

.field public static final FUNCTION_TOKEN:I = 0x29

.field public static final IF_TOKEN:I = 0x1f

.field public static final LESS_OP:I = 0x5

.field public static final LSHIFT_OP:I = 0x4

.field public static final MINUS_OP:I = 0x2

.field public static final NEW_TOKEN:I = 0x27

.field public static final PLUS_OP:I = 0x1

.field public static final RETURN_TOKEN:I = 0x24

.field public static final THIS_TOKEN:I = 0x28

.field public static final TIMES_OP:I = 0x3

.field public static final VAR_TOKEN:I = 0x1e

.field public static final WHILE_TOKEN:I = 0x20

.field public static final WITH_TOKEN:I = 0x25

.field public static final d:Lgnu/ecmascript/Reserved;

.field public static final e:Lgnu/ecmascript/Reserved;

.field public static final f:Lgnu/ecmascript/Reserved;

.field public static final g:Lgnu/ecmascript/Reserved;

.field public static final h:Lgnu/ecmascript/Reserved;

.field public static final i:Lgnu/ecmascript/Reserved;

.field public static final j:Lgnu/ecmascript/Reserved;

.field public static final k:Lgnu/ecmascript/Reserved;

.field public static final l:Lgnu/ecmascript/Reserved;

.field public static final m:Lgnu/ecmascript/Reserved;

.field public static final n:Lgnu/ecmascript/Reserved;

.field public static final o:Lgnu/ecmascript/Reserved;

.field public static final p:Lgnu/ecmascript/Reserved;

.field public static final q:Lgnu/ecmascript/Reserved;

.field public static final r:Lgnu/ecmascript/Reserved;

.field public static final s:Lgnu/ecmascript/Reserved;

.field public static final t:Lgnu/ecmascript/Reserved;

.field public static final u:Lgnu/ecmascript/Reserved;

.field public static final v:Lgnu/ecmascript/Reserved;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 49
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "||"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->d:Lgnu/ecmascript/Reserved;

    .line 50
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "&&"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->e:Lgnu/ecmascript/Reserved;

    .line 51
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "|"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->f:Lgnu/ecmascript/Reserved;

    .line 52
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "^"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v3}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->g:Lgnu/ecmascript/Reserved;

    .line 53
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "&"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v3}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->h:Lgnu/ecmascript/Reserved;

    .line 54
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "="

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v3}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->i:Lgnu/ecmascript/Reserved;

    .line 55
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "!="

    invoke-direct {v0, v1, v8, v3}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->j:Lgnu/ecmascript/Reserved;

    .line 56
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "<"

    const/4 v8, 0x7

    invoke-direct {v0, v1, v8, v7}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->k:Lgnu/ecmascript/Reserved;

    .line 57
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, ">"

    invoke-direct {v0, v1, v8, v3}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->l:Lgnu/ecmascript/Reserved;

    .line 58
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "<="

    invoke-direct {v0, v1, v8, v3}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->m:Lgnu/ecmascript/Reserved;

    .line 59
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, ">="

    invoke-direct {v0, v1, v8, v3}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->n:Lgnu/ecmascript/Reserved;

    .line 60
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "<<"

    const/16 v7, 0x8

    invoke-direct {v0, v1, v7, v6}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->o:Lgnu/ecmascript/Reserved;

    .line 61
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, ">>"

    invoke-direct {v0, v1, v7, v3}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->p:Lgnu/ecmascript/Reserved;

    .line 62
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, ">>>"

    invoke-direct {v0, v1, v7, v3}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->q:Lgnu/ecmascript/Reserved;

    .line 63
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "+"

    const/16 v6, 0x9

    invoke-direct {v0, v1, v6, v2}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->r:Lgnu/ecmascript/Reserved;

    .line 64
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "-"

    invoke-direct {v0, v1, v6, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->s:Lgnu/ecmascript/Reserved;

    .line 65
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "*"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->t:Lgnu/ecmascript/Reserved;

    .line 66
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "/"

    invoke-direct {v0, v1, v2, v3}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->u:Lgnu/ecmascript/Reserved;

    .line 67
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "%"

    invoke-direct {v0, v1, v2, v3}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->v:Lgnu/ecmascript/Reserved;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lgnu/ecmascript/Reserved;->a:Ljava/lang/String;

    .line 39
    iput p2, p0, Lgnu/ecmascript/Reserved;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lgnu/ecmascript/Reserved;->a:Ljava/lang/String;

    .line 45
    iput p2, p0, Lgnu/ecmascript/Reserved;->b:I

    .line 46
    new-instance p2, Lgnu/ecmascript/BinaryOp;

    invoke-direct {p2, p1, p3}, Lgnu/ecmascript/BinaryOp;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lgnu/ecmascript/Reserved;->c:Lgnu/mapping/Procedure;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILgnu/mapping/Procedure;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lgnu/ecmascript/Reserved;->a:Ljava/lang/String;

    .line 32
    iput p2, p0, Lgnu/ecmascript/Reserved;->b:I

    .line 33
    iput-object p3, p0, Lgnu/ecmascript/Reserved;->c:Lgnu/mapping/Procedure;

    return-void
.end method


# virtual methods
.method public isAssignmentOp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Reserved \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lgnu/ecmascript/Reserved;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" prio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgnu/ecmascript/Reserved;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

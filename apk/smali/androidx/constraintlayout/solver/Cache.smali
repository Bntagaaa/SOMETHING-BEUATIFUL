.class public Landroidx/constraintlayout/solver/Cache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/constraintlayout/solver/a$b;

.field public final b:Landroidx/constraintlayout/solver/a$b;

.field public final c:Landroidx/constraintlayout/solver/a$b;

.field public d:[Landroidx/constraintlayout/solver/SolverVariable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroidx/constraintlayout/solver/a$b;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/a$b;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/Cache;->a:Landroidx/constraintlayout/solver/a$b;

    .line 23
    new-instance v0, Landroidx/constraintlayout/solver/a$b;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/a$b;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/Cache;->b:Landroidx/constraintlayout/solver/a$b;

    .line 24
    new-instance v0, Landroidx/constraintlayout/solver/a$b;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/a$b;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/Cache;->c:Landroidx/constraintlayout/solver/a$b;

    const/16 v0, 0x20

    .line 25
    new-array v0, v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/solver/Cache;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    return-void
.end method

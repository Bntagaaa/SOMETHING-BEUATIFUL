.class public Lgnu/mapping/PlainLocation;
.super Lgnu/mapping/NamedLocation;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lgnu/mapping/NamedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lgnu/mapping/NamedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 16
    iput-object p3, p0, Lgnu/mapping/IndirectableLocation;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 21
    iget-object v0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lgnu/mapping/IndirectableLocation;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public isBound()Z
    .locals 2

    .line 27
    iget-object v0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/mapping/Location;->isBound()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lgnu/mapping/IndirectableLocation;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 3

    .line 32
    iget-object v0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    if-nez v0, :cond_0

    .line 33
    iput-object p1, p0, Lgnu/mapping/IndirectableLocation;->value:Ljava/lang/Object;

    return-void

    .line 34
    :cond_0
    iget-object v1, p0, Lgnu/mapping/IndirectableLocation;->value:Ljava/lang/Object;

    sget-object v2, Lgnu/mapping/IndirectableLocation;->DIRECT_ON_SET:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    .line 37
    iput-object p1, p0, Lgnu/mapping/IndirectableLocation;->value:Ljava/lang/Object;

    return-void

    .line 39
    :cond_1
    invoke-virtual {v0}, Lgnu/mapping/Location;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p0}, Lgnu/mapping/NamedLocation;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/mapping/NamedLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/mapping/NamedLocation;->getKeyProperty()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 42
    :cond_2
    iget-object v0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    return-void
.end method

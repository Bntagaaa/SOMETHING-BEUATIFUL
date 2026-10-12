.class public abstract Lgnu/mapping/PropertySet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgnu/mapping/Named;


# static fields
.field public static final nameKey:Lgnu/mapping/Symbol;


# instance fields
.field private properties:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setProperty([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/16 p0, 0xa

    .line 64
    new-array p0, p0, [Ljava/lang/Object;

    goto :goto_1

    .line 70
    :cond_0
    array-length v1, p0

    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_0
    add-int/lit8 v4, v1, -0x2

    if-ltz v4, :cond_3

    .line 72
    aget-object v5, p0, v4

    if-ne v5, p1, :cond_1

    add-int/2addr v1, v2

    .line 75
    aget-object p1, p0, v1

    .line 76
    aput-object p2, p0, v1

    return-object p0

    :cond_1
    if-nez v5, :cond_2

    move v3, v4

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    if-gez v3, :cond_4

    .line 84
    array-length v1, p0

    mul-int/lit8 v2, v1, 0x2

    .line 85
    new-array v2, v2, [Ljava/lang/Object;

    .line 86
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    move-object p0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    .line 90
    :goto_1
    aput-object p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 91
    aput-object p2, p0, v0

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 12
    sget-object v0, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/mapping/PropertySet;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 13
    :cond_0
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 35
    iget-object v0, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 37
    array-length v0, v0

    :goto_0
    add-int/lit8 v1, v0, -0x2

    if-ltz v1, :cond_1

    .line 39
    iget-object v2, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-ne v3, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 40
    aget-object p1, v2, v0

    return-object p1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public getSymbol()Ljava/lang/Object;
    .locals 2

    .line 20
    sget-object v0, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/mapping/PropertySet;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 97
    iget-object v0, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 100
    :cond_0
    array-length v2, v0

    :goto_0
    add-int/lit8 v3, v2, -0x2

    if-ltz v3, :cond_2

    .line 102
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    add-int/lit8 v2, v2, -0x1

    .line 105
    aget-object p1, v0, v2

    .line 106
    aput-object v1, v0, v3

    .line 107
    aput-object v1, v0, v2

    return-object p1

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-object v0, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    invoke-virtual {p0, v0, p1}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized setProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lgnu/mapping/PropertySet;->setProperty([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setSymbol(Ljava/lang/Object;)V
    .locals 1

    .line 25
    sget-object v0, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    invoke-virtual {p0, v0, p1}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

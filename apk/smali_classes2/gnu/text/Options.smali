.class public Lgnu/text/Options;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/text/Options$OptionInfo;
    }
.end annotation


# static fields
.field public static final BOOLEAN_OPTION:I = 0x1

.field public static final STRING_OPTION:I = 0x2

.field public static final UNKNOWN:Ljava/lang/String; = "unknown option name"


# instance fields
.field public final a:Lgnu/text/Options;

.field public b:Lgnu/text/Options$OptionInfo;

.field public c:Lgnu/text/Options$OptionInfo;

.field public d:Ljava/util/HashMap;

.field public e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/text/Options;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lgnu/text/Options;->a:Lgnu/text/Options;

    return-void
.end method

.method public static a(Lgnu/text/Options$OptionInfo;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 71
    iget p0, p0, Lgnu/text/Options$OptionInfo;->b:I

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    .line 73
    const-string p0, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "on"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "yes"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    const-string p0, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "off"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "no"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "false"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 78
    :cond_3
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    return-object p1
.end method


# virtual methods
.method public add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;
    .locals 1

    .line 51
    iget-object v0, p0, Lgnu/text/Options;->e:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgnu/text/Options;->e:Ljava/util/HashMap;

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 55
    :goto_0
    new-instance v0, Lgnu/text/Options$OptionInfo;

    invoke-direct {v0}, Lgnu/text/Options$OptionInfo;-><init>()V

    .line 56
    iput-object p1, v0, Lgnu/text/Options$OptionInfo;->a:Ljava/lang/String;

    .line 57
    iput p2, v0, Lgnu/text/Options$OptionInfo;->b:I

    .line 58
    iput-object p3, v0, Lgnu/text/Options$OptionInfo;->d:Ljava/lang/Object;

    .line 59
    iput-object p4, v0, Lgnu/text/Options$OptionInfo;->c:Ljava/lang/String;

    .line 60
    iget-object p2, p0, Lgnu/text/Options;->b:Lgnu/text/Options$OptionInfo;

    if-nez p2, :cond_1

    .line 61
    iput-object v0, p0, Lgnu/text/Options;->b:Lgnu/text/Options$OptionInfo;

    goto :goto_1

    .line 63
    :cond_1
    iget-object p2, p0, Lgnu/text/Options;->c:Lgnu/text/Options$OptionInfo;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    :goto_1
    iput-object v0, p0, Lgnu/text/Options;->c:Lgnu/text/Options$OptionInfo;

    .line 65
    iget-object p2, p0, Lgnu/text/Options;->e:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 54
    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "duplicate option key: "

    .line 0
    invoke-static {p3, p1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public add(Ljava/lang/String;ILjava/lang/String;)Lgnu/text/Options$OptionInfo;
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, p1, p2, v0, p3}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object p1

    return-object p1
.end method

.method public get(Lgnu/text/Options$OptionInfo;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, p1, v0}, Lgnu/text/Options;->get(Lgnu/text/Options$OptionInfo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lgnu/text/Options$OptionInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_4

    move-object v1, p1

    .line 191
    :goto_1
    iget-object v2, v0, Lgnu/text/Options;->d:Ljava/util/HashMap;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_2

    :cond_0
    iget-object v3, v1, Lgnu/text/Options$OptionInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_1

    return-object v2

    .line 195
    :cond_1
    iget-object v1, v1, Lgnu/text/Options$OptionInfo;->d:Ljava/lang/Object;

    instance-of v2, v1, Lgnu/text/Options$OptionInfo;

    if-eqz v2, :cond_2

    .line 196
    check-cast v1, Lgnu/text/Options$OptionInfo;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    move-object p2, v1

    .line 204
    :cond_3
    iget-object v0, v0, Lgnu/text/Options;->a:Lgnu/text/Options;

    goto :goto_0

    :cond_4
    return-object p2
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 178
    invoke-virtual {p0, p1}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0, v0, p2}, Lgnu/text/Options;->get(Lgnu/text/Options$OptionInfo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 180
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "invalid option key: "

    .line 0
    invoke-static {v0, p1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getBoolean(Lgnu/text/Options$OptionInfo;)Z
    .locals 1

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, p1, v0}, Lgnu/text/Options;->get(Lgnu/text/Options$OptionInfo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 244
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getBoolean(Lgnu/text/Options$OptionInfo;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 237
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 238
    :goto_0
    invoke-virtual {p0, p1, p2}, Lgnu/text/Options;->get(Lgnu/text/Options$OptionInfo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 226
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lgnu/text/Options;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 231
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 232
    :goto_0
    invoke-virtual {p0, p1, p2}, Lgnu/text/Options;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getDoc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 299
    invoke-virtual {p0, p1}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 302
    :cond_0
    iget-object p1, v0, Lgnu/text/Options$OptionInfo;->c:Ljava/lang/String;

    return-object p1
.end method

.method public getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;
    .locals 2

    .line 166
    iget-object v0, p0, Lgnu/text/Options;->e:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/text/Options$OptionInfo;

    :goto_0
    if-nez v0, :cond_1

    .line 167
    iget-object v1, p0, Lgnu/text/Options;->a:Lgnu/text/Options;

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {v1, p1}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getLocal(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 221
    iget-object v0, p0, Lgnu/text/Options;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public keys()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_2

    .line 285
    iget-object v2, v1, Lgnu/text/Options;->e:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 287
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 289
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 290
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 283
    :cond_1
    iget-object v1, v1, Lgnu/text/Options;->a:Lgnu/text/Options;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public popOptionValues(Ljava/util/Vector;)V
    .locals 5

    .line 269
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x3

    if-ltz v1, :cond_0

    .line 271
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v0, v0, -0x2

    .line 272
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    .line 273
    invoke-virtual {p1, v4, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 274
    invoke-virtual {p0, v2, v3}, Lgnu/text/Options;->reset(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pushOptionValues(Ljava/util/Vector;)V
    .locals 6

    .line 255
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 258
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 259
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v1, 0x2

    .line 260
    invoke-virtual {p1, v4, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x3

    .line 261
    invoke-virtual {p1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lgnu/text/Options;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lgnu/text/Options;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgnu/text/Options;->d:Ljava/util/HashMap;

    :cond_0
    if-nez p2, :cond_1

    .line 137
    iget-object p2, p0, Lgnu/text/Options;->d:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lgnu/text/Options;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 149
    invoke-virtual {p0, p1}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    const-string p1, "unknown option name"

    return-object p1

    .line 152
    :cond_0
    invoke-static {v0, p2}, Lgnu/text/Options;->a(Lgnu/text/Options$OptionInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    .line 155
    iget v0, v0, Lgnu/text/Options$OptionInfo;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 156
    const-string p2, "value of option "

    const-string v0, " must be yes/no/true/false/on/off/1/0"

    .line 0
    invoke-static {p2, p1, v0}, L_COROUTINE/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 158
    :cond_1
    iget-object v0, p0, Lgnu/text/Options;->d:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgnu/text/Options;->d:Ljava/util/HashMap;

    .line 160
    :cond_2
    iget-object v0, p0, Lgnu/text/Options;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, p2, v0}, Lgnu/text/Options;->set(Ljava/lang/String;Ljava/lang/Object;Lgnu/text/SourceMessages;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Lgnu/text/SourceMessages;)V
    .locals 3

    .line 106
    invoke-virtual {p0, p1}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v0

    const/16 v1, 0x65

    if-nez v0, :cond_1

    .line 109
    const-string p2, "invalid option key: "

    .line 0
    invoke-static {p2, p1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 94
    invoke-virtual {p3, v1, p1}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    return-void

    .line 92
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 112
    :cond_1
    iget v2, v0, Lgnu/text/Options$OptionInfo;->b:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 114
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 115
    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p2}, Lgnu/text/Options;->a(Lgnu/text/Options$OptionInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 116
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_5

    .line 118
    const-string p2, "value for option "

    const-string v0, " must be boolean or yes/no/true/false/on/off/1/0"

    .line 0
    invoke-static {p2, p1, v0}, L_COROUTINE/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_3

    .line 94
    invoke-virtual {p3, v1, p1}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    return-void

    .line 92
    :cond_3
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    if-nez p2, :cond_5

    .line 125
    const-string p2, ""

    .line 126
    :cond_5
    iget-object p3, p0, Lgnu/text/Options;->d:Ljava/util/HashMap;

    if-nez p3, :cond_6

    .line 127
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lgnu/text/Options;->d:Ljava/util/HashMap;

    .line 128
    :cond_6
    iget-object p3, p0, Lgnu/text/Options;->d:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

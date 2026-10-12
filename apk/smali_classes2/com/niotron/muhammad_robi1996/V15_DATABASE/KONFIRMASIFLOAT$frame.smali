.class public Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;
.super Lgnu/expr/ModuleBody;
.source "SourceFile"


# instance fields
.field public c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const-string v1, "IZIN DIPERLUKAN!!"

    const-string v2, "Aktifkan \"Tampil di atas aplikasi lain\""

    const-string v3, "(diperlukan izin untuk menampilkan jendela melayang)"

    const-string v4, "AKTIFKAN"

    const-string v5, "0,0,0,0"

    packed-switch v0, :pswitch_data_0

    .line 8
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    invoke-virtual {p1}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Clock1$Timer()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 151
    :pswitch_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->g:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->W0:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, v2, p1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Y0:Lgnu/math/IntNum;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->X0:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, v2, p1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 151
    :pswitch_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->g:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->W0:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, v2, p1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Y0:Lgnu/math/IntNum;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->X0:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, v2, p1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_3
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    invoke-virtual {p1}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Button1$TouchUp()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 136
    :pswitch_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->L0:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->X:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, v2, p1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->P:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->t:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, p1, v5, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Y:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, p1, v4, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->N0:Lgnu/math/IntNum;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i0:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, v2, p1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 136
    :pswitch_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->L0:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->X:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, v2, p1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->P:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->t:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, p1, v5, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Y:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, p1, v4, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->N0:Lgnu/math/IntNum;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i0:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, v2, p1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 123
    :pswitch_6
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->F0:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->g0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->H0:Lgnu/math/IntNum;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->P:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->t:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Q:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->j0:Lgnu/math/IntNum;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 123
    :pswitch_7
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->F0:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->g0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->H0:Lgnu/math/IntNum;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->P:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->t:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Q:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->j0:Lgnu/math/IntNum;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 108
    :pswitch_8
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->A0:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->P:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->t:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Q:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Y:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v3, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Z:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->a0:Lgnu/math/IntNum;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->j0:Lgnu/math/IntNum;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 108
    :pswitch_9
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->A0:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->P:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->t:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Q:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Y:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v3, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Z:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->a0:Lgnu/math/IntNum;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->j0:Lgnu/math/IntNum;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 95
    :pswitch_a
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->u0:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->g0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->w0:Lgnu/math/IntNum;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->P:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->t:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Q:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->j0:Lgnu/math/IntNum;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 95
    :pswitch_b
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->u0:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->g0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->w0:Lgnu/math/IntNum;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->P:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->t:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Q:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->j0:Lgnu/math/IntNum;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 76
    :pswitch_c
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n0:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->X:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, v3, p1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->p0:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->q0:Lgnu/math/IntNum;

    sget-object v3, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, p1, v0, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->P:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->t:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, p1, v5, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Q:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, p1, v5, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Y:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, p1, v2, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Z:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->a0:Lgnu/math/IntNum;

    invoke-static {v1, p1, v0, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i0:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->j0:Lgnu/math/IntNum;

    invoke-static {v1, p1, v0, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 76
    :pswitch_d
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n0:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->X:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, v3, p1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->p0:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->q0:Lgnu/math/IntNum;

    sget-object v3, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, p1, v0, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->P:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->t:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, p1, v5, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Q:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, p1, v5, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Y:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, p1, v2, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Z:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->a0:Lgnu/math/IntNum;

    invoke-static {v1, p1, v0, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i0:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->j0:Lgnu/math/IntNum;

    invoke-static {v1, p1, v0, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 63
    :pswitch_e
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->e0:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->g0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->h0:Lgnu/math/IntNum;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->P:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->t:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Q:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->j0:Lgnu/math/IntNum;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 63
    :pswitch_f
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->e0:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->g0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->h0:Lgnu/math/IntNum;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->P:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->t:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Q:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->j0:Lgnu/math/IntNum;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 48
    :pswitch_10
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->V:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->X:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2, v3, p1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->P:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->t:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2, p1, v5, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Q:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2, p1, v5, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Y:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2, p1, v1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->a0:Lgnu/math/IntNum;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Z:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2, v1, p1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 48
    :pswitch_11
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->V:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->X:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2, v3, p1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->P:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->t:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2, p1, v5, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Q:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2, p1, v5, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Y:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2, p1, v1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->a0:Lgnu/math/IntNum;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Z:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2, v1, p1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_12
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->N:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->P:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->t:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Q:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->R:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v2, v0, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_13
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->N:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->P:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->t:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->Q:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v5, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->R:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v2, v0, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_14
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    invoke-virtual {p1}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->KONFIRMASIFLOAT$BackPressed()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_15
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    invoke-virtual {p1}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->KONFIRMASIFLOAT$Initialize()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_16
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->a:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->l:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->m:Lgnu/math/IntNum;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->n:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->o:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->p:Lgnu/math/IntNum;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->q:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->r:Lgnu/math/IntNum;

    invoke-static {p1, v0, v1, v2}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->s:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->t:Lgnu/mapping/SimpleSymbol;

    const-string v2, "RDEV_EXAM_V9"

    invoke-static {p1, v0, v2, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->u:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v2, v0, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->v:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v2, v0, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->w:Lgnu/mapping/SimpleSymbol;

    const-string v4, "fade"

    invoke-static {p1, v2, v4, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->x:Lgnu/mapping/SimpleSymbol;

    const-string v4, "portrait"

    invoke-static {p1, v2, v4, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->y:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v4, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v4, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->z:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v4, v0, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->A:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->B:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->C:Lgnu/mapping/SimpleSymbol;

    const-string v4, "Responsive"

    invoke-static {p1, v0, v4, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->D:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->E:Lgnu/mapping/SimpleSymbol;

    const-string v4, "Classic"

    invoke-static {p1, v0, v4, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->F:Lgnu/mapping/SimpleSymbol;

    const-string v4, "KONFIRMASIFLOAT"

    invoke-static {p1, v0, v4, v1}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->G:Lgnu/mapping/SimpleSymbol;

    invoke-static {p1, v0, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_17
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->k:Lgnu/expr/ModuleMethod;

    return-object p1

    .line 8
    :pswitch_18
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->g:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->h:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, v2, p1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_19
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->i:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->g:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->h:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, v2, p1, v0}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10324
    :pswitch_1a
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    invoke-virtual {p1}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->$define()V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 10416
    :pswitch_1b
    sget-object p1, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->KONFIRMASIFLOAT:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 10192
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    invoke-virtual {p1, p2}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->processException(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 10189
    :pswitch_1
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    invoke-virtual {p1, p2}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->sendError(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 10184
    :pswitch_2
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    invoke-virtual {p1, p2}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->addToFormDoAfterCreation(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 10129
    :cond_0
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p2}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->isBoundInFormEnvironment(Lgnu/mapping/Symbol;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "is-bound-in-form-environment"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 10123
    :cond_2
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    :try_start_1
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p1, p2}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "lookup-in-form-environment"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 10110
    :cond_3
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    invoke-virtual {p1, p2}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->androidLogForm(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 10103
    :cond_4
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    :try_start_2
    check-cast p2, Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {p1, p2}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_2
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "onCreate"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 10100
    :cond_5
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    invoke-virtual {p1, p2}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->getSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    .line 10316
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    invoke-virtual {p1, p2, p3}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->lookupHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10174
    :cond_1
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    invoke-virtual {p1, p2, p3}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->addToGlobalVars(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 10158
    :cond_2
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    invoke-virtual {p1, p2, p3}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->addToEvents(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 10137
    :cond_3
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p2, p3}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->addToGlobalVarEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "add-to-global-var-environment"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 10123
    :cond_4
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    :try_start_1
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p1, p2, p3}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->lookupInFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "lookup-in-form-environment"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 10119
    :cond_5
    iget-object p1, p0, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    :try_start_2
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {p1, p2, p3}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_2
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "add-to-form-environment"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v1, "dispatchEvent"

    const-string v2, "dispatchGenericEvent"

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v3, 0xa

    if-eq v0, v3, :cond_4

    const/16 v3, 0xf

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eq v0, v3, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 10272
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p0

    return-object p1

    :cond_0
    move-object p1, p2

    move-object p2, p0

    iget-object v0, p2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    :try_start_0
    check-cast p1, Lcom/google/appinventor/components/runtime/Component;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    check-cast p3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    if-eq p4, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    :try_start_3
    check-cast p5, [Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-virtual {v0, p1, p3, v7, p5}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 10275
    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v2, v6, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 10274
    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v2, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_2
    move-exception v0

    move-object p1, v0

    .line 10273
    new-instance p4, Lgnu/mapping/WrongType;

    invoke-direct {p4, p1, v2, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p4

    :catch_3
    move-exception v0

    move-object p3, v0

    .line 10272
    new-instance p4, Lgnu/mapping/WrongType;

    invoke-direct {p4, p3, v2, v7, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p4

    :cond_2
    move-object p1, p2

    move-object p2, p0

    .line 10211
    iget-object v0, p2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    :try_start_4
    check-cast p1, Lcom/google/appinventor/components/runtime/Component;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_7

    :try_start_5
    check-cast p3, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    check-cast p4, Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_5

    :try_start_7
    check-cast p5, [Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_4

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_4
    move-exception v0

    move-object p1, v0

    .line 10214
    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v6, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_5
    move-exception v0

    move-object p1, v0

    .line 10213
    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_6
    move-exception v0

    move-object p1, v0

    .line 10212
    new-instance p4, Lgnu/mapping/WrongType;

    invoke-direct {p4, p1, v1, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p4

    :catch_7
    move-exception v0

    move-object p3, v0

    .line 10211
    new-instance p4, Lgnu/mapping/WrongType;

    invoke-direct {p4, p3, v1, v7, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p4

    :cond_4
    move-object p1, p2

    move-object p2, p0

    .line 10165
    iget-object v0, p2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT$frame;->c:Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;->addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 10092
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 0
    :pswitch_0
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_2
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_3
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_4
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_5
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_6
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_7
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_8
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_9
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_c
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_d
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_e
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_f
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_10
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_11
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_12
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_13
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_14
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_15
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_16
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_17
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 8
    :pswitch_18
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_19
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 10000
    :pswitch_1a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 10092
    :pswitch_1b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    const v4, -0xbffff

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 10100
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 10093
    :pswitch_0
    instance-of v0, p2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    if-nez v0, :cond_0

    return v4

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 10094
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 10095
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 10096
    :cond_1
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_2

    return v4

    :cond_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 10097
    :cond_3
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_4

    return v4

    :cond_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 10098
    :cond_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 10099
    :cond_6
    instance-of v0, p2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    if-nez v0, :cond_7

    return v4

    :cond_7
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 10100
    :cond_8
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x4

    const v2, -0xbffff

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    .line 10119
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 10316
    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 10174
    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 10158
    :cond_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 10137
    :cond_3
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_4

    return v2

    :cond_4
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 10123
    :cond_5
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_6

    return v2

    :cond_6
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 10119
    :cond_7
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_8

    return v2

    :cond_8
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v0, v1, :cond_9

    const/16 v1, 0xf

    const v4, -0xbfffd

    const v5, -0xbfffe

    const v6, -0xbffff

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 10165
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 10272
    :cond_0
    instance-of v0, p2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    if-nez v0, :cond_1

    return v6

    :cond_1
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lcom/google/appinventor/components/runtime/Component;

    if-nez p2, :cond_2

    return v5

    :cond_2
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Ljava/lang/String;

    if-nez p2, :cond_3

    return v4

    :cond_3
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 10211
    :cond_4
    instance-of v0, p2, Lcom/niotron/muhammad_robi1996/V15_DATABASE/KONFIRMASIFLOAT;

    if-nez v0, :cond_5

    return v6

    :cond_5
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lcom/google/appinventor/components/runtime/Component;

    if-nez p2, :cond_6

    return v5

    :cond_6
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Ljava/lang/String;

    if-nez p2, :cond_7

    return v4

    :cond_7
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of p2, p5, Ljava/lang/String;

    if-nez p2, :cond_8

    const p1, -0xbfffc

    return p1

    :cond_8
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 10165
    :cond_9
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    return v2
.end method

.class public Lgnu/bytecode/CpoolValue1;
.super Lgnu/bytecode/CpoolEntry;
.source "SourceFile"


# instance fields
.field tag:I

.field value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lgnu/bytecode/CpoolEntry;-><init>()V

    iput p1, p0, Lgnu/bytecode/CpoolValue1;->tag:I

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ConstantPool;III)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p3}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 19
    iput p2, p0, Lgnu/bytecode/CpoolValue1;->tag:I

    .line 20
    iput p4, p0, Lgnu/bytecode/CpoolValue1;->value:I

    return-void
.end method

.method public static hashCode(I)I
    .locals 0

    return p0
.end method


# virtual methods
.method public getTag()I
    .locals 1

    .line 23
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->tag:I

    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 27
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 34
    iget v0, p0, Lgnu/bytecode/CpoolEntry;->hash:I

    if-nez v0, :cond_0

    .line 35
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    iput v0, p0, Lgnu/bytecode/CpoolEntry;->hash:I

    .line 36
    :cond_0
    iget v0, p0, Lgnu/bytecode/CpoolEntry;->hash:I

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 4

    .line 47
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->tag:I

    const/4 v1, 0x3

    const-string v2, "=0x"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    if-lez p2, :cond_0

    .line 50
    const-string v0, "Integer "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    :cond_0
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    if-le p2, v3, :cond_3

    .line 52
    iget p2, p0, Lgnu/bytecode/CpoolValue1;->value:I

    if-eqz p2, :cond_3

    .line 54
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    iget p2, p0, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_1
    if-lez p2, :cond_2

    .line 61
    const-string v0, "Float "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    :cond_2
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    if-le p2, v3, :cond_3

    .line 65
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    iget p2, p0, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->tag:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 42
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

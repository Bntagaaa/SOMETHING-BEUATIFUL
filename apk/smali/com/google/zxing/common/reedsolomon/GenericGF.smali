.class public final Lcom/google/zxing/common/reedsolomon/GenericGF;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final MAXICODE_FIELD_64:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;


# instance fields
.field public a:[I

.field public b:[I

.field public c:Lcom/google/zxing/common/reedsolomon/a;

.field public d:Lcom/google/zxing/common/reedsolomon/a;

.field public final e:I

.field public final f:I

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v1, 0x1069

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 33
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v1, 0x409

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 34
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v1, 0x43

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 35
    new-instance v1, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v2, 0x13

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 36
    new-instance v1, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v2, 0x11d

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 37
    new-instance v1, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v2, 0x12d

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 38
    sput-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 39
    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->MAXICODE_FIELD_64:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->g:Z

    .line 59
    iput p1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->f:I

    .line 60
    iput p2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->e:I

    if-gtz p2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)Lcom/google/zxing/common/reedsolomon/a;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()V

    if-ltz p1, :cond_1

    if-nez p2, :cond_0

    .line 116
    iget-object p1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->c:Lcom/google/zxing/common/reedsolomon/a;

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 118
    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 119
    aput p2, p1, v0

    .line 120
    new-instance p2, Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {p2, p0, p1}, Lcom/google/zxing/common/reedsolomon/a;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    return-object p2

    .line 113
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final b()V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->g:Z

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 6

    .line 68
    iget v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->e:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->a:[I

    .line 69
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->b:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 72
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->a:[I

    aput v4, v5, v3

    shl-int/2addr v4, v1

    if-lt v4, v0, :cond_0

    .line 75
    iget v5, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->f:I

    xor-int/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    and-int/2addr v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_2

    .line 80
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->b:[I

    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->a:[I

    aget v5, v5, v3

    aput v3, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 83
    :cond_2
    new-instance v0, Lcom/google/zxing/common/reedsolomon/a;

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/google/zxing/common/reedsolomon/a;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->c:Lcom/google/zxing/common/reedsolomon/a;

    .line 84
    new-instance v0, Lcom/google/zxing/common/reedsolomon/a;

    filled-new-array {v1}, [I

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/google/zxing/common/reedsolomon/a;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->d:Lcom/google/zxing/common/reedsolomon/a;

    .line 85
    iput-boolean v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->g:Z

    return-void
.end method

.method public final d(I)I
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()V

    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->a:[I

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->b:[I

    aget p1, v1, p1

    iget v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->e:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget p1, v0, v1

    return p1

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1}, Ljava/lang/ArithmeticException;-><init>()V

    throw p1
.end method

.method public final e(II)I
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->a:[I

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->b:[I

    aget p1, v1, p1

    aget p2, v1, p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->e:I

    add-int/lit8 p2, p2, -0x1

    rem-int/2addr p1, p2

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSize()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->e:I

    return v0
.end method

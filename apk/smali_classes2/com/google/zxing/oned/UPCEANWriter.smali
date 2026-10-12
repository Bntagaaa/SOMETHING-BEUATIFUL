.class public abstract Lcom/google/zxing/oned/UPCEANWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultMargin()I
    .locals 1

    .line 31
    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->d:[I

    const/4 v0, 0x3

    return v0
.end method

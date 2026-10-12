.class public final Lcom/google/android/material/color/HarmonizedColorAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[I


# instance fields
.field public final a:[I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    sget v0, Lcom/google/android/material/R$attr;->colorError:I

    sget v1, Lcom/google/android/material/R$attr;->colorOnError:I

    sget v2, Lcom/google/android/material/R$attr;->colorErrorContainer:I

    sget v3, Lcom/google/android/material/R$attr;->colorOnErrorContainer:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/HarmonizedColorAttributes;->c:[I

    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 90
    array-length v0, p2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Theme overlay should be used with the accompanying int[] attributes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->a:[I

    .line 95
    iput p1, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->b:I

    return-void
.end method

.method public static create([I)Lcom/google/android/material/color/HarmonizedColorAttributes;
    .locals 2
    .param p0    # [I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 50
    new-instance v0, Lcom/google/android/material/color/HarmonizedColorAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/color/HarmonizedColorAttributes;-><init>(I[I)V

    return-object v0
.end method

.method public static create([II)Lcom/google/android/material/color/HarmonizedColorAttributes;
    .locals 1
    .param p0    # [I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 64
    new-instance v0, Lcom/google/android/material/color/HarmonizedColorAttributes;

    invoke-direct {v0, p1, p0}, Lcom/google/android/material/color/HarmonizedColorAttributes;-><init>(I[I)V

    return-object v0
.end method

.method public static createMaterialDefaults()Lcom/google/android/material/color/HarmonizedColorAttributes;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 85
    sget-object v0, Lcom/google/android/material/color/HarmonizedColorAttributes;->c:[I

    sget v1, Lcom/google/android/material/R$style;->ThemeOverlay_Material3_HarmonizedColors:I

    invoke-static {v0, v1}, Lcom/google/android/material/color/HarmonizedColorAttributes;->create([II)Lcom/google/android/material/color/HarmonizedColorAttributes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAttributes()[I
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->a:[I

    return-object v0
.end method

.method public getThemeOverlay()I
    .locals 1
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .line 107
    iget v0, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->b:I

    return v0
.end method

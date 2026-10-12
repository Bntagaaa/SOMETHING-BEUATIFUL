.class public Lcom/google/android/material/color/HarmonizedColorsOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;
    }
.end annotation


# instance fields
.field public final a:[I

.field public final b:Lcom/google/android/material/color/HarmonizedColorAttributes;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iget-object v0, p1, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->a:[I

    .line 50
    iput-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->a:[I

    .line 78
    iget-object v0, p1, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->b:Lcom/google/android/material/color/HarmonizedColorAttributes;

    .line 51
    iput-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->b:Lcom/google/android/material/color/HarmonizedColorAttributes;

    .line 78
    iget p1, p1, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->c:I

    .line 52
    iput p1, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->c:I

    return-void
.end method

.method public static createMaterialDefaults()Lcom/google/android/material/color/HarmonizedColorsOptions;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 44
    new-instance v0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;-><init>()V

    .line 45
    invoke-static {}, Lcom/google/android/material/color/HarmonizedColorAttributes;->createMaterialDefaults()Lcom/google/android/material/color/HarmonizedColorAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->setColorAttributes(Lcom/google/android/material/color/HarmonizedColorAttributes;)Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->build()Lcom/google/android/material/color/HarmonizedColorsOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getColorAttributeToHarmonizeWith()I
    .locals 1
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .line 74
    iget v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->c:I

    return v0
.end method

.method public getColorAttributes()Lcom/google/android/material/color/HarmonizedColorAttributes;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->b:Lcom/google/android/material/color/HarmonizedColorAttributes;

    return-object v0
.end method

.method public getColorResourceIds()[I
    .locals 1
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->a:[I

    return-object v0
.end method

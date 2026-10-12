.class public Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/HarmonizedColorsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:[I

.field public b:Lcom/google/android/material/color/HarmonizedColorAttributes;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->a:[I

    .line 82
    sget v0, Lcom/google/android/material/R$attr;->colorPrimary:I

    iput v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->c:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/material/color/HarmonizedColorsOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 125
    new-instance v0, Lcom/google/android/material/color/HarmonizedColorsOptions;

    invoke-direct {v0, p0}, Lcom/google/android/material/color/HarmonizedColorsOptions;-><init>(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)V

    return-object v0
.end method

.method public setColorAttributeToHarmonizeWith(I)Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 119
    iput p1, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->c:I

    return-object p0
.end method

.method public setColorAttributes(Lcom/google/android/material/color/HarmonizedColorAttributes;)Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;
    .locals 0
    .param p1    # Lcom/google/android/material/color/HarmonizedColorAttributes;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->b:Lcom/google/android/material/color/HarmonizedColorAttributes;

    return-object p0
.end method

.method public setColorResourceIds([I)Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->a:[I

    return-object p0
.end method

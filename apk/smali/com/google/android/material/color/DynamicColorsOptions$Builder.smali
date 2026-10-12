.class public Lcom/google/android/material/color/DynamicColorsOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/DynamicColorsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/google/android/material/color/DynamicColors$Precondition;

.field public c:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->d:Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 74
    iput-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->b:Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 26
    sget-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->e:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    .line 75
    iput-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->c:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/material/color/DynamicColorsOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 100
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions;

    invoke-direct {v0, p0}, Lcom/google/android/material/color/DynamicColorsOptions;-><init>(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)V

    return-object v0
.end method

.method public setOnAppliedCallback(Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;)Lcom/google/android/material/color/DynamicColorsOptions$Builder;
    .locals 0
    .param p1    # Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->c:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    return-object p0
.end method

.method public setPrecondition(Lcom/google/android/material/color/DynamicColors$Precondition;)Lcom/google/android/material/color/DynamicColorsOptions$Builder;
    .locals 0
    .param p1    # Lcom/google/android/material/color/DynamicColors$Precondition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->b:Lcom/google/android/material/color/DynamicColors$Precondition;

    return-object p0
.end method

.method public setThemeOverlay(I)Lcom/google/android/material/color/DynamicColorsOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 80
    iput p1, p0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->a:I

    return-object p0
.end method

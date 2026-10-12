.class public Lcom/google/android/material/color/DynamicColorsOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/DynamicColorsOptions$Builder;
    }
.end annotation


# static fields
.field public static final d:Lcom/google/android/material/color/DynamicColors$Precondition;

.field public static final e:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/material/color/DynamicColors$Precondition;

.field public final c:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$a;

    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$a;-><init>()V

    sput-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->d:Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 36
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$b;

    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$b;-><init>()V

    sput-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->e:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iget v0, p1, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->a:I

    .line 47
    iput v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->a:I

    .line 71
    iget-object v0, p1, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->b:Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 48
    iput-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->b:Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 71
    iget-object p1, p1, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->c:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    .line 49
    iput-object p1, p0, Lcom/google/android/material/color/DynamicColorsOptions;->c:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    return-void
.end method


# virtual methods
.method public getOnAppliedCallback()Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->c:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    return-object v0
.end method

.method public getPrecondition()Lcom/google/android/material/color/DynamicColors$Precondition;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->b:Lcom/google/android/material/color/DynamicColors$Precondition;

    return-object v0
.end method

.method public getThemeOverlay()I
    .locals 1
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .line 55
    iget v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->a:I

    return v0
.end method

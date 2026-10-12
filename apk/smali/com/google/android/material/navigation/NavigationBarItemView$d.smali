.class Lcom/google/android/material/navigation/NavigationBarItemView$d;
.super Lcom/google/android/material/navigation/NavigationBarItemView$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/navigation/NavigationBarItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 994
    invoke-direct {p0, v0}, Lcom/google/android/material/navigation/NavigationBarItemView$c;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 994
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView$d;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateScaleY(FF)F
    .locals 0

    .line 998
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarItemView$c;->calculateScaleX(FF)F

    move-result p1

    return p1
.end method

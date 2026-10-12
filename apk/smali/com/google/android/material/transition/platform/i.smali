.class Lcom/google/android/material/transition/platform/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field public static final a:Lcom/google/android/material/transition/platform/i$a;

.field public static final b:Lcom/google/android/material/transition/platform/i$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/google/android/material/transition/platform/i$a;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/i$a;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/platform/i;->a:Lcom/google/android/material/transition/platform/i$a;

    .line 80
    new-instance v0, Lcom/google/android/material/transition/platform/i$b;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/i$b;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/platform/i;->b:Lcom/google/android/material/transition/platform/i$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

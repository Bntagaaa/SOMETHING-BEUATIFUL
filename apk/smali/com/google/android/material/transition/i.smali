.class Lcom/google/android/material/transition/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/material/transition/i$a;

.field public static final b:Lcom/google/android/material/transition/i$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/android/material/transition/i$a;

    invoke-direct {v0}, Lcom/google/android/material/transition/i$a;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/i;->a:Lcom/google/android/material/transition/i$a;

    .line 75
    new-instance v0, Lcom/google/android/material/transition/i$b;

    invoke-direct {v0}, Lcom/google/android/material/transition/i$b;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/i;->b:Lcom/google/android/material/transition/i$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

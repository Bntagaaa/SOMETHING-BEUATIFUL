.class final Lcom/airbnb/lottie/animation/content/BaseStrokeContent$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lcom/airbnb/lottie/animation/content/TrimPathContent;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V
    .locals 1

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$b;->a:Ljava/util/ArrayList;

    .line 341
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$b;->b:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    return-void
.end method

.class public Lcom/airbnb/lottie/model/Font;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/airbnb/lottie/model/Font;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/airbnb/lottie/model/Font;->b:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/airbnb/lottie/model/Font;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFamily()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/airbnb/lottie/model/Font;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/airbnb/lottie/model/Font;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/airbnb/lottie/model/Font;->c:Ljava/lang/String;

    return-object v0
.end method

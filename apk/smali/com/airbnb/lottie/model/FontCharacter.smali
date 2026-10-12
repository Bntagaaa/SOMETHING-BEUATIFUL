.class public Lcom/airbnb/lottie/model/FontCharacter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final b:C

.field public final c:D

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/ShapeGroup;",
            ">;CDD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/airbnb/lottie/model/FontCharacter;->a:Ljava/util/List;

    .line 32
    iput-char p2, p0, Lcom/airbnb/lottie/model/FontCharacter;->b:C

    .line 34
    iput-wide p5, p0, Lcom/airbnb/lottie/model/FontCharacter;->c:D

    .line 35
    iput-object p7, p0, Lcom/airbnb/lottie/model/FontCharacter;->d:Ljava/lang/String;

    .line 36
    iput-object p8, p0, Lcom/airbnb/lottie/model/FontCharacter;->e:Ljava/lang/String;

    return-void
.end method

.method public static hashFor(CLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    mul-int/lit8 p0, p0, 0x1f

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x1f

    .line 18
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public getShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/ShapeGroup;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/airbnb/lottie/model/FontCharacter;->a:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()D
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/airbnb/lottie/model/FontCharacter;->c:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/model/FontCharacter;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/lottie/model/FontCharacter;->d:Ljava/lang/String;

    iget-char v2, p0, Lcom/airbnb/lottie/model/FontCharacter;->b:C

    invoke-static {v2, v0, v1}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

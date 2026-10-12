.class Lcom/google/android/material/floatingactionbutton/m$c;
.super Lcom/google/android/material/floatingactionbutton/m$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/android/material/floatingactionbutton/n;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/n;)V
    .locals 0

    .line 884
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/m$c;->e:Lcom/google/android/material/floatingactionbutton/n;

    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/m$g;-><init>(Lcom/google/android/material/floatingactionbutton/n;)V

    return-void
.end method


# virtual methods
.method public getTargetShadowSize()F
    .locals 2

    .line 888
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m$c;->e:Lcom/google/android/material/floatingactionbutton/n;

    iget v1, v0, Lcom/google/android/material/floatingactionbutton/m;->h:F

    iget v0, v0, Lcom/google/android/material/floatingactionbutton/m;->j:F

    add-float/2addr v1, v0

    return v1
.end method

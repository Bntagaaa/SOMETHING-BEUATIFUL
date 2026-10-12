.class Lcom/google/android/material/internal/CheckableGroup$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/CheckableGroup;->addCheckable(Lcom/google/android/material/internal/MaterialCheckable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/internal/CheckableGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/CheckableGroup;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/CheckableGroup$a;->a:Lcom/google/android/material/internal/CheckableGroup;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/google/android/material/internal/MaterialCheckable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup$a;->a:Lcom/google/android/material/internal/CheckableGroup;

    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableGroup;->a(Lcom/google/android/material/internal/MaterialCheckable;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 43
    :cond_0
    iget-boolean p2, v0, Lcom/google/android/material/internal/CheckableGroup;->e:Z

    .line 43
    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/internal/CheckableGroup;->b(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 183
    :goto_0
    iget-object p1, v0, Lcom/google/android/material/internal/CheckableGroup;->c:Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;

    if-eqz p1, :cond_1

    .line 184
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableGroup;->getCheckedIds()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;->onCheckedStateChanged(Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCheckedChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 79
    check-cast p1, Lcom/google/android/material/internal/MaterialCheckable;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/CheckableGroup$a;->onCheckedChanged(Lcom/google/android/material/internal/MaterialCheckable;Z)V

    return-void
.end method

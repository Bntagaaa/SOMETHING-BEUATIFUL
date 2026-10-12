.class public Landroidx/fragment/app/FragmentManagerNonConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerNonConfig;->a:Ljava/util/List;

    .line 51
    iput-object p2, p0, Landroidx/fragment/app/FragmentManagerNonConfig;->b:Ljava/util/HashMap;

    .line 52
    iput-object p3, p0, Landroidx/fragment/app/FragmentManagerNonConfig;->c:Ljava/util/HashMap;

    return-void
.end method

.class final Landroidx/fragment/app/FragmentTabHost$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Class;

.field public final c:Landroid/os/Bundle;

.field public d:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Landroidx/fragment/app/FragmentTabHost$c;->a:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Landroidx/fragment/app/FragmentTabHost$c;->b:Ljava/lang/Class;

    .line 68
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost$c;->c:Landroid/os/Bundle;

    return-void
.end method

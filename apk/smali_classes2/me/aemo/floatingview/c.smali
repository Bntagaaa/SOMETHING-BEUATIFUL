.class Lme/aemo/floatingview/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lme/aemo/floatingview/FloatingView;


# direct methods
.method public constructor <init>(Lme/aemo/floatingview/FloatingView;)V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/aemo/floatingview/c;->a:Lme/aemo/floatingview/FloatingView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 336
    iget-object p1, p0, Lme/aemo/floatingview/c;->a:Lme/aemo/floatingview/FloatingView;

    invoke-virtual {p1}, Lme/aemo/floatingview/FloatingView;->ClickView()V

    return-void
.end method

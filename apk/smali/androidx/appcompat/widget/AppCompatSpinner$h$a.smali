.class Landroidx/appcompat/widget/AppCompatSpinner$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner$h;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatSpinner$h;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner$h;)V
    .locals 0

    .line 981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$h$a;->a:Landroidx/appcompat/widget/AppCompatSpinner$h;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 984
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$h$a;->a:Landroidx/appcompat/widget/AppCompatSpinner$h;

    iget-object p4, p1, Landroidx/appcompat/widget/AppCompatSpinner$h;->N:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p4, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 985
    iget-object p4, p1, Landroidx/appcompat/widget/AppCompatSpinner$h;->N:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p4}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 986
    iget-object p4, p1, Landroidx/appcompat/widget/AppCompatSpinner$h;->N:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p5, p1, Landroidx/appcompat/widget/AppCompatSpinner$h;->K:Landroid/widget/ListAdapter;

    .line 987
    invoke-interface {p5, p3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 989
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void
.end method

.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$2;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->createAdapter()Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->b(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020014

    .line 80
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 83
    const-string v0, "Text1"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->e(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->f(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-object p2
.end method

.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->createAdapter()Landroid/widget/ArrayAdapter;
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
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->d(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 109
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->j(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x2

    .line 111
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, 0x3

    .line 112
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->e(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 115
    const-string v1, "Text1"

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 116
    const-string v2, "Text2"

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->g(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->b(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->h(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 125
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-object p2
.end method

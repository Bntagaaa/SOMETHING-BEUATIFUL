.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->createAdapter()Landroid/widget/ArrayAdapter;
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
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->b(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 115
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->h(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    .line 117
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const/4 v0, 0x2

    .line 118
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 121
    const-string v1, "Image"

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 122
    const-string v2, "Text1"

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 124
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-virtual {v2, p3, v1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->setImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->e(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->f(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-object p2
.end method

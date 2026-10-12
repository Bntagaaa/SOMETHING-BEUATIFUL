.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->createAdapter()Landroid/widget/ArrayAdapter;
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
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;Landroid/content/Context;IILjava/util/List;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->d(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 124
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->i(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    .line 126
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const/4 v0, 0x2

    .line 127
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x3

    .line 128
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 130
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->e(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 131
    const-string v2, "Image"

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    const-string v3, "Text1"

    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    const-string v4, "Text2"

    invoke-virtual {p1, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-virtual {v4, p3, v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->setImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->g(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->b(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->h(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 143
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-object p2
.end method

.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;-><init>(IIIIIILcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    .line 49
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->e(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 58
    const-string v3, "Text1"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Text2"

    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->e(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->e(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 64
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->e(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v1

    .line 53
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 54
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v1
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->f(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 72
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->e(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->f(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

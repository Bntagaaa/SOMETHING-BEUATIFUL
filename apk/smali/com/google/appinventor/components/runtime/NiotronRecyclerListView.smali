.class public final Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Dynamic Recycler View"
    iconName = "images/niotronRecyclerView.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "json.jar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$Util;,
        Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;
    }
.end annotation


# instance fields
.field private final UTIL_INSTANCE:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$Util;

.field private components:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/google/appinventor/components/runtime/AndroidViewComponent;",
            ">;"
        }
    .end annotation
.end field

.field private contClass:[Ljava/lang/Class;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private currentParent:Landroid/widget/LinearLayout;

.field private invisible:Lcom/google/appinventor/components/runtime/VerticalArrangement;

.field private itemCount:I

.field private mainComps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/appinventor/components/runtime/AndroidViewComponent;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private manager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private manager2:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

.field private myAdapter:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;

.field private parents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private propertiesArray:Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

.field private final view:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->itemCount:I

    const/4 v1, 0x1

    .line 37
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/google/appinventor/components/runtime/ComponentContainer;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->contClass:[Ljava/lang/Class;

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->components:Ljava/util/HashMap;

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->mainComps:Ljava/util/HashMap;

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->parents:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->currentParent:Landroid/widget/LinearLayout;

    .line 44
    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$Util;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$Util;-><init>(Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->UTIL_INSTANCE:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$Util;

    .line 45
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->propertiesArray:Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 49
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 50
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->context:Landroid/content/Context;

    .line 51
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 53
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 55
    new-instance v1, Lcom/google/appinventor/components/runtime/VerticalArrangement;

    invoke-direct {v1, p1}, Lcom/google/appinventor/components/runtime/VerticalArrangement;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->invisible:Lcom/google/appinventor/components/runtime/VerticalArrangement;

    .line 56
    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Visible(Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->itemCount:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->propertiesArray:Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->currentParent:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public CreateComponent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 170
    instance-of v0, p2, Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.google.appinventor.components.runtime."

    .line 0
    invoke-static {v0, p2}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 174
    :cond_1
    instance-of v0, p2, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v2

    .line 178
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->invisible:Lcom/google/appinventor/components/runtime/VerticalArrangement;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    move-object v0, p1

    .line 181
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 182
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->contClass:[Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 183
    check-cast v0, Lcom/google/appinventor/components/runtime/ComponentContainer;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 184
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 185
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->components:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 187
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->currentParent:Landroid/widget/LinearLayout;

    .line 188
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p2

    .line 189
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 190
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 192
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 195
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->ErrorOccurred(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public DeleteComponent(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 322
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->currentParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 323
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->components:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Component;

    if-eqz v2, :cond_0

    .line 326
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "Visible"

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 327
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v1, v0

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 332
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 383
    const-string v0, "ErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetComponentWithId(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->components:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->currentParent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public GetCount()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 153
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->itemCount:I

    return v0
.end method

.method public GetFirstVisibleItemPosition()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->manager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public GetLastVisibleItemPosition()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->manager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public GetUniqueIdWithComponent(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->mainComps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 351
    const-string p1, "none"

    :cond_0
    return-object p1
.end method

.method public Initialize(IIZZ)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->components:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->mainComps:Ljava/util/HashMap;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->parents:Ljava/util/HashMap;

    if-eqz p4, :cond_0

    .line 130
    new-instance p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->manager2:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 131
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->view:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    :cond_0
    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    .line 134
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p4, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->context:Landroid/content/Context;

    invoke-direct {p1, p4, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->manager:Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    .line 136
    :cond_1
    new-instance p4, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->context:Landroid/content/Context;

    invoke-direct {p4, v0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->manager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 138
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->view:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->manager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 140
    :goto_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->view:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 141
    new-instance p1, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;-><init>(Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->myAdapter:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;

    .line 142
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->view:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public Invoke(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
    .locals 6

    .line 200
    const-string v0, "Recycler View"

    if-eqz p1, :cond_6

    .line 202
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 205
    :try_start_0
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object p3

    .line 206
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->UTIL_INSTANCE:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$Util;

    array-length v3, p3

    invoke-virtual {v2, v1, p2, v3}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$Util;->getMethod([Ljava/lang/reflect/Method;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 208
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 210
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_5

    .line 211
    const-string v4, "int"

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    aget-object v4, p3, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 213
    :cond_0
    const-string v4, "float"

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    aget-object v4, p3, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 215
    :cond_1
    const-string v4, "double"

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 216
    aget-object v4, p3, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    :cond_2
    const-string v4, "java.lang.String"

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 218
    aget-object v4, p3, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    :cond_3
    const-string v4, "boolean"

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 220
    aget-object v4, p3, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 222
    :cond_4
    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 226
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 228
    :goto_2
    :try_start_1
    new-instance p2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const/4 p1, 0x0

    return-object p1

    .line 233
    :cond_6
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Component cannot be null."

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public IsDynamicAndSetUnique(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->mainComps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public OnBindView(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 158
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnBindView"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnCreateViewHolder()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 163
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnCreateViewHolder"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Schema(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 239
    new-instance v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-direct {v2, p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    new-instance v3, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;-><init>()V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->propertiesArray:Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 243
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "components"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 245
    const-string v3, "keys"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 247
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    if-ne v3, v5, :cond_1

    const/4 v3, 0x0

    .line 248
    :goto_1
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 249
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%"

    .line 0
    invoke-static {v6, v5}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "{"

    const-string v8, "}"

    .line 0
    invoke-static {v7, v6, v8}, L_COROUTINE/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 251
    invoke-virtual {p3, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 252
    invoke-virtual {p2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 253
    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    add-int/2addr v3, v1

    goto :goto_1

    .line 257
    :cond_1
    new-instance p3, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-direct {p3, p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 258
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->UTIL_INSTANCE:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$Util;

    invoke-virtual {p2, v4, p3}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$Util;->parse(Ljava/lang/String;Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;)V

    .line 259
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->propertiesArray:Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-virtual {p2, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->remove(I)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 261
    :goto_2
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->propertiesArray:Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result p3

    if-ge p2, p3, :cond_5

    .line 262
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->propertiesArray:Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-virtual {p3, p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->getJSONObject(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    move-result-object p3

    const-string v2, "id"

    invoke-virtual {p3, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 266
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->propertiesArray:Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-virtual {p3, p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->getJSONObject(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    move-result-object p3

    .line 267
    invoke-virtual {p3, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    const-string v3, "in"

    invoke-virtual {p3, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v3, p1

    goto :goto_3

    :cond_2
    invoke-virtual {p3, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->GetComponentWithId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 269
    :goto_3
    const-string v4, "type"

    invoke-virtual {p3, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-virtual {p0, v3, v4, v2}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->CreateComponent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    const-string v3, "properties"

    invoke-virtual {p3, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    move-result-object p3

    .line 274
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->names()Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 276
    :goto_4
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 278
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->GetComponentWithId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/Component;

    .line 279
    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 281
    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v7, v8, v0

    .line 280
    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v7

    .line 277
    invoke-virtual {p0, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->Invoke(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    add-int/2addr v4, v1

    goto :goto_4

    :cond_3
    add-int/2addr p2, v1

    goto :goto_2

    .line 263
    :cond_4
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "One or multiple components do not have a specified ID in the template."

    const-string p3, "Recycler View"

    invoke-direct {p1, p2, p3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void

    .line 288
    :cond_6
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "The template is empty, or is does not have any components."

    const-string p3, "GridRecyclerView"

    invoke-direct {p1, p2, p3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public SetItemCount(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 147
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->itemCount:I

    .line 148
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->myAdapter:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public SetPosition(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->parents:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter$ViewHolder;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->currentParent:Landroid/widget/LinearLayout;

    return-void
.end method

.method public SetProperties(Lcom/google/appinventor/components/runtime/Component;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 310
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->names()Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 313
    :goto_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 314
    invoke-virtual {p2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 315
    invoke-virtual {v1, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 316
    new-array v6, v0, [Ljava/lang/Object;

    aput-object v5, v6, v2

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->Invoke(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public SetProperty(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const/4 v0, 0x1

    .line 301
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->Invoke(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 303
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public SetUniqueId(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->mainComps:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->view:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

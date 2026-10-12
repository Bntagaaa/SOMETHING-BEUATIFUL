.class Landroidx/appcompat/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Landroid/graphics/Typeface;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 0

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/p;->a:Landroid/widget/TextView;

    iput-object p2, p0, Landroidx/appcompat/widget/p;->b:Landroid/graphics/Typeface;

    iput p3, p0, Landroidx/appcompat/widget/p;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 449
    iget-object v0, p0, Landroidx/appcompat/widget/p;->b:Landroid/graphics/Typeface;

    iget v1, p0, Landroidx/appcompat/widget/p;->c:I

    iget-object v2, p0, Landroidx/appcompat/widget/p;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

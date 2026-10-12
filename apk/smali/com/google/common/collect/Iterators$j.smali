.class final Lcom/google/common/collect/Iterators$j;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/c<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final d:Lcom/google/common/collect/UnmodifiableListIterator;


# instance fields
.field public final c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1033
    new-instance v0, Lcom/google/common/collect/Iterators$j;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/Iterators$j;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/common/collect/Iterators$j;->d:Lcom/google/common/collect/UnmodifiableListIterator;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1039
    invoke-direct {p0, p2, v0}, Lcom/google/common/collect/c;-><init>(II)V

    .line 1040
    iput-object p1, p0, Lcom/google/common/collect/Iterators$j;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1046
    iget-object v0, p0, Lcom/google/common/collect/Iterators$j;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

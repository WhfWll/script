.class Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;
.super Ljava/util/AbstractSet;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap$MultisetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/AbstractMultimap$MultisetView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;

    const v1, 0x195

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap$MultisetView;)V
    .registers 2

    .prologue
    .line 1047
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetView.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;->this$1:Lcom/google/common/collect/AbstractMultimap$MultisetView;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap$MultisetView;Lcom/google/common/collect/AbstractMultimap$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/AbstractMultimap$MultisetView;
    .param p2, "x1"    # Lcom/google/common/collect/AbstractMultimap$1;

    .prologue
    .line 1047
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetView.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;-><init>(Lcom/google/common/collect/AbstractMultimap$MultisetView;)V

    return-void
.end method


# virtual methods
.method public native clear()V
.end method

.method public native contains(Ljava/lang/Object;)Z
.end method

.method public native iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation
.end method

.method public native remove(Ljava/lang/Object;)Z
.end method

.method public native size()I
.end method

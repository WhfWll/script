.class Lcom/google/common/collect/AbstractMultimap$Values;
.super Ljava/util/AbstractCollection;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/AbstractMultimap$Values;

    const v1, 0x19c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .registers 2

    .prologue
    .line 1191
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$Values;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Values;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/AbstractMultimap;
    .param p2, "x1"    # Lcom/google/common/collect/AbstractMultimap$1;

    .prologue
    .line 1191
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$Values;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$Values;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

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
            "<TV;>;"
        }
    .end annotation
.end method

.method public native size()I
.end method

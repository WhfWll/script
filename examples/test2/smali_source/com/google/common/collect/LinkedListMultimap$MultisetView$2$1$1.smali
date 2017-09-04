.class Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;->next()Lcom/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$3:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;

    const v1, 0x26a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 734
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;, "Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;->this$3:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public native getCount()I
.end method

.method public native getElement()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

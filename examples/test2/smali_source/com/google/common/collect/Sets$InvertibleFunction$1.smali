.class Lcom/google/common/collect/Sets$InvertibleFunction$1;
.super Lcom/google/common/collect/Sets$InvertibleFunction;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$InvertibleFunction;->inverse()Lcom/google/common/collect/Sets$InvertibleFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$InvertibleFunction",
        "<TB;TA;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Sets$InvertibleFunction;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Sets$InvertibleFunction$1;

    const v1, 0x308

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Sets$InvertibleFunction;)V
    .registers 2

    .prologue
    .line 1176
    .local p0, "this":Lcom/google/common/collect/Sets$InvertibleFunction$1;, "Lcom/google/common/collect/Sets$InvertibleFunction.1;"
    iput-object p1, p0, Lcom/google/common/collect/Sets$InvertibleFunction$1;->this$0:Lcom/google/common/collect/Sets$InvertibleFunction;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$InvertibleFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public native apply(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation
.end method

.method public native inverse()Lcom/google/common/collect/Sets$InvertibleFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Sets$InvertibleFunction",
            "<TA;TB;>;"
        }
    .end annotation
.end method

.method native invert(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation
.end method

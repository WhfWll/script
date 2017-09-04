.class Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;
.super Ljava/lang/Object;
.source "LinkedHashMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;

.field final synthetic val$delegateIterator:Ljava/util/Iterator;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;

    const v1, 0x259

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;Ljava/util/Iterator;)V
    .registers 3

    .prologue
    .line 220
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;, "Lcom/google/common/collect/LinkedHashMultimap$SetDecorator.1;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->this$1:Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;

    iput-object p2, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->val$delegateIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native hasNext()Z
.end method

.method public native next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public native remove()V
.end method

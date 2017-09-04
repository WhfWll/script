.class Lcom/google/common/collect/EvictionListeners$1$1;
.super Ljava/lang/Object;
.source "EvictionListeners.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/EvictionListeners$1;->onEviction(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/EvictionListeners$1;

.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/EvictionListeners$1$1;

    const v1, 0x1ee

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/EvictionListeners$1;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/common/collect/EvictionListeners$1$1;->this$0:Lcom/google/common/collect/EvictionListeners$1;

    iput-object p2, p0, Lcom/google/common/collect/EvictionListeners$1$1;->val$key:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/collect/EvictionListeners$1$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method

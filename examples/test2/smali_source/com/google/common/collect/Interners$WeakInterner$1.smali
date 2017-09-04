.class Lcom/google/common/collect/Interners$WeakInterner$1;
.super Ljava/lang/Object;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Interners$WeakInterner;->intern(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Interners$WeakInterner;

.field final synthetic val$hashCode:I

.field final synthetic val$sample:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Interners$WeakInterner$1;

    const v1, 0x231

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Interners$WeakInterner;ILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 79
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner$1;, "Lcom/google/common/collect/Interners$WeakInterner.1;"
    iput-object p1, p0, Lcom/google/common/collect/Interners$WeakInterner$1;->this$0:Lcom/google/common/collect/Interners$WeakInterner;

    iput p2, p0, Lcom/google/common/collect/Interners$WeakInterner$1;->val$hashCode:I

    iput-object p3, p0, Lcom/google/common/collect/Interners$WeakInterner$1;->val$sample:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native equals(Ljava/lang/Object;)Z
.end method

.method public native hashCode()I
.end method

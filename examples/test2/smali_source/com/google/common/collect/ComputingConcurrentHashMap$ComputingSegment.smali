.class Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;
.super Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
.source "ComputingConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComputingConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComputingSegment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ComputingConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    const v1, 0x1af

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ComputingConcurrentHashMap;II)V
    .registers 4
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I

    .prologue
    .line 76
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingSegment;"
    iput-object p1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->this$0:Lcom/google/common/collect/ComputingConcurrentHashMap;

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;II)V

    .line 78
    return-void
.end method


# virtual methods
.method native compute(Ljava/lang/Object;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TV;"
        }
    .end annotation
.end method

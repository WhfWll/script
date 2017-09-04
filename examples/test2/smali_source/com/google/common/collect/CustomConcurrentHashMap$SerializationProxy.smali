.class Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy;
.super Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy;

    const v1, 0x1cd

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;Lcom/google/common/collect/CustomConcurrentHashMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/MapEvictionListener;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 14
    .param p1, "keyStrength"    # Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
    .param p2, "valueStrength"    # Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
    .param p5, "expireAfterWriteNanos"    # J
    .param p7, "expireAfterAccessNanos"    # J
    .param p9, "maximumSize"    # I
    .param p10, "concurrencyLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Strength;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Strength;",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;JJII",
            "Lcom/google/common/collect/MapEvictionListener",
            "<-TK;-TV;>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3813
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy;, "Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy<TK;TV;>;"
    .local p3, "keyEquivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p4, "valueEquivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p11, "evictionListener":Lcom/google/common/collect/MapEvictionListener;, "Lcom/google/common/collect/MapEvictionListener<-TK;-TV;>;"
    .local p12, "delegate":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TK;TV;>;"
    invoke-direct/range {p0 .. p12}, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;Lcom/google/common/collect/CustomConcurrentHashMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/MapEvictionListener;Ljava/util/concurrent/ConcurrentMap;)V

    .line 3816
    return-void
.end method

.method private native readObject(Ljava/io/ObjectInputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method private native readResolve()Ljava/lang/Object;
.end method

.method private native writeObject(Ljava/io/ObjectOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

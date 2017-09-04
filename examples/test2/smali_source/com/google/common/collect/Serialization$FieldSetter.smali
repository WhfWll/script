.class final Lcom/google/common/collect/Serialization$FieldSetter;
.super Ljava/lang/Object;
.source "Serialization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Serialization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FieldSetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final field:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Serialization$FieldSetter;

    const v1, 0x2ff

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 210
    .local p0, "this":Lcom/google/common/collect/Serialization$FieldSetter;, "Lcom/google/common/collect/Serialization$FieldSetter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/google/common/collect/Serialization$FieldSetter;->field:Ljava/lang/reflect/Field;

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 213
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Field;Lcom/google/common/collect/Serialization$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/reflect/Field;
    .param p2, "x1"    # Lcom/google/common/collect/Serialization$1;

    .prologue
    .line 207
    .local p0, "this":Lcom/google/common/collect/Serialization$FieldSetter;, "Lcom/google/common/collect/Serialization$FieldSetter<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Serialization$FieldSetter;-><init>(Ljava/lang/reflect/Field;)V

    return-void
.end method


# virtual methods
.method native set(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method native set(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

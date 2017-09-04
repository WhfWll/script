.class Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "WellBehavedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;->apply(Ljava/lang/Object;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter$1;

    const v1, 0x361

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 73
    .local p0, "this":Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter$1;, "Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter.1;"
    iput-object p1, p0, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter$1;->this$0:Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;

    iput-object p2, p0, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public native getKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public native getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public native setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation
.end method

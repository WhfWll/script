.class Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;

    const v1, 0x2a6

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;Ljava/util/Iterator;)V
    .registers 3

    .prologue
    .line 1346
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;, "Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet.1;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;->this$1:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;

    iput-object p2, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public native hasNext()Z
.end method

.method public native next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

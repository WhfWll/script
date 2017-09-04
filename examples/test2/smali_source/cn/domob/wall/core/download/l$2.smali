.class Lcn/domob/wall/core/download/l$2;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/download/l;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/ref/SoftReference",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x53d2c26f372235cdL


# instance fields
.field final synthetic a:Lcn/domob/wall/core/download/l;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/download/l;IFZ)V
    .registers 5

    .prologue
    .line 37
    iput-object p1, p0, Lcn/domob/wall/core/download/l$2;->a:Lcn/domob/wall/core/download/l;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    invoke-virtual {p0}, Lcn/domob/wall/core/download/l$2;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_a

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.class public Lcn/dm/download/c;
.super Ljava/lang/Object;
.source "DownloadServiceHelper.java"


# static fields
.field private static j:Lcn/dm/download/util/b;

.field public static v:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcn/dm/download/util/b;

    const-class v1, Lcn/dm/download/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dm/download/util/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dm/download/c;->j:Lcn/dm/download/util/b;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/dm/download/c;->v:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Long;)V
    .registers 2

    .prologue
    .line 36
    sget-object v0, Lcn/dm/download/c;->j:Lcn/dm/download/util/b;

    .line 37
    sget-object v0, Lcn/dm/download/c;->v:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/Long;Lcn/dm/download/a;)V
    .registers 3

    .prologue
    .line 26
    sget-object v0, Lcn/dm/download/c;->j:Lcn/dm/download/util/b;

    .line 27
    sget-object v0, Lcn/dm/download/c;->v:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public static b(Ljava/lang/Long;)Lcn/dm/download/a;
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lcn/dm/download/c;->v:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/a;

    return-object v0
.end method

.method public static k()I
    .registers 4

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    sget-object v1, Lcn/dm/download/c;->v:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 62
    sget-object v0, Lcn/dm/download/c;->j:Lcn/dm/download/util/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u6b63\u5728\u4e0b\u8f7d\u7684\u7ebf\u7a0b\u4e2a\u6570:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    return v1

    .line 58
    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/a;

    iget v0, v0, Lcn/dm/download/a;->t:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_c

    .line 59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c
.end method

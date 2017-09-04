.class public Lcn/dbox/core/d/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0xf

.field private static b:Lcn/dbox/core/d/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/dbox/core/d/n",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/LinkedHashMap;
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
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v0, 0x800000

    .line 20
    new-instance v1, Lcn/dbox/core/d/m$1;

    invoke-direct {v1, p0, v0}, Lcn/dbox/core/d/m$1;-><init>(Lcn/dbox/core/d/m;I)V

    sput-object v1, Lcn/dbox/core/d/m;->b:Lcn/dbox/core/d/n;

    .line 36
    new-instance v0, Lcn/dbox/core/d/m$2;

    const/16 v1, 0xf

    const/high16 v2, 0x3f400000

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcn/dbox/core/d/m$2;-><init>(Lcn/dbox/core/d/m;IFZ)V

    sput-object v0, Lcn/dbox/core/d/m;->c:Ljava/util/LinkedHashMap;

    .line 49
    return-void
.end method

.method static synthetic b()Ljava/util/LinkedHashMap;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcn/dbox/core/d/m;->c:Ljava/util/LinkedHashMap;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 53
    sget-object v1, Lcn/dbox/core/d/m;->b:Lcn/dbox/core/d/n;

    monitor-enter v1

    .line 54
    :try_start_3
    sget-object v0, Lcn/dbox/core/d/m;->b:Lcn/dbox/core/d/n;

    invoke-virtual {v0, p1}, Lcn/dbox/core/d/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 55
    if-eqz v0, :cond_19

    .line 56
    sget-object v2, Lcn/dbox/core/d/m;->b:Lcn/dbox/core/d/n;

    invoke-virtual {v2, p1}, Lcn/dbox/core/d/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v2, Lcn/dbox/core/d/m;->b:Lcn/dbox/core/d/n;

    invoke-virtual {v2, p1, v0}, Lcn/dbox/core/d/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    monitor-exit v1

    .line 75
    :goto_18
    return-object v0

    .line 60
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3e

    .line 62
    sget-object v1, Lcn/dbox/core/d/m;->c:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 63
    :try_start_1d
    sget-object v0, Lcn/dbox/core/d/m;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 64
    if-eqz v0, :cond_46

    .line 65
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 66
    if-eqz v0, :cond_41

    .line 67
    sget-object v2, Lcn/dbox/core/d/m;->b:Lcn/dbox/core/d/n;

    invoke-virtual {v2, p1, v0}, Lcn/dbox/core/d/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v2, Lcn/dbox/core/d/m;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    monitor-exit v1

    goto :goto_18

    .line 74
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_3b

    throw v0

    .line 60
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0

    .line 71
    :cond_41
    :try_start_41
    sget-object v0, Lcn/dbox/core/d/m;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_3b

    .line 75
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public a()V
    .registers 2

    .prologue
    .line 87
    sget-object v0, Lcn/dbox/core/d/m;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 88
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 79
    if-eqz p2, :cond_b

    .line 80
    sget-object v1, Lcn/dbox/core/d/m;->b:Lcn/dbox/core/d/n;

    monitor-enter v1

    .line 81
    :try_start_5
    sget-object v0, Lcn/dbox/core/d/m;->b:Lcn/dbox/core/d/n;

    invoke-virtual {v0, p1, p2}, Lcn/dbox/core/d/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    monitor-exit v1

    .line 84
    :cond_b
    return-void

    .line 82
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method

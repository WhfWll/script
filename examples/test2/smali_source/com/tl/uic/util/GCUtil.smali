.class public final Lcom/tl/uic/util/GCUtil;
.super Ljava/lang/Object;
.source "GCUtil.java"


# static fields
.field private static volatile _myInstance:Lcom/tl/uic/util/GCUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/GCUtil;

    const v1, 0x421

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static native clean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method

.method public static native clean(Ljava/util/HashMap;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<TK;TV;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method

.method public static native clean(Ljava/util/List;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method

.method public static native clean(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method

.method public static native getInstance()Lcom/tl/uic/util/GCUtil;
.end method

.method public static native invokeCleanMethod(Ljava/lang/Object;)Ljava/lang/Boolean;
.end method

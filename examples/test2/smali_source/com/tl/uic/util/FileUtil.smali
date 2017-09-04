.class public final Lcom/tl/uic/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static volatile _myInstance:Lcom/tl/uic/util/FileUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/FileUtil;

    const v1, 0x420

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static native deleteFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public static native getInstance()Lcom/tl/uic/util/FileUtil;
.end method

.method public static native getObject(Ljava/io/File;)Ljava/lang/Object;
.end method

.method public static native getObjects(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tl/uic/model/TLFCacheFile;",
            ">;"
        }
    .end annotation
.end method

.method public static native saveObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

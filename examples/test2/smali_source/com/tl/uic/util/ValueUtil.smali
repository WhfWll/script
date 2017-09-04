.class public final Lcom/tl/uic/util/ValueUtil;
.super Ljava/lang/Object;
.source "ValueUtil.java"


# static fields
.field private static volatile _myInstance:Lcom/tl/uic/util/ValueUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/ValueUtil;

    const v1, 0x42e

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static native compareListAndMask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getInstance()Lcom/tl/uic/util/ValueUtil;
.end method

.method public static native maskValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native trimValue(Ljava/lang/String;)Ljava/lang/String;
.end method

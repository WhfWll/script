.class public final Lcom/google/common/base/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Objects$1;,
        Lcom/google/common/base/Objects$ToStringHelper;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/base/Objects;

    const v1, 0x15b

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public static native firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation
.end method

.method public static varargs hashCode([Ljava/lang/Object;)I
    .registers 2
    .param p0, "objects"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static native simpleName(Ljava/lang/Class;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public static native toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/Objects$ToStringHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/base/Objects$ToStringHelper;"
        }
    .end annotation
.end method

.method public static native toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
.end method

.method public static native toStringHelper(Ljava/lang/String;)Lcom/google/common/base/Objects$ToStringHelper;
.end method

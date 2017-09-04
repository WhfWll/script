.class Lcom/google/common/primitives/Chars$CharArrayAsList;
.super Ljava/util/AbstractList;
.source "Chars.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Chars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[C

.field final end:I

.field final start:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    const v1, 0x390

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>([C)V
    .registers 4
    .param p1, "array"    # [C

    .prologue
    .line 468
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([CII)V

    .line 469
    return-void
.end method

.method constructor <init>([CII)V
    .registers 4
    .param p1, "array"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 472
    iput-object p1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    .line 473
    iput p2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    .line 474
    iput p3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    .line 475
    return-void
.end method


# virtual methods
.method public native contains(Ljava/lang/Object;)Z
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public native get(I)Ljava/lang/Character;
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Chars$CharArrayAsList;->get(I)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public native hashCode()I
.end method

.method public native indexOf(Ljava/lang/Object;)I
.end method

.method public native isEmpty()Z
.end method

.method public native lastIndexOf(Ljava/lang/Object;)I
.end method

.method public native set(ILjava/lang/Character;)Ljava/lang/Character;
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 460
    check-cast p2, Ljava/lang/Character;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Chars$CharArrayAsList;->set(ILjava/lang/Character;)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public native size()I
.end method

.method public native subList(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end method

.method native toCharArray()[C
.end method

.method public native toString()Ljava/lang/String;
.end method

.class public interface abstract Lss/ss/ss/aa;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lss/ss/ss/aa;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lss/ss/ss/ab;

    invoke-direct {v0}, Lss/ss/ss/ab;-><init>()V

    sput-object v0, Lss/ss/ss/aa;->a:Lss/ss/ss/aa;

    return-void
.end method


# virtual methods
.method public abstract a(ILss/ss/ss/a;)V
.end method

.method public abstract a(ILgK/g;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;Z)Z"
        }
    .end annotation
.end method

.class final Lss/r;
.super Ljava/lang/Object;

# interfaces
.implements Lss/q;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lss/y;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lss/y;",
            ")",
            "Ljava/util/List",
            "<",
            "Lss/p;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lss/y;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lss/y;",
            "Ljava/util/List",
            "<",
            "Lss/p;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.class Lss/ss/gK/g$a;
.super LgK/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/gK/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lss/ss/gK/g;


# direct methods
.method public constructor <init>(Lss/ss/gK/g;LgK/w;)V
    .registers 3

    iput-object p1, p0, Lss/ss/gK/g$a;->a:Lss/ss/gK/g;

    invoke-direct {p0, p2}, LgK/j;-><init>(LgK/w;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/g$a;->a:Lss/ss/gK/g;

    invoke-static {v0}, Lss/ss/gK/g;->a(Lss/ss/gK/g;)Lss/ss/gK/w;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lss/ss/gK/g$a;->a:Lss/ss/gK/g;

    invoke-virtual {v0, v1, v2}, Lss/ss/gK/w;->a(ZLss/ss/gK/n;)V

    invoke-super {p0}, LgK/j;->close()V

    return-void
.end method

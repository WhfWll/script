.class final Lss/ss/ss/l;
.super Lss/ss/ss/d$b;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lss/ss/ss/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lss/ss/ss/p;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lss/ss/ss/a;->k:Lss/ss/ss/a;

    invoke-virtual {p1, v0}, Lss/ss/ss/p;->a(Lss/ss/ss/a;)V

    return-void
.end method

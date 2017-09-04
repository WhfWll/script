.class final Lss/ss/gK/k;
.super Lss/am;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lss/am;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lss/ab;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()LgK/g;
    .registers 2

    new-instance v0, LgK/e;

    invoke-direct {v0}, LgK/e;-><init>()V

    return-object v0
.end method

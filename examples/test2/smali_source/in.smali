.class final Lin;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lik;

    const-string v1, "BC"

    const-string v2, "threadLocalEcImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lik;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lik;

    const-string v1, "BC"

    const-string v2, "ecImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lik;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lik;

    const-string v1, "BC"

    const-string v2, "threadLocalDhDefaultParams"

    invoke-direct {v0, v1, v2}, Lik;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lik;

    const-string v1, "BC"

    const-string v2, "DhDefaultParams"

    invoke-direct {v0, v1, v2}, Lik;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

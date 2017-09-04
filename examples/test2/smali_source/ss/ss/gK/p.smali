.class public final Lss/ss/gK/p;
.super Lss/am;


# instance fields
.field private final a:Lss/w;

.field private final b:LgK/g;


# direct methods
.method public constructor <init>(Lss/w;LgK/g;)V
    .registers 3

    invoke-direct {p0}, Lss/am;-><init>()V

    iput-object p1, p0, Lss/ss/gK/p;->a:Lss/w;

    iput-object p2, p0, Lss/ss/gK/p;->b:LgK/g;

    return-void
.end method


# virtual methods
.method public a()Lss/ab;
    .registers 3

    iget-object v0, p0, Lss/ss/gK/p;->a:Lss/w;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lss/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lss/ab;->a(Ljava/lang/String;)Lss/ab;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public b()J
    .registers 3

    iget-object v0, p0, Lss/ss/gK/p;->a:Lss/w;

    invoke-static {v0}, Lss/ss/gK/o;->a(Lss/w;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()LgK/g;
    .registers 2

    iget-object v0, p0, Lss/ss/gK/p;->b:LgK/g;

    return-object v0
.end method

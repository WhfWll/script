.class Lss/ss/ss/m;
.super Lss/ss/f;


# instance fields
.field final synthetic b:Lss/ss/ss/p;

.field final synthetic c:Lss/ss/ss/d$c;


# direct methods
.method varargs constructor <init>(Lss/ss/ss/d$c;Ljava/lang/String;[Ljava/lang/Object;Lss/ss/ss/p;)V
    .registers 5

    iput-object p1, p0, Lss/ss/ss/m;->c:Lss/ss/ss/d$c;

    iput-object p4, p0, Lss/ss/ss/m;->b:Lss/ss/ss/p;

    invoke-direct {p0, p2, p3}, Lss/ss/f;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lss/ss/ss/m;->c:Lss/ss/ss/d$c;

    iget-object v0, v0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v0}, Lss/ss/ss/d;->f(Lss/ss/ss/d;)Lss/ss/ss/d$b;

    move-result-object v0

    iget-object v1, p0, Lss/ss/ss/m;->b:Lss/ss/ss/p;

    invoke-virtual {v0, v1}, Lss/ss/ss/d$b;->a(Lss/ss/ss/p;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    sget-object v1, Lss/ss/d;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FramedConnection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lss/ss/ss/m;->c:Lss/ss/ss/d$c;

    iget-object v4, v4, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v4}, Lss/ss/ss/d;->a(Lss/ss/ss/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_31
    iget-object v0, p0, Lss/ss/ss/m;->b:Lss/ss/ss/p;

    sget-object v1, Lss/ss/ss/a;->b:Lss/ss/ss/a;

    invoke-virtual {v0, v1}, Lss/ss/ss/p;->a(Lss/ss/ss/a;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_38} :catch_39

    goto :goto_d

    :catch_39
    move-exception v0

    goto :goto_d
.end method

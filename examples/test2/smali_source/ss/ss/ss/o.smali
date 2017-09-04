.class Lss/ss/ss/o;
.super Lss/ss/f;


# instance fields
.field final synthetic b:Lss/ss/ss/ac;

.field final synthetic c:Lss/ss/ss/d$c;


# direct methods
.method varargs constructor <init>(Lss/ss/ss/d$c;Ljava/lang/String;[Ljava/lang/Object;Lss/ss/ss/ac;)V
    .registers 5

    iput-object p1, p0, Lss/ss/ss/o;->c:Lss/ss/ss/d$c;

    iput-object p4, p0, Lss/ss/ss/o;->b:Lss/ss/ss/ac;

    invoke-direct {p0, p2, p3}, Lss/ss/f;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lss/ss/ss/o;->c:Lss/ss/ss/d$c;

    iget-object v0, v0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    iget-object v0, v0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    iget-object v1, p0, Lss/ss/ss/o;->b:Lss/ss/ss/ac;

    invoke-interface {v0, v1}, Lss/ss/ss/c;->a(Lss/ss/ss/ac;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

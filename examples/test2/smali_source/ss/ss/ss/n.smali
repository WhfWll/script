.class Lss/ss/ss/n;
.super Lss/ss/f;


# instance fields
.field final synthetic b:Lss/ss/ss/d$c;


# direct methods
.method varargs constructor <init>(Lss/ss/ss/d$c;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lss/ss/ss/n;->b:Lss/ss/ss/d$c;

    invoke-direct {p0, p2, p3}, Lss/ss/f;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lss/ss/ss/n;->b:Lss/ss/ss/d$c;

    iget-object v0, v0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v0}, Lss/ss/ss/d;->f(Lss/ss/ss/d;)Lss/ss/ss/d$b;

    move-result-object v0

    iget-object v1, p0, Lss/ss/ss/n;->b:Lss/ss/ss/d$c;

    iget-object v1, v1, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-virtual {v0, v1}, Lss/ss/ss/d$b;->a(Lss/ss/ss/d;)V

    return-void
.end method

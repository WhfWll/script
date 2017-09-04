.class public Lss/ss/ss/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/ss/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/lang/String;

.field private c:LgK/g;

.field private d:LgK/f;

.field private e:Lss/ss/ss/d$b;

.field private f:Lss/ae;

.field private g:Lss/ss/ss/aa;

.field private h:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lss/ss/ss/d$b;->a:Lss/ss/ss/d$b;

    iput-object v0, p0, Lss/ss/ss/d$a;->e:Lss/ss/ss/d$b;

    sget-object v0, Lss/ae;->c:Lss/ae;

    iput-object v0, p0, Lss/ss/ss/d$a;->f:Lss/ae;

    sget-object v0, Lss/ss/ss/aa;->a:Lss/ss/ss/aa;

    iput-object v0, p0, Lss/ss/ss/d$a;->g:Lss/ss/ss/aa;

    iput-boolean p1, p0, Lss/ss/ss/d$a;->h:Z

    return-void
.end method

.method static synthetic a(Lss/ss/ss/d$a;)Lss/ae;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/d$a;->f:Lss/ae;

    return-object v0
.end method

.method static synthetic b(Lss/ss/ss/d$a;)Lss/ss/ss/aa;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/d$a;->g:Lss/ss/ss/aa;

    return-object v0
.end method

.method static synthetic c(Lss/ss/ss/d$a;)Z
    .registers 2

    iget-boolean v0, p0, Lss/ss/ss/d$a;->h:Z

    return v0
.end method

.method static synthetic d(Lss/ss/ss/d$a;)Lss/ss/ss/d$b;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/d$a;->e:Lss/ss/ss/d$b;

    return-object v0
.end method

.method static synthetic e(Lss/ss/ss/d$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/d$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lss/ss/ss/d$a;)Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/d$a;->a:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic g(Lss/ss/ss/d$a;)LgK/f;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/d$a;->d:LgK/f;

    return-object v0
.end method

.method static synthetic h(Lss/ss/ss/d$a;)LgK/g;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/d$a;->c:LgK/g;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/net/Socket;Ljava/lang/String;LgK/g;LgK/f;)Lss/ss/ss/d$a;
    .registers 5

    iput-object p1, p0, Lss/ss/ss/d$a;->a:Ljava/net/Socket;

    iput-object p2, p0, Lss/ss/ss/d$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lss/ss/ss/d$a;->c:LgK/g;

    iput-object p4, p0, Lss/ss/ss/d$a;->d:LgK/f;

    return-object p0
.end method

.method public a(Lss/ae;)Lss/ss/ss/d$a;
    .registers 2

    iput-object p1, p0, Lss/ss/ss/d$a;->f:Lss/ae;

    return-object p0
.end method

.method public a(Lss/ss/ss/d$b;)Lss/ss/ss/d$a;
    .registers 2

    iput-object p1, p0, Lss/ss/ss/d$a;->e:Lss/ss/ss/d$b;

    return-object p0
.end method

.method public a()Lss/ss/ss/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lss/ss/ss/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/ss/ss/d;-><init>(Lss/ss/ss/d$a;Lss/ss/ss/e;)V

    return-object v0
.end method

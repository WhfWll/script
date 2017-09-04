.class Lss/ss/ss/e;
.super Lss/ss/f;


# instance fields
.field final synthetic b:I

.field final synthetic c:Lss/ss/ss/a;

.field final synthetic d:Lss/ss/ss/d;


# direct methods
.method varargs constructor <init>(Lss/ss/ss/d;Ljava/lang/String;[Ljava/lang/Object;ILss/ss/ss/a;)V
    .registers 6

    iput-object p1, p0, Lss/ss/ss/e;->d:Lss/ss/ss/d;

    iput p4, p0, Lss/ss/ss/e;->b:I

    iput-object p5, p0, Lss/ss/ss/e;->c:Lss/ss/ss/a;

    invoke-direct {p0, p2, p3}, Lss/ss/f;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lss/ss/ss/e;->d:Lss/ss/ss/d;

    iget v1, p0, Lss/ss/ss/e;->b:I

    iget-object v2, p0, Lss/ss/ss/e;->c:Lss/ss/ss/a;

    invoke-virtual {v0, v1, v2}, Lss/ss/ss/d;->b(ILss/ss/ss/a;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

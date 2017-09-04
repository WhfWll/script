.class Lss/ss/ss/g;
.super Lss/ss/f;


# instance fields
.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lss/ss/ss/z;

.field final synthetic f:Lss/ss/ss/d;


# direct methods
.method varargs constructor <init>(Lss/ss/ss/d;Ljava/lang/String;[Ljava/lang/Object;ZIILss/ss/ss/z;)V
    .registers 8

    iput-object p1, p0, Lss/ss/ss/g;->f:Lss/ss/ss/d;

    iput-boolean p4, p0, Lss/ss/ss/g;->b:Z

    iput p5, p0, Lss/ss/ss/g;->c:I

    iput p6, p0, Lss/ss/ss/g;->d:I

    iput-object p7, p0, Lss/ss/ss/g;->e:Lss/ss/ss/z;

    invoke-direct {p0, p2, p3}, Lss/ss/f;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lss/ss/ss/g;->f:Lss/ss/ss/d;

    iget-boolean v1, p0, Lss/ss/ss/g;->b:Z

    iget v2, p0, Lss/ss/ss/g;->c:I

    iget v3, p0, Lss/ss/ss/g;->d:I

    iget-object v4, p0, Lss/ss/ss/g;->e:Lss/ss/ss/z;

    invoke-static {v0, v1, v2, v3, v4}, Lss/ss/ss/d;->a(Lss/ss/ss/d;ZIILss/ss/ss/z;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method

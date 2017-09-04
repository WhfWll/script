.class Lss/ss/ss/f;
.super Lss/ss/f;


# instance fields
.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lss/ss/ss/d;


# direct methods
.method varargs constructor <init>(Lss/ss/ss/d;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .registers 8

    iput-object p1, p0, Lss/ss/ss/f;->d:Lss/ss/ss/d;

    iput p4, p0, Lss/ss/ss/f;->b:I

    iput-wide p5, p0, Lss/ss/ss/f;->c:J

    invoke-direct {p0, p2, p3}, Lss/ss/f;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lss/ss/ss/f;->d:Lss/ss/ss/d;

    iget-object v0, v0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    iget v1, p0, Lss/ss/ss/f;->b:I

    iget-wide v2, p0, Lss/ss/ss/f;->c:J

    invoke-interface {v0, v1, v2, v3}, Lss/ss/ss/c;->a(IJ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

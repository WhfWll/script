.class public Lcom/sdu/didi/openapi/ss/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lss/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdu/didi/openapi/ss/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/sdu/didi/openapi/ss/a;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sdu/didi/openapi/ss/a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/sdu/didi/openapi/ss/a$a;->a:Lcom/sdu/didi/openapi/ss/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sdu/didi/openapi/ss/a$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lss/aa$a;)Lss/ak;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lss/aa$a;->a()Lss/ag;

    move-result-object v0

    invoke-virtual {v0}, Lss/ag;->e()Lss/ag$a;

    move-result-object v0

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/sdu/didi/openapi/ss/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lss/ag$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/ag$a;->a()Lss/ag;

    move-result-object v0

    invoke-interface {p1, v0}, Lss/aa$a;->a(Lss/ag;)Lss/ak;

    move-result-object v0

    return-object v0
.end method
